using Libdl
using BinaryProvider

oldwdir = pwd()

const prefixpath = joinpath(@__DIR__, "usr")

const wdir = joinpath(@__DIR__)
# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS

issource_build = "GB_SOURCE_BUILD" in keys(ENV) && ENV["GB_SOURCE_BUILD"] == "1"

if !issource_build
    # Dependencies that must be installed before this package can be built
    dependencies = [
        # This has to be in sync with the corresponding commit in the source build below (for flint, arb, antic)
        "https://github.com/JuliaPackaging/Yggdrasil/releases/download/GMP-v6.1.2-1/build_GMP.v6.1.2.jl",
        "https://github.com/ederc/GBBuilder/releases/download/v0.13-dev2/build_libgb.v0.13.0-dev2.jl"
    ]

    const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1,
          joinpath(@__DIR__, "usr")))

    products = []

    for url in dependencies
        build_file = joinpath(@__DIR__, basename(url))
        if !isfile(build_file) download(url, build_file)
        end
    end

    # Execute the build scripts for the dependencies in an isolated module to avoid overwriting
    # any variables/constants here
    for url in dependencies
        build_file = joinpath(@__DIR__, basename(url))
        m = @eval module $(gensym()); include($build_file); end
        append!(products, m.products)
    end

    filenames = ["libgmp.la", "libgmpxx.la", "libgb.la"]
    for filename in filenames
        fpath = joinpath(prefixpath, "lib", filename)
        txt = read(fpath, String)
        open(fpath, "w") do f
#write(f, replace(txt, "/workspace/destdir" => prefixpath))
        end
    end

else
    println("Doing a source build for C dependencies...")
    if "NEMO_BUILD_THREADS" in keys(ENV)
        build_threads = ENV["NEMO_BUILD_THREADS"]
        println("Using $build_threads threads for building as specified by NEMO_BUILD_THREADS.")
    else
        build_threads = Sys.CPU_THREADS
        println("Using $build_threads threads (detected that many CPU threads).")
    end
    # at the moment we only use the experimental plain branch of gb
    @show GB_BRANCH = "master"

    pkgdir = dirname(dirname(@__FILE__))
    sdir = joinpath(pkgdir, "src")
    wdir = joinpath(pkgdir, "deps")
    vdir = joinpath(pkgdir, "local")

    if Sys.isapple() && !("CC" in keys(ENV))
    ENV["CC"] = "clang"
    ENV["CXX"] = "clang++"
    end

    if !ispath(vdir)

        mkdir(vdir)

        if !ispath(joinpath(vdir, "lib"))
            mkdir(joinpath(vdir, "lib"))
        end
    else
        println("Deleting old $vdir")
        rm(vdir, force=true, recursive=true)
        mkdir(vdir)
        mkdir(joinpath(vdir, "lib"))
    end

    LDFLAGS = "-Wl,-rpath,$vdir/lib
    -Wl,-rpath,\$\$ORIGIN/../share/julia/site/v$(VERSION.major).$(VERSION.minor)/GB/local/lib"
    DLCFLAGS = "-fPIC -fno-common"

    cd(wdir)

    function download_dll(url_string, location_string)
    try
        run(`curl -o $(location_string) -L $(url_string)`)
    catch
        download(url_string, location_string)
    end
    end

    # install gb - start
    cd(joinpath("$wdir"))
    if !Sys.iswindows()
    println("Cloning gb ... ")
    if !ispath(joinpath("$wdir", "gb"))
        run(`git clone https://github.com/ederc/gb.git`)
        cd(joinpath("$wdir", "gb"))
        run(`git checkout $GB_BRANCH`)
        cd(wdir)
    else
        cd(joinpath("$wdir", "gb"))
        run(`git stash`)
        run(`git pull`)
        run(`git checkout $GB_BRANCH`)
        run(`make distclean`)
        cd(wdir)
    end          
    println("Building gb ... ")
    cd(joinpath("$wdir", "gb"))
    run(`./autogen.sh`)
    run(`./configure --prefix=$vdir --disable-static --enable-shared`)
    run(`make`)
    run(`make install`)
    println("DONE")
    else
    println("Sorry, no support for Windows, stuff will not work!")
    end

    cd(wdir)
end
# install gb - end

push!(Libdl.DL_LOAD_PATH, joinpath(prefixpath, "lib"), joinpath(prefixpath, "bin"))

cd(oldwdir)
