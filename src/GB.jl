module GB

# package code goes here
using Revise
using Nemo
using Singular

include("Benchmarks.jl")

const pkgdir  = realpath(joinpath(dirname(@__FILE__), ".."))
const libdir   = joinpath(pkgdir, "local", "lib")
const libgb   = joinpath(pkgdir, "local", "lib", "libgb")

function __init__()
   if "HOSTNAME" in keys(ENV) && ENV["HOSTNAME"] == "juliabox"
       push!(Libdl.DL_LOAD_PATH, "/usr/local/lib")
   elseif is_linux()
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
  lens = Array{Int32,1}(ngens)
  for i = 1:ngens
    lens[i] =   length(id[i]) 
    nterms  +=  length(id[i])
  end
  cfs   = Array{Int32,1}(nterms)
  exps  = Array{Int32,1}(nvars*nterms)
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

function convert_gb_array_to_singular_ideal(
    gb::Array{Int32,1},
    R::Singular.PolyRing
    )
  ngens = gb[2] # number of generators of basis

  nvars = Singular.ngens(R)
  basis = Singular.Ideal(R, ) # empty ideal
  exp   = zeros(Cint, nvars+1) 
  
  list  = elem_type(R)[]
  # we generate the singular polynomials low level in order
  # to avoid overhead due to many exponent operations etc.
  j   = ngens + 2 + 1
  len = j
  for i = 1:ngens
    p = C_NULL
    len = len + gb[i+2]
    while j < len
      term  = Singular.libSingular.p_Init(R.ptr)
      Singular.libSingular.pSetCoeff0(term, Clong(gb[j]), R.ptr)
      j += 1
      for k = 1:nvars
        exp[k+1]  = gb[j]
        j += 1
      end
      Singular.libSingular.p_SetExpV(term, exp, R.ptr)
      if p == C_NULL
        p = term
      else
        p = Singular.libSingular.p_Add_q(p, term, R.ptr)
      end
    end
    push!(list, R(p))
  end
  return Singular.Ideal(R, list)
end

function f4(
    I::Singular.sideal,   # input generators
    hts::Int=17,          # hash table size, default 2^17
    nthrds::Int=1,        # number of threads
    laopt::Int=1          # linear algebra option
    )
  R     = I.base_ring
  char  = Singular.characteristic(R)
  if 0 == char
    error("At the moment GB only supports finite characteristic.
       Prime must be < 2^32.")
  end
  # get number of variables
  nvars   = Singular.ngens(R)
  ngens   = Singular.ngens(I)
  # convert Singular ideal to flattened arrays of ints
  lens, cfs, exps   = convert_singular_ideal_to_array(I, nvars, ngens)
  # call f4 in gb
  # println("Input data")
  # println("----------")
  # println(lens)
  # println(cfs)
  # println(exps)
  # println("----------")
  if hts > 30
    hts = 24
  end
  # calling f4_julia with the following arguments:
  # lengths of all generators
  # coefficients of all generators
  # exponents of all generators
  # number of variables
  # number of generators
  # hash table size log_2, i.e. given 12 => 2^12
  println(char, nvars, ngens, hts, nthrds, laopt)
  gb_result  = ccall((:f4_julia, libgb), Ptr{Cint},
      (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Int, Int, Int, Int, Int, Int),
      lens, cfs, exps, char, nvars, ngens, hts, nthrds, laopt)

   # get length of pointer, i.e. first entry
  sz  = unsafe_wrap(Array, gb_result, 1)

  # convert to julia array, also give memory management to julia
  gb_basis  = unsafe_wrap(Array, gb_result, sz[1], true)
  basis     = convert_gb_array_to_singular_ideal(gb_basis, R)

  return basis
end

end # module
