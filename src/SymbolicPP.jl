struct macaulay_matrix{N, M}
    columns::Set{SVector{N, exp_t}}
    row_sigs::Array{signature_t{N, M}}
    indices::Array{pos_t}
    indexed::Array{Array{pos_t}}
end

"""
For each monomial in B, find the corresponding index in A or 0 if it doesn't exist.
"""
# ÄNDERN
function index_monomials(
    A::Array{SVector{N, exp_t}},
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

"""
Find the non-rewriteble reducer of minimial signature in basis for a given monomial.
"""
function find_reducer!(
    monomial::SVector{N, exp_t},
    basis::basis_t{N, M},
    syz_signatures::Array{signature_t{N, M}},
    signatureOrder::ModuleOrder{N, MO},
    todo::Set{SVector{N, exp_t}}
    stat::stat_t
) where {MO, N, M}
    reducer = nothing

    for i in reverse(1:stat.numberGenerators)
        @inbounds c = divisor(monomial, basis.monomials[i][1])
        if c != nothing
            @inbounds sig = mult_signature_by_mon(basis.signatures[i], c)
            if reducer != nothing && lt(signatureOrder, reducer[1], sig) && rewriteable(sig, i, basis.signatures, syz_signatures, stat)
                continue
            else
                reducer = (sig, i, c)
            end
        end
    end

    reducer != nothing && union!(todo, mult_by_monomial(c, basis.monomials[red[2]]))
    return reducer, todo
end

        
function symbolic_pp(
    basis::basis_t{N, M},
    syz_signatures::Array{signature_t{N, M}},
    signatureOrder::ModuleOrder{N, MO},
    stat::stat_t,
    mon_poly_pairs::Array{Tuple{SVector{N, exp_t}, pos_t}}
) where {N, M, MO}
    mult_rows = SVector{N, exp_t}[]
    row_sigs = signature_t{N, M}[]
    todo = Set{SVector{N, exp_t}}([])
    done = Set{SVector{N, exp_t}}([])
    indices = [mon_pair[2] for mon_pair in mon_poly_pairs]
    indexed = Array{pos_t}[]

    for pair in mon_poly_pairs
        new_row = mult_by_monomial(pair[1], basis.monomials[pair[2]])
        done = union!(done, new_row[1])
        todo = union!(todo, new_row[2:end])
        push!(mult_rows, new_row)
        new_sig = mult_signature_by_mon(basis.signatures[pair[2]], pair[1])
        push!(row_sigs, new_sig)
    end

    for m in todo
        m in done && continue
        done = union!(done, [m])
        red, todo = find_reducer!(m, basis, syz_signatures, signatureOrder, todo, stat)
        red == nothing && continue
        new_row = mult_by_monomial(red[3], basis.monomials[red[2]])
        push!(mult_rows, new_row)
        push!(row_sigs, red[1])
        push!(indices, red[2])
    end

    for row in mult_rows
        push!(indexed, index_monomials(row, done))
    end
    
    tosort = [(row_sigs[i], indices[i], indexed[i]) for i in eachindex(mult_rows)]
    comp = a, b -> lt(signatureOrder, a, b)
    sort!(tosort, lt = comp, by = x -> x[1])
    
    macaulay_matrix(done, (x -> x[1]).tosort, (x -> x[2]).tosort, (x -> x[3]).tosort)
end
    
        
                             
