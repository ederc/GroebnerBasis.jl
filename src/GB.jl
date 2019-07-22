module GB

# other files
include("Benchmarks.jl")
include("Example.jl")

# package code goes here
using Libdl
using Revise
using Singular
using Hecke

export Singular
export Hecke

const pkgdir  = realpath(joinpath(dirname(@__FILE__), ".."))
const libdir   = joinpath(pkgdir, "local", "lib")
const libgb   = joinpath(pkgdir, "local", "lib", "libgb")

function __init__()
   if "HOSTNAME" in keys(ENV) && ENV["HOSTNAME"] == "juliabox"
       push!(Libdl.DL_LOAD_PATH, "/usr/local/lib")
   elseif Sys.islinux()
       push!(Libdl.DL_LOAD_PATH, libdir)
       Libdl.dlopen(libgb)
   else
      push!(Libdl.DL_LOAD_PATH, libdir)
   end
end

# we take a Singular ideal and extract the following data:
# an int array lengths storing the lengths of each generator
# an int array cfs storing the coefficients of each generator
# an int array exps storing the exponent vectors of each generator
function convert_ff_singular_ideal_to_array(
        id::Singular.sideal,
        nvars::Int,
        ngens::Int
        )
    nterms  = 0
    lens = Array{Int32,1}(undef, ngens)
    for i = 1:ngens
        lens[i] =   Singular.length(id[i])
        nterms  +=  lens[i]
    end
    cfs   = Array{Int32,1}(undef, nterms)
    exps  = Array{Int32,1}(undef, nvars*nterms)
    cc = 1 # coefficient counter
    ec = 0 # exponent vector counter
    for i = 1:Singular.ngens(id)
        for c in Singular.coeffs(id[i])
            cfs[cc] = Base.Int(c)
            cc += 1
        end
        for e in Singular.exponent_vectors(id[i])
            for j = 1:nvars
                exps[nvars*ec+j]  =  Base.Int(e[j])
            end
            ec +=  1
        end
    end
    lens, cfs, exps
end

function convert_q_singular_ideal_to_array(
        id::Singular.sideal,
        nvars::Int,
        ngens::Int
        )
    nterms  = 0
    lens = Array{Int32,1}(undef, ngens)
    for i = 1:ngens
        lens[i] =   Singular.length(id[i])
        nterms  +=  lens[i]
    end
    cfs   = Array{BigInt,1}(undef, 2*nterms)
    exps  = Array{Int32,1}(undef, nvars*nterms)
    cc = 1 # coefficient counter
    ec = 0 # exponent vector counter
    for i = 1:Singular.ngens(id)
        for c in Singular.coeffs(id[i])
            cfs[cc] = numerator(c)
            cc += 1
            cfs[cc] = denominator(c)
            cc += 1
        end
        for e in Singular.exponent_vectors(id[i])
            for j = 1:nvars
                exps[nvars*ec+j]  =  Base.Int(e[j])
            end
            ec +=  1
        end
    end
    lens, cfs, exps
end

# we know that the terms are already sorted and they are all different
# coming from GB's F4 computation, so we do not need p_Add_q for the
# terms, but we can directly set the next pointers of the polynomials
function convert_gb_array_to_singular_ideal(
        gb::Array{Int32,1},
        R::Singular.PolyRing
        )
    ngens = gb[1] # number of generators of basis

    nvars = Singular.nvars(R)
    basis = Singular.Ideal(R, ) # empty ideal
    exp   = zeros(Cint, nvars+1)

    list  = elem_type(R)[]
    # we generate the singular polynomials low level in order
    # to avoid overhead due to many exponent operations etc.
    j   = ngens + 1 + 1
    len = j
    for i = 1:ngens
        len = len + gb[i+1]
        # do the first term
        p = Singular.libSingular.p_Init(R.ptr)
        Singular.libSingular.pSetCoeff0(p, Clong(gb[j]), R.ptr)
        j += 1
        for k = 1:nvars
            exp[k+1]  = gb[j]
            j += 1
        end
        Singular.libSingular.p_SetExpV(p, exp, R.ptr)
        lp  = p
        # do remaining terms
        while j < len
            pterm  = Singular.libSingular.p_Init(R.ptr)
            Singular.libSingular.pSetCoeff0(pterm, Clong(gb[j]), R.ptr)
            j += 1
            for k = 1:nvars
                exp[k+1]  = gb[j]
                j += 1
            end
            Singular.libSingular.p_SetExpV(pterm, exp, R.ptr)
            # setting the next pointer needs to be done in Singular itself,
            # thus we need, for exactly this operation, inline cxx code
            Singular.libSingular.SetpNext(lp, pterm)
            lp  = pterm
        end
        push!(list, R(p))
    end
    return Singular.Ideal(R, list)
end
"""
    f4(I[, hts::Int=17, nthrds::Int=1, maxpairs::Int=0, resetht::Int=0,
            laopt::Int=1, infolevel::Int=0, monorder::Symbol=:degrevlex])

Compute a Groebner basis of the given ideal I w.r.t. to the given monomial
order using Faugere's F4 algorithm. The function takes a Singular ideal as
input and returns a Singular ideal.

# Arguments
* `I::Singular.sideal`: ideal to compute a Groebner basis for.
* `hts::Int=17`: hash table size log_2; default is 17, i.e. 2^17 as initial hash
                table size.
* `nthrds::Int=1`:  number of threads; default is 1.
* `maxpairs::Int=0`:  maximal number of pairs selected for one matrix; default is
                      0, i.e. no restriction. If matrices get too big or consume
                      too much memory this is a good parameter to play with.
* `resetht::Int=0`: Resets the hash table after `resetht` steps in the algorthm;
                    default is 0, i.e. no resetting at all. Since we add
                    monomials to the matrices which are only used for reduction
                    purposes, but have no further meaning in the basis, this
                    parameter might also help when memory get a problem.
* `laopt::Int=1`: option for linear algebra to be used. there are different
                  linear algebra routines implemented:
    -  `1`: exact sparse-dense computation (default),
    -  `2`: exact sparse computation,
    - `42`: probabilistic sparse-dense computation,
    - `43`: exact sparse then probabilistic dense computation,
    - `44`: probabilistic sparse computation.
* `pbmfiles::Int=0`: option for generating pbm files of matrices:
    - `0`: off (default),
    - `1`:  on.
* `infolevel::Int=0`: info level for printout:
    - `0`: no printout (default),
    - `1`:  a summary of the computational data is printed at the beginning and
    the end of the computation,
    - `2`: also dynamical information for each round resp. matrix is printed.
* `monorder::Symbol=:degrevlex`: monomial order w.r.t. which the computation is
                                done;
    - `degrevlex`: the degree-reverse-lexicographical (DRL) order (default),
    - `lex`: the lexicographical order (LEX).
"""
function mf4(
        I::Singular.sideal;           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                    # in symbolic preprocessing
        resetht::Int=0,               # resetting global hash table
        laopt::Int=2,                 # linear algebra option
        pbmfiles::Int=0,              # generation of pbm files
        infolevel::Int=0,             # info level for print outs
        monorder::Symbol=:dregrevlex  # monomial order
        )
    R     = I.base_ring
    char  = Singular.characteristic(R)
    if 0 != char
        if Hecke.isprime(char)
            println("Characteristic is ", char, " != 0.",
                    " Trying finite field computation")
            return f4(I, hts=hts, nthrds=nthrds, maxpairs=maxpairs,
                resetht=resetht, laopt=laopt, pbmfiles=pbmfiles,
                infolevel=infolevel, monorder=monorder)
        else
            error("Only finite fields and rationals are supported ",
                    "at the moment.")
        end
    end
    # skip zero generators in ideal
    ptr = Singular.libSingular.id_Copy(I.ptr, R.ptr)
    J   = Singular.Ideal(R, ptr)
    Singular.libSingular.idSkipZeroes(J.ptr)
    # get number of variables
    nvars   = Singular.nvars(R)
    ngens   = Singular.ngens(J)
    # convert Singular ideal to flattened arrays of ints
    lens, cfs, exps   = convert_q_singular_ideal_to_array(J, nvars, ngens)

    println("lens")
    println(lens)
    println("cfs")
    println(cfs)
end

function f4(
        I::Singular.sideal;           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                    # in symbolic preprocessing
        resetht::Int=0,               # resetting global hash table
        laopt::Int=2,                 # linear algebra option
        pbmfiles::Int=0,              # generation of pbm files
        infolevel::Int=0,             # info level for print outs
        monorder::Symbol=:dregrevlex  # monomial order
        )
    R     = I.base_ring
    char  = Singular.characteristic(R)
    if 0 == char
        error("At the moment GB only supports finite characteristic.
        Prime must be < 2^32.")
    end
    # skip zero generators in ideal
    ptr = Singular.libSingular.id_Copy(I.ptr, R.ptr)
    J   = Singular.Ideal(R, ptr)
    Singular.libSingular.idSkipZeroes(J.ptr)
    # get number of variables
    nvars   = Singular.nvars(R)
    ngens   = Singular.ngens(J)
    # convert Singular ideal to flattened arrays of ints
    lens, cfs, exps   = convert_ff_singular_ideal_to_array(J, nvars, ngens)
    # call f4 in gb
    #  println("Input data")
    #  println("----------")
    #  println(lens)
    #  println(cfs)
    #  println(exps)
    #  println("----------")
    #if hts > 30
    #    hts = 24
    #  end
    ord = 0
    if monorder == :degrevlex
        ord = 0
    end
    if monorder == :lex
        ord = 1
    end
    # calling f4_julia with the following arguments:
    # lengths of all generators
    # coefficients of all generators
    # exponents of all generators
    # number of variables
    # number of generators
    # hash table size log_2, i.e. given 12 => 2^12
    # println(char, nvars, ngens, hts, nthrds, maxpairs, laopt)
    lib = Libdl.dlopen(libgb)
    sym = Libdl.dlsym(lib, :f4_julia)
    gb_basis  = ccall((:malloc, "libc.so.6"), Ptr{Ptr{Cint}}, (Csize_t, ), sizeof(Ptr{Cint}))
    gb_basis_len  = ccall(sym, Int,
        (Ptr{Ptr{Cint}}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Int, Int, Int, Int, Int,
        Int, Int, Int, Int, Int, Int),
        gb_basis, lens, cfs, exps, char, ord, nvars, ngens, hts, nthrds, maxpairs,
        resetht, laopt, pbmfiles, infolevel)
    Libdl.dlclose(lib)

    # convert to julia array, also give memory management to julia
    jl_basis  = Base.unsafe_wrap(Array, unsafe_load(gb_basis), gb_basis_len; own=true)
    ccall((:free, "libc.so.6"), Nothing , (Ptr{Ptr{Cint}}, ), gb_basis)
    basis       = convert_gb_array_to_singular_ideal(jl_basis, R)
    basis.isGB  = true;

    return basis
end

function f4p(
        I::Array{Singular.sideal,1};           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                    # in symbolic preprocessing
        resetht::Int=0,               # resetting global hash table
        laopt::Int=2,                 # linear algebra option
        pbmfiles::Int=0,              # generation of pbm files
        infolevel::Int=0,             # info level for print outs
        monorder::Symbol=:dregrevlex  # monomial order
        )

    if length(I) <= 0
        return
    end

    R     = []
    char  = []
    lens  = []
    cfs   = []
    exps  = []
    # get number of variables
    nvars   = Singular.nvars(I[1].base_ring)
    ngens   = Singular.ngens(I[1])
    # for i in 1:length(I)
    for i in 1:nthrds
        push!(R, I[i].base_ring)
        push!(char, Singular.characteristic(R[i]))
        # convert Singular ideal to flattened arrays of ints
        ret = convert_ff_singular_ideal_to_array(I[i], nvars, ngens)
        push!(lens, ret[1])
        push!(cfs, ret[2])
        push!(exps, ret[3])
    end
    ord = 0
    if monorder == :degrevlex
        ord = 0
    end
    if monorder == :lex
        ord = 1
    end
    jl_basis  = []
    gb_basis  = []
    gb_basis_len  = Array{Int32,1}(undef,nthrds)
    for i in 1:nthrds
        push!(gb_basis,ccall((:malloc, "libc.so.6"), Ptr{Ptr{Cint}}, (Csize_t, ),
                    sizeof(Ptr{Cint})))
    end
    println("nthrds ", nthrds)
        lib = Libdl.dlopen(libgb)
        sym = Libdl.dlsym(lib, :f4_julia)
    Threads.@threads for i in 1:nthrds
        gb_basis_len[i]  = ccall(sym, Int,
            (Ptr{Ptr{Cint}}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Int, Int, Int, Int, Int,
            Int, Int, Int, Int, Int, Int),
            gb_basis[i], lens[i], cfs[i], exps[i], char[i], ord, nvars, ngens,
            hts, 1, maxpairs,
            resetht, laopt, pbmfiles, infolevel)
    end
        Libdl.dlclose(lib)
    res = []
    for i in 1:nthrds
        push!(jl_basis, Base.unsafe_wrap(Array, unsafe_load(gb_basis[i]),
                    gb_basis_len[i]; own=true))
        ccall((:free, "libc.so.6"), Nothing , (Ptr{Ptr{Cint}}, ), gb_basis[i])
        push!(res, convert_gb_array_to_singular_ideal(jl_basis[i], R[i]))
        res[i].isGB  = true;
    end

    return res
end

function map_ideal(
        I::Singular.sideal,
        p
        )
    pp      = Hecke.next_prime(p)
    R       = base_ring(I)
    vars    = string.(Singular.gens(R))
    Fp      = Singular.N_ZpField(pp)
    # skip zero generators in ideal
    ptr     = Singular.libSingular.id_Copy(I.ptr, R.ptr)
    J       = Singular.Ideal(R, ptr)
    Singular.libSingular.idSkipZeroes(J.ptr)
    Rp, Xp  = Singular.PolynomialRing(Fp, vars, cached=false)
    global Xp
    [ eval(Meta.parse("$s = Xp[$i]")) for (i, s) in enumerate(vars) ]
    id  = [string(J[k]) for k in 1:Singular.ngens(J)]
    Ip  = Singular.Ideal(Rp, [eval(Meta.parse("$poly")) for poly in id])
    Ip
end

function modf4(
        I::Singular.sideal;           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                      # in symbolic preprocessing
        resetht::Int=0,               # resetting global hash table
        laopt::Int=2,                 # linear algebra option
        pbmfiles::Int=0,              # generation of pbm files
        infolevel::Int=0,             # info level for print outs
        monorder::Symbol=:dregrevlex  # monomial order
        )
    ZX, X = FlintZZ['X']
    # prime characteristic
    p     = 2^29
    pp    = fmpz(1)

    pl  = Array{Int,1}(undef,nthrds)
    Il  = Array{Singular.sideal,1}(undef,nthrds)
    for i in 1:nthrds
        pl[i] = next_prime(p)
        p     = pl[i]
        Il[i] = map_ideal(I,pl[i])
    end
    res  = GB.f4p(Il, hts=hts, nthrds=nthrds,
            maxpairs=maxpairs, resetht=resetht, laopt=laopt,
            pbmfiles=pbmfiles, infolevel=infolevel, monorder=monorder)
    return res
end

end # module
