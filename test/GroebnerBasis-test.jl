include("F4-test.jl")
include("Msolve-test.jl")
include("Benchmarks-test.jl")

function test_all()
   test_f4()
   test_msolve()
   test_benchmarks()
end
