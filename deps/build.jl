oldwdir = pwd()

# at the moment we only use the experimental plain branch of gb
@show GB_BRANCH = "plain"
 # @show GB_BRANCH = "plain-only-global-hash-table"

pkgdir = dirname(dirname(@__FILE__))
wdir = joinpath(pkgdir, "deps")
vdir = joinpath(pkgdir, "local")

if is_apple() && !("CC" in keys(ENV))
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

# install gb - start

if !is_windows()
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
