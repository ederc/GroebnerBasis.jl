module GroebnerBasis

# other files

# package code goes here
using Libdl
using Singular
using Nemo
using LibGit2
using Dates

using gb_jll

#export Singular
#export Nemo

export f4, f5

include("Benchmarks.jl")
include("Example.jl")
include("Typedefs.jl")
include("Interfaces.jl")
include("F4.jl")
include("SignatureGB.jl")

const pkgdir  = realpath(joinpath(dirname(@__FILE__), ".."))
const libdir   = joinpath(pkgdir, "deps", "usr", "lib")
#const libgb   = joinpath(pkgdir, "deps", "usr", "lib", "libgb")

const __isthreaded  = 1

function __init__()
   if "HOSTNAME" in keys(ENV) && ENV["HOSTNAME"] == "juliabox"
       push!(Libdl.DL_LOAD_PATH, "/usr/local/lib")
   elseif Sys.islinux()
       push!(Libdl.DL_LOAD_PATH, libdir)
       Libdl.dlopen(libgb)
   else
      push!(Libdl.DL_LOAD_PATH, libdir)
   end

   if __isthreaded == 1
    ccall((:__gmp_set_memory_functions, :libgmp), Nothing,
            (Int, Int, Int), 0, 0, 0)
    end
end

function versioninfo()
    print("GroebnerBasis v0.1.0\n")
    gbrepo = dirname(dirname(@__FILE__))

    print("GroebnerBasis: ")
    prepo = LibGit2.GitRepo(gbrepo)
    print("commit: ")
    print(string(LibGit2.head_oid(prepo)))
    print(" date: ")
    commit = LibGit2.GitCommit(prepo, LibGit2.head_oid(prepo))
    println(Dates.unix2datetime(LibGit2.author(commit).time))

    finalize(prepo)

    for deps in ["gb"]
        if ispath(joinpath(gbrepo, "deps", deps))
            print("$deps: ")
            repo = joinpath(gbrepo, "deps", deps)

            prepo = LibGit2.GitRepo(repo)

            print("commit: ")
            print(string(LibGit2.head_oid(prepo)))
            print(" date: ")
            commit = LibGit2.GitCommit(prepo, LibGit2.head_oid(prepo))
            println(Dates.unix2datetime(LibGit2.author(commit).time))
            finalize(prepo)
        end
    end
    return nothing
end

end # module
