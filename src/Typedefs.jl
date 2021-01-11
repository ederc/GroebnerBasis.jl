const len_t = UInt32
const cf_t  = UInt32
const pos_t = UInt32
const deg_t = UInt16
const exp_t = Int16

export stat_t, pos_t, signature_t, s_pair, basis_t

mutable struct stat_t
    numberVariables::Int
    numberGenerators::Int
    characteristic::Int
    stat_t()  = new()
end

struct signature_t{N, M}
    monomial::SVector{N, exp_t}
    degree::deg_t
    position::pos_t
end

struct s_pair{N, M}
    signature::signature_t{N, M}
    mult_monomials::SVector{2, SVector{N, exp_t}}
    indices::SVector{2, pos_t}
end

mutable struct basis_t{N, M}
    load::len_t
    maxDegree::deg_t
    numberTerms::Array{len_t}
    coefficients::Array{Array{cf_t}}
    monomials::Array{Array{SVector{N, exp_t}}}
    signatures::Array{signature_t{N, M}}
    basis_t{N, M}() where {N, M} = new()
end
