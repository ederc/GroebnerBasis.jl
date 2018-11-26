module GB

# other files
include("Benchmarks.jl")
include("Example.jl")

# package code goes here
using Revise
using Singular
using Libdl

export Singular

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

   println("")
   println("GB comes with absolutely no warranty whatsoever")
   println("")
end

# we take a Singular ideal and extract the following data:
# an int array lengths storing the lengths of each generator
# an int array cfs storing the coefficients of each generator
# an int array exps storing the exponent vectors of each generator
function convert_singular_ideal_to_array(
    id::Singular.sideal,
    nvars::Int,
    ngens::Int
    )
  nterms  = 0
  lens = Array{Int32,1}(undef, ngens)
  for i = 1:ngens
    lens[i] =   length(id[i]) 
    nterms  +=  length(id[i])
  end
  cfs   = Array{Int32,1}(undef, nterms)
  exps  = Array{Int32,1}(undef, nvars*nterms)
  ctr = 1
  for i = 1:Singular.ngens(id)
    for (c,e) in Singular.coeffs_expos(id[i])
      cfs[ctr]  = Base.Int(c)
      for j = 1:nvars
        exps[nvars*(ctr-1)+j]  =  Base.Int(e[j])
      end
      ctr +=  1
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

  nvars = Singular.ngens(R)
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
    f4(I[, hts[, nthrds[, maxpairs[, resetht[, laopt[, infolevel[, monorder]]]]]]])

Compute a Groebner basis of the given ideal I w.r.t. to the given monomial
order using Faugere's F4 algorithm. The function takes a Singular ideal as
input and returns a Singular ideal.

# Arguments
- `I::Singular.sideal`: ideal to compute a Groebner basis for.
- `hts:Int=17`: hash table size log_2; default is 17, i.e. 2^17 as initial hash
                table size.
- `nthrds::Int=1`:  number of threads; default is 1.
- `maxpairs::Int=0`:  maximal number of pairs selected for one matrix; default is
                      0, i.e. no restriction. If matrices get too big or consume
                      too much memory this is a good parameter to play with.
- `resetht::Int=0`: Resets the hash table after `resetht` steps in the algorthm;
                    default is 0, i.e. no resetting at all. Since we add
                    monomials to the matrices which are only used for reduction
                    purposes, but have no further meaning in the basis, this
                    parameter might also help when memory get a problem.
- `laopt::Int=1`: option for linear algebra to be used. there are different
                  linear algebra routines implemented:
                  >  1: exact sparse-dense computation,
                  >  2: exact sparse computation,
                  > 42: probabilistic sparse-dense computation,
                  > 43: exact sparse then probabilistic dense computation,
                  > 44: probabilistic sparse computation.
- `infolevel::Int=0`: info level for printout, default is 0, i.e. no printout.
                      If set to 1 a summary of the computational data is printed
                      at the beginning and the end of the computation; if set to
                      2 also dynamical information for each round resp. matrix
                      is printed.
- `monorder::Symbol=:degrevlex`: monomial order w.r.t. which the computation is
                                done; default is the
                                degree-reverse-lexicographical (DRL) order; a
                                second possible option is the lexicographical
                                order (LEX).
"""
function f4(
    I::Singular.sideal,           # input generators
    hts::Int=17,                  # hash table size, default 2^17
    nthrds::Int=1,                # number of threads
    maxpairs::Int=0,              # number of pairs maximally chosen
                                  # in symbolic preprocessing
    resetht::Int=0,               # resetting global hash table
    laopt::Int=1,                 # linear algebra option
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
  nvars   = Singular.ngens(R)
  ngens   = Singular.ngens(J)
  # convert Singular ideal to flattened arrays of ints
  lens, cfs, exps   = convert_singular_ideal_to_array(J, nvars, ngens)
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
       Int, Int, Int, Int, Int),
      gb_basis, lens, cfs, exps, char, ord, nvars, ngens, hts, nthrds, maxpairs,
      resetht, laopt, infolevel)
  Libdl.dlclose(lib)

  # convert to julia array, also give memory management to julia
  jl_basis  = Base.unsafe_wrap(Array, unsafe_load(gb_basis), gb_basis_len; own=true)
  ccall((:free, "libc.so.6"), Nothing , (Ptr{Ptr{Cint}}, ), gb_basis)
  basis       = convert_gb_array_to_singular_ideal(jl_basis, R)
  basis.isGB  = true;

  return basis
end

# function modf4(
#     I::Singular.sideal,           # input generators
#     hts::Int=17,                  # hash table size, default 2^17
#     nthrds::Int=1,                # number of threads
#     maxpairs::Int=0,              # number of pairs maximally chosen
#                                   # in symbolic preprocessing
#     laopt::Int=1,                 # linear algebra option
#     monorder::Symbol=:dregrevlex  # monomial order
#     )
#   # prime characteristic
#   p = 2^30
#   Ip  = ???
#   Gp  = GB.f4(Ip, hts, nthrds, maxpairs, laopt, monorder)
# end

end # module
