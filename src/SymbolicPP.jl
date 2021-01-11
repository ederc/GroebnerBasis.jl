mutable struct macaulay_matrix{N, M}
    # first index = pos in pair array, 2nd = pos in pair
    non_basis::Array{SVector{2, pos_t}}
    in_basis::Array{Tuple{signature_t{N, M}, pos_t, SVector{N, exp_t}}}
    # need to sort by signature when initializing
    row_indices::Array{pos_t}
    columns::Set{SVector{N, exp_t}}
    # careful with how you initialize this!
    indexed::Array{Array{pos_t}}
end

"""
For each monomial in B, find the corresponding index in A or 0 if it doesn't exist.
"""
function index_monomials(
    A::Array{SVector{exp_t}},
    B::Set{SVector{N, exp_t}}
) where N
    indexed = zeros(pos_t, length(B))
    pos = 1

    for (m, j) in enumerate(B)
        @inbounds if m == A[pos]
            pos += 1
            @inbounds indexed[j] = pos
        end
    end

    return indexed
end

function index_monomials(
    A::Array{SVector{N, exp_t}},
    multiplier::SVector{N, exp_t},
    B::Set{SVector{N, exp_t}},
    stat::stat_t
) where N
    for (m, j) in enumerate(A)
        @inbounds A[j] = [m[i] + multiplier[i] for i in 1:stat.numberGenerators]
    end

    return index_monomials(A, B)

"""
Find the non-rewriteble reducer of minimial signature in basis for a given monomial.
"""
function find_reducer(
    monomial::SVector{N, exp_t},
    basis::basis_t{N, M},
    syz_signatures::Array{signature_t},
    signatureOrder::ModuleOrder{N, MO},
    stat::stat_t
) where {MO, N, M}
    reducer = nothing

    for i in reverse(1:stat.numberGenerators)
        @inbounds c = divisor(monomial, basis.monomials[i][1])
        if c != nothing
            @inbounds sig = mult_signature_by_mon(basis.signatures[i], c)
            # need to fix orders, this is the absolute worst
            if reducer != nothing && lt(signatureOrder, reducer[1], sig) && rewriteable(sig, i, basis.signatures, syz_signatures, stat)
                continue
            else
                reducer = (sig, i, c)
            end
        end
    end

    return reducer
end

        
