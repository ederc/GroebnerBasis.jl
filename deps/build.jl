using Libdl

using BinaryProvider

# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS

issource_build = "GB_SOURCE_BUILD" in keys(ENV) && ENV["GB_SOURCE_BUILD"] == "1"

const prefixpath = joinpath(@__DIR__, "usr")

const wdir = joinpath(@__DIR__)

if !issource_build
  # Dependencies that must be installed before this package can be built
  dependencies = [
    "https://github.com/ederc/GBBuilder/releases/download/01ed8da/build_libgb.v1.0.0-ed8da.jl",
    "https://github.com/JuliaMath/GMPBuilder/releases/download/v6.1.2-2/build_GMP.v6.1.2.jl"
   ]

  const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))

  products = []

  for url in dependencies
      build_file = joinpath(@__DIR__, basename(url))
      if !isfile(build_file)
          download(url, build_file)
      end
  end

  # Execute the build scripts for the dependencies in an isolated module to avoid overwriting
  # any variables/constants here
  for url in dependencies
      build_file = joinpath(@__DIR__, basename(url))
      m = @eval module $(gensym()); include($build_file); end
      append!(products, m.products)
  end
else
  oldwdir = pwd()
  println("Doing a source build for C dependencies...")

  if Sys.iswindows()
    error("Source build not available on Windows")
  end

  println("Removing old binaries ...")

  rm(prefixpath, force = true, recursive = true)
  mkdir(prefixpath)
  mkdir(joinpath(prefixpath, "lib"))

  # at the moment we only use the experimental plain branch of gb
  @show GB_BRANCH = "01ed8dac87e8f0bf182df8eba4744ede51dcb256"

  if Sys.isapple() && !("CC" in keys(ENV))
    ENV["CC"] = "clang"
    ENV["CXX"] = "clang++"
  end

  cd(wdir)

  LDFLAGS = "-Wl,-rpath,$prefixpath/lib -Wl,-rpath,\$\$ORIGIN/../share/julia/site/v$(VERSION.major).$(VERSION.minor)/GB/local/lib"
  DLCFLAGS = "-fPIC -fno-common"

  cd(wdir)

  function download_dll(url_string, location_string)
    try
      run(`curl -o $(location_string) -L $(url_string)`)
    catch
      download(url_string, location_string)
    end
  end

  @show wdir

  if !Sys.iswindows()
    println("Cloning gb ... ")
    if !ispath(joinpath("$wdir", "gb"))
      run(`git clone https://github.com/ederc/gb.git`)
      cd(joinpath("$wdir", "gb"))
      run(`git checkout $GB_BRANCH`)
      cd(wdir)
    else
      #cd(joinpath("$wdir", "gb"))
      #run(`git stash`)
      #run(`git pull`)
      #run(`git checkout $GB_BRANCH`)
      #run(`make distclean`)
      #cd(wdir)
    end          
    println("Building gb ... ")
    cd(joinpath("$wdir", "gb"))
    run(`./autogen.sh`)
    run(`./configure --prefix=$prefixpath --disable-static --enable-shared`)
    run(`make`)
    run(`make install`)
    println("DONE")
  else
    println("Sorry, no support for Windows, stuff will not work!")
  end
  cd(oldwdir)
end

push!(Libdl.DL_LOAD_PATH, joinpath(prefixpath, "lib"), joinpath(prefixpath, "bin"))
