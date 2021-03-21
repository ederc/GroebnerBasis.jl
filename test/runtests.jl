using GroebnerBasis
using GroebnerBasis.Singular
using Test

include("test_examples.jl")

@testset "GroebnerBasis" begin
    include("F4-test.jl")
    include("Msolve-test.jl")
    include("Benchmarks-test.jl")
end
