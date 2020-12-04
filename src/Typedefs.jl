const len_t = UInt32
const cf_t  = UInt32
const pos_t = UInt32
const deg_t = UInt16
const exp_t = UInt16

export stat_t, signature_t, sig_poly_pair, s_pair, basis_t

mutable struct stat_t
    numberVariables::Int
    numberGenerators::Int
    characteristic::Int
    stat_t()  = new()
end

struct signature_t
    monomial::Array{exp_t}
    position::pos_t
end

struct s_pair
    signature::signature_t
    mult_monomials::SVector{2, Array{exp_t}}
    indices::SVector{2, CartesianIndex{1}}
end

mutable struct basis_t
    load::len_t
    maxDegree::deg_t
    numberTerms::Array{len_t}
    coefficients::Array{Array{cf_t}}
    monomials::Array{Array{Array{exp_t}}}
    signatures::Array{signature_t}
    basis_t() = new()
end
