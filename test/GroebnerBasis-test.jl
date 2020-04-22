include("F4-test.jl")
include("Benchmarks-test.jl")

function test_all()
   test_f4()
   test_benchmarks()
end
