const len_t = UInt32
const cf_t  = UInt32
const pos_t = UInt32
const deg_t = UInt16
const exp_t = Int16

export stat_t, pos_t, signature_t, s_pair, basis_t

mutable struct stat_t
    numberVariables::Int
    numberGenerators::Int
    characteristic::UInt32
    start::Int
    stat_t(a, b, c) = new(a, b, UInt32(c), b + 1)
end

struct signature_t{N, M}
    monomial::SVector{N, exp_t}
    degree::deg_t
    position::pos_t
end

struct s_pair{N, M}
    signature::signature_t{N, M}
    lower_sig::signature_t{N, M}
    mult_monomials::SVector{2, SVector{N, exp_t}}
    indices::SVector{2, pos_t}
    degree::deg_t
    s_pair{N, M}(a, b, c, d, basis) where {N, M} = new(a, b, c, d, sum(c[1]) + sum(first(basis.monomials[d[1]])))
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

mutable struct macaulay_matrix{N, M}
    n_cols::pos_t
    n_rows::pos_t
    columns::Array{SVector{N, exp_t}}
    row_sigs::Array{signature_t{N, M}}
    entries::Array{SparseVector{cf_t}}
    basis_indices::Array{pos_t}
    flags
end
macaulay_matrix{N, M}(n_cols, n_rows, columns, row_sigs, entries, basis_indices) where {N, M} =
    macaulay_matrix{N, M}(n_cols, n_rows, columns, row_sigs, entries, basis_indices, falses(n_rows))
