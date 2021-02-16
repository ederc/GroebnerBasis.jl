function get_rational_parametrization_from_msolve_output(
        param::Array{Any, 1}
    )
    C, x  = Nemo.PolynomialRing(Nemo.FlintQQ,"x")

    elim  = 0*x
    ctr   = 0
    for cf in param[4][2]
        elim  +=  cf*x^ctr
        ctr   +=  1
    end

    denom = 0*x
    ctr   = 0
    for cf in param[5][2]
        denom +=  cf*x^ctr
        ctr   +=  1
    end

    size  = param[2]-1
    p = Array{Nemo.PolyElem,1}(undef, size)
    c = Array{BigInt,1}(undef, size)
    for i in 1:size
        p[i]  = 0*x
        ctr   = 0
        for cf in param[6][i][1][2]
            p[i]  +=  cf*x^ctr
            ctr   +=  1
        end
        c[i]  = (-1) * param[6][i][2]
    end

    return elim, denom, p, c
end

function get_rational_parametrization(
        nr::Int32,
        lens::Array{Int32,1},
        cfs::Ptr{BigInt}
    )
    C, x  = Nemo.PolynomialRing(Nemo.FlintQQ,"x")
    ctr   = 0

    elim  = 0*x
    for i in 1:lens[1]
        elim  +=  BigInt(unsafe_load(cfs, i))*x^(i-1)
    end
    ctr += lens[1]

    denom = 0*x
    for i in 1:lens[2]
        denom +=  BigInt(unsafe_load(cfs, i+ctr))*x^(i-1)
    end
    ctr +=  lens[2]

    size  = nr-2
    p = Array{Nemo.PolyElem,1}(undef, size)
    c = Array{BigInt,1}(undef, size)
    k = 1
    for i in 3:nr
        p[k]  = 0*x
        for j in 1:lens[i]-1
            p[k]  +=  BigInt(unsafe_load(cfs, j+ctr))*x^(j-1)
        end
        c[k]  =   (-1) * BigInt(unsafe_load(cfs, lens[i]+ctr))
        ctr   +=  lens[i]
        k     +=  1
    end

    return elim, denom, p, c
end

function msolve_file_interface(
        I::Singular.sideal;           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                      # in symbolic preprocessing
        resetht::Int=0,               # resetting global hash table
        laopt::Int=2,                 # linear algebra option
        input_file::String="/tmp/in.ms", # msolve input file
        output_file::String="/tmp/out.ms", # msolve output file
        infolevel::Int=0              # info level for print outs
        )
    if Sys.islinux()
        R     = I.base_ring
        # skip zero generators in ideal
        ptr = Singular.libSingular.id_Copy(I.ptr, R.ptr)
        J   = Singular.Ideal(R, ptr)
        Singular.libSingular.idSkipZeroes(J.ptr)
        # get number of variables
        nvars   = Singular.nvars(R)
        ngens   = Singular.ngens(J)
        char    = Singular.characteristic(R)
        vars    = Singular.gens(R)

        if true
            println("At the moment the solver is only working on x86-64 Linux on CPUs supporting AVX2")
            global print_msolve_warning = 0
        end

            # convert Singular ideal to flattened arrays of ints
            if 0 == char
            lens, cfs, exps   = convert_qq_singular_ideal_to_array(J, nvars, ngens)
            elseif Nemo.isprime(Nemo.FlintZZ(char))
            lens, cfs, exps   = convert_ff_singular_ideal_to_array(J, nvars, ngens)
            else
                error("At the moment GroebnerBasis only supports finite fields and the rationals.")
            end
        dir = joinpath(dirname(pathof(GroebnerBasis)),"../deps/")
        lib = Libdl.dlopen("$dir/libmsolve.so.0.2.0")
        #= lib = Libdl.dlopen(libgb) =#
        sym = Libdl.dlsym(lib, :f4_julia)
        # generate msolve input file
        io  = open("/tmp/input.ms", "w")
        write(io, string(vars[1]))
        [write(io, ",",string(vars[i])) for i in 2:nvars]
        write(io, "\n")
        write(io, string(char),"\n")
        [write(io, string(J[i]),",\n") for i in 1:ngens]
        write(io, string(J[ngens]))
        close(io)
        dir = joinpath(dirname(pathof(GroebnerBasis)),"../deps/")
        cmd = `$dir/msolve-binary -v$infolevel -l$laopt -m$maxpairs -s$hts -f input.ms -o t.res`
        run(cmd)
    else
        error("msolve supports at the moment only x86 Linux with AVX2 support.")
    end
end

"""
    msolve(I[, hts::Int=17, nthrds::Int=1, maxpairs::Int=0, resetht::Int=0,
            laopt::Int=1, reducegb::Int=0, pbmfiles::Int=0,
            infolevel::Int=0, monorder::Symbol=:degrevlex])

Compute the solution set of the given ideal I using the msolve C library. The function takes a Singular ideal as input and returns a Singular ideal. At the moment only QQ is supported as ground field..

# Arguments
* `I::Singular.sideal`: ideal to compute solutions for.
* `initial_hts::Int=17`: hash table size log_2; default is 17, i.e. 2^17 as initial hash
                table size.
* `nr_thrds::Int=1`:  number of threads; default is 1. (not completely supported yet)
* `max_nr_pairs::Int=0`:  maximal number of pairs selected for one F4 matrix; default is
                      0, i.e. no restriction. If matrices get too big or consume
                      too much memory this is a good parameter to play with.
* `la_option::Int=2`: option for linear algebra to be used in F4. there are different
                  linear algebra routines implemented:
    -  `1`: exact sparse-dense computation,
    -  `2`: exact sparse computation, (default)
    - `42`: probabilistic sparse-dense computation,
    - `43`: exact sparse then probabilistic dense computation,
    - `44`: probabilistic sparse computation.
* `info_level::Int=0`: info level for printout:
    - `0`: no printout (default),
    - `1`:  a summary of the computational data is printed at the beginning and
    the end of the computation,
    - `2`: also dynamical information for each round resp. matrix is printed.
* `precision::Int=67`: precision for computing solutions; default is 67.
"""
function msolve(
        I::Singular.sideal;                   # input generators
        initial_hts::Int=17,                  # hash table size, default 2^17
        nr_thrds::Int=1,                      # number of threads
        max_nr_pairs::Int=0,                  # number of pairs maximally chosen
                                              # in symbolic preprocessing
        la_option::Int=2,                     # linear algebra option
        print_gb::Int=0,                      # printing of modular Groebner basis
        info_level::Int=0,                    # info level for print outs
        input_file::String="/tmp/in.ms",      # msolve input file
        output_file::String="/tmp/out.ms",    # msolve output file
        precision::Int=67                     # precision of the solution set
        )
    R     = I.base_ring
    # skip zero generators in ideal
    ptr = Singular.libSingular.id_Copy(I.ptr, R.ptr)
    J   = Singular.Ideal(R, ptr)
    Singular.libSingular.idSkipZeroes(J.ptr)
    # get number of variables
    nr_vars = Singular.nvars(R)
    nr_gens = Singular.ngens(J)
    vars    = Singular.gens(R)

    variable_names  = Array{String, 1}(undef, nr_vars)
    for i in 1:nr_vars
        variable_names[i] = string(Singular.gens(R)[i])
    end

    field_char  = Singular.characteristic(R)

    out_file = "/dev/null"

    #= do not add new variables and linear forms,
     = ust inform the user to do so on its own =#
    genericity_handling = 0

    #= monomial order defaults to zero =#
    mon_order = 0

    # convert Singular ideal to flattened arrays of ints
    if 0 == field_char
      lens, cfs, exps   = convert_qq_singular_ideal_to_array(J, nr_vars, nr_gens)
    elseif Nemo.isprime(Nemo.FlintZZ(field_char))
      lens, cfs, exps   = convert_ff_singular_ideal_to_array(J, nr_vars, nr_gens)
    else
        error("At the moment GroebnerBasis only supports finite fields and the rationals.")
    end
    dir = joinpath(dirname(pathof(GroebnerBasis)),"../deps")
#=     lib = Libdl.dlopen("$dir/libmsolve.so.0.2.0")
 =     sym = Libdl.dlsym(lib, :msolve_julia)
 =
 =     res_ld    = ccall(:malloc, Ptr{Cint}, (Csize_t, ), sizeof(Cint))
 =     res_dim   = ccall(:malloc, Ptr{Cint}, (Csize_t, ), sizeof(Cint))
 =     res_dquot = ccall(:malloc, Ptr{Cint}, (Csize_t, ), sizeof(Cint))
 =     res_len   = ccall(:malloc, Ptr{Ptr{Cint}}, (Csize_t, ), sizeof(Ptr{Cint}))
 =     res_cf    = ccall(:malloc, Ptr{Ptr{Cvoid}}, (Csize_t, ), sizeof(Ptr{Cvoid}))
 =     ccall(sym, Cvoid,
 =         (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Ptr{Cint}}, Ptr{Cvoid},
 =          Ptr{Cint}, Ptr{Cvoid}, Ptr{Ptr{Cchar}}, Ptr{Cchar}, Int, Int, Int, Int,
 =          Int, Int, Int, Int, Int, Int, Int, Int),
 =         res_ld, res_dim, res_dquot, res_len, res_cf, lens, exps, cfs, variable_names,
 =         out_file, field_char, mon_order, nr_vars, nr_gens, initial_hts, nr_thrds,
 =         max_nr_pairs, reset_ht, la_option, print_gb, genericity_handling, info_level)
 =     Libdl.dlclose(lib)
 =     # convert to julia array, also give memory management to julia
 =     jl_ld     = unsafe_load(res_ld)
 =     jl_dim    = unsafe_load(res_dim)
 =     jl_dquot  = unsafe_load(res_dquot)
 =
 =     jl_len    = Base.unsafe_wrap(Array, unsafe_load(res_len), jl_ld)
 =     nterms  = 0
 =     [nterms += jl_len[i] for i=1:jl_ld]
 =     if 0 == field_char
 =         res_cf_conv = unsafe_load(res_cf)
 =         jl_cf       = reinterpret(Ptr{BigInt}, res_cf_conv)
 =     elseif Nemo.isprime(Nemo.FlintZZ(field_char))
 =         res_cf_conv = unsafe_load(res_cf)
 =         jl_cf       = reinterpret(Ptr{Int}, res_cf_conv)
 =     end
 =     elim, den, p, c = get_rational_parametrization(jl_ld, jl_len, jl_cf) =#
 #
    # generate msolve input file
    io  = open(input_file, "w")
    write(io, string(vars[1]))
    [write(io, ",",string(vars[i])) for i in 2:nr_vars]
    write(io, "\n")
    write(io, string(field_char),"\n")
    [write(io, string(J[i]),",\n") for i in 1:nr_gens]
    write(io, string(J[nr_gens]))
    close(io)
    cmd = `$dir/msolve-binary -v$info_level -l$la_option -m$max_nr_pairs -s$initial_hts -t $nr_thrds -f $input_file -o $output_file`
    run(cmd)

    #= read msolve result, i.e. rational parametrization data =#
    of    = read(output_file, String)

    #= maybe some problem appeared during msolve's computation =#
    if length(of) == 0
        println("A problem appeared during msolve's computation, no solution delivered.")
        return nothing
    end

    of    = replace(of, "\n" => "")
    of    = replace(of, ":" => "")
    param = eval(Meta.parse(of)) 

    dim       = param[1]
    dim_quot  = param[3]

    #= check for positive dimension or no solution or other problems =#
    if dim < -1
        println("A problem appeared during msolve's computation, no solution delivered.")
        return nothing
    end
    if dim == -1
        println("System fails genericity: Try to add a random linear form with a new")
        println("variable (smallest w.r.t. DRL) to the input system and start again.")
        return nothing
    end
    if dim > 0
        println("The ideal has positive dimension, no solution delivered.")
        return nothing
    end
    if (dim == 0) && (dim_quot == 0)
        println("The ideal has no solution.")
        return nothing
    end


    elim, den, p, c = get_rational_parametrization_from_msolve_output(param)

    #= get all solutions of elim, also complex ones,
     = real ones are isolated =#
    sols  = []
    append!(sols, Hecke._roots(elim, precision))

    #= get real solutions =#
    del = []
    for i in 1:length(sols)
        if Nemo.isreal(sols[i]) == false
            append!(del, i)
        end
    end

    #= remove non-real solutions =#
    deleteat!(sols, del)

    #= generate solution set for system =#
    variety = Array{Array{Rational{Int}, 1}, 1}(undef, length(sols))
    for i in 1:length(sols)
        tmp = Array{Rational{Int}}(undef, nr_vars)
        d = Nemo.evaluate(den, sols[i])
        for j = 1:nr_vars-1
            tmp[j]       = rationalize(Int, BigFloat(real(Nemo.evaluate(p[j], sols[i]) / (d*c[j]))))
            tmp[nr_vars] = rationalize(Int, BigFloat(real(sols[i])))
        end
        variety[i]  = tmp
    end

    #= for k in 1:nr_gens
     =     for v in variety
     =         println(BigInt(numerator(GroebnerBasis.Singular.evaluate(I[k], v)))/BigInt(denominator(GroebnerBasis.Singular.evaluate(I[k], v))))
     =     end
     =     println("")
     = end =#
    return variety
end
