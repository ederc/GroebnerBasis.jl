module GB

# package code goes here
using Singular

const pkgdir  = realpath(joinpath(dirname(@__FILE__), ".."))
const libdir   = joinpath(pkgdir, "local", "lib")
const libgb   = joinpath(pkgdir, "local", "lib", "libgb")

# function __init__()
#    if "HOSTNAME" in keys(ENV) && ENV["HOSTNAME"] == "juliabox"
#        push!(Libdl.DL_LOAD_PATH, "/usr/local/lib")
#    elseif is_linux()
#        push!(Libdl.DL_LOAD_PATH, libdir)
#        Libdl.dlopen(libgb)
#    else
#       push!(Libdl.DL_LOAD_PATH, libdir)
#    end
#
#    println("")
#    println("GB comes with absolutely no warranty whatsoever")
#    println("")
# end

function convert_singular_ideal_to_array(
    I::Singular.sideal,
    nvars::Int,
    ngens::Int
    )
  nterms  = 0
  for i=1:ngens
    nterms  +=  length(I[i])
  end
  len = nterms * (1+nvars) + ngens
  ideal = Array{Int32,1}(len)
  ctr = 1
  for i=1:Singular.ngens(I)
    ideal[ctr]  = length(I[i])
    ctr +=  1
    for (c,e) in Singular.coeffs_expos(I[i])
      ideal[ctr]  = Base.Int(c)
      ctr +=  1
      for j=1:nvars
        ideal[ctr]  =  Base.Int(e[j])
        ctr +=  1
      end
    end
  end
  ideal
end

function convert_array_to_singular_ideal(
    basis::Array{Int32,1},
    R::Singular.PolyRing
    )
  basis
end

function f4(
    I::Singular.sideal,
    R::Singular.PolyRing
    )
  char  = Singular.characteristic(R)
  if 0 == char
    error("At the moment GB only supports finite characteristic.
       Prime must be < 2^32.")
  end
  # get number of variables
  nvars   = length(Singular.exponent(I[1], 1))
  ngens   = Singular.ngens(I)
  # convert Singular ideal to flattened array of ints
  ideal   = convert_singular_ideal_to_array(I, nvars, ngens)
  # call f4 in gb
  basis   = ccall((:f4_julia, libgb), Array{Int32,1},
      (Array{Int32,1}, Int, Int), ideal, nvars, ngens)
  # convert flattened array of ints to Singular ideal
end

end # module
