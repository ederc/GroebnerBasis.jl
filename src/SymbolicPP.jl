"""
For each monomial in B, find the corresponding index in A or 0 if it doesn't exist.
"""
function index_monomials(
    A::Array{Array{exp_t}},
    B::Set{Array{exp_t}}
)
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

"""
Find all non-rewriteble reducers in basis for a given monomial.
"""
function find_reducers(
    monomial::Array{exp_t},
    basis::basis_t,
    syz_signatures::Array{signature_t},
    stat::stat_t
)
    reducers = Tuple{pos_t, Array{exp_t}}[]

    for i in reverse(1:stat.numberGenerators)
        @inbounds c = divisor(monomial, basis.monomials[i][1], stat)
        if c != nothing
            @inbounds sig = mult_signature_by_mon(basis.signatures[i], c, stat)
            if rewriteable(sig, i, basis.signatures, syz_signatures, stat)
                continue
            else
                pushfirst!(reducers, (i, c))
            end
        end
    end

    return reducers
end

        
