import CxxWrap
import Singular
import Libdl

oldwdir = pwd()

# at the moment we only use the experimental plain branch of gb
@show GB_BRANCH = "master"

pkgdir = dirname(dirname(@__FILE__))
sdir = joinpath(pkgdir, "src")
wdir = joinpath(pkgdir, "deps")
vdir = joinpath(pkgdir, "local")
jlcxx_dir = realpath(joinpath(dirname(pathof(CxxWrap)), "..", "deps", "usr"))
singular_dir = realpath(joinpath(dirname(pathof(Singular)), "..", "local"))

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

LDFLAGS = "-Wl,-rpath,$vdir/lib -Wl,-rpath,\$\$ORIGIN/../share/julia/site/v$(VERSION.major).$(VERSION.minor)/GB/local/lib"
DLCFLAGS = "-fPIC -fno-common"

cd(wdir)

function download_dll(url_string, location_string)
   try
      run(`curl -o $(location_string) -L $(url_string)`)
   catch
      download(url_string, location_string)
   end
end

# build gbcppwrap
cd(joinpath("$sdir"))
run(`g++ GB.cpp -DJULIA_ENABLE_THREADING -Dgbcpp_EXPORTS -I$(Sys.BINDIR)/../include/julia -I$(jlcxx_dir)/include -I$(singular_dir)/include -I$(singular_dir)/include/singular -L$(singular_dir)/lib -L$(jlcxx_dir)/lib -lcxxwrap_julia -ldl -shared -fPIC -o $(vdir)/lib/libgbcpp.so`)

# install gb - start

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

# install gb - end

push!(Libdl.DL_LOAD_PATH, joinpath(vdir, "lib"))

cd(oldwdir)
