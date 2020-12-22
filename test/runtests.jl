using ShowLint
using Test

SL = ShowLint

@testset "ShowLint" begin
    @test SL.repository_ordering_is_valid()
    @test SL.prettify_loc(1000) == "1,000"
    
    include("patterns.jl")
end
