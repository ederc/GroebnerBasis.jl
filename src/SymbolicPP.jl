"""
For each monomial in A, find the corresponding index in B.
"""
# ÄNDERN
function index_monomials(
    A::Array{SVector{N, exp_t}},
    B::Array{SVector{N, exp_t}}
) where N
    i_2 = 1
    indexed = Array{pos_t}(undef, length(A))
    for i in 1:length(A)
        for j in i_2:length(B)
            if A[i] == B[j]
                indexed[i] = j
                i_2 = j + 1
                break
            end
        end
    end
    indexed
end

"""
Find the non-rewriteble regular reducer of minimial signature in basis for a given monomial.
"""
function find_reducer!(
    monomial::SVector{N, exp_t},
    basis::basis_t{N, M},
    syz_signatures::Array{signature_t{N, M}},
    signatureOrder::ModuleOrder{N, MO},
    todo::Set{SVector{N, exp_t}},
    stat::stat_t
) where {MO, N, M}
    reducer = nothing

    for i in reverse(stat.start:stat.numberGenerators)
        @inbounds c = divisor(basis.monomials[i][1], monomial)
        if c != nothing
            @inbounds sig = mult_signature_by_mon(basis.signatures[i], c)
            if reducer != nothing && lt(signatureOrder, reducer[1], sig) && rewriteable(sig, pos_t(i), basis.signatures, syz_signatures, stat)
                continue
            else
                reducer = (sig, i, c)
            end
        end
    end

    reducer != nothing && union!(todo, mult_by_monomial(reducer[3], basis.monomials[reducer[2]]))
    return reducer
end

        
function symbolic_pp(
    basis::basis_t{N, M},
    syz_signatures::Array{signature_t{N, M}},
    signatureOrder::ModuleOrder{N, MO},
    stat::stat_t,
    mon_poly_pairs::Array{Tuple{SVector{N, exp_t}, pos_t}},
    flags::Array{Bool}
) where {N, M, MO}
    mult_rows = Array{SVector{N, exp_t}}[]
    row_sigs = signature_t{N, M}[]
    todo = Set{SVector{N, exp_t}}([])
    done = Set{SVector{N, exp_t}}([])
    indices = [mon_pair[2] for mon_pair in mon_poly_pairs]
    indexed = Array{pos_t}[]

    for (i, pair) in enumerate(mon_poly_pairs)
        new_row = mult_by_monomial(pair[1], basis.monomials[pair[2]])
        new_sig = mult_signature_by_mon(basis.signatures[pair[2]], pair[1])
        !(flags[i]) && push!(done, new_row[1])
        union!(todo, new_row)
        push!(mult_rows, new_row)
        push!(row_sigs, new_sig)
    end

    while todo != done
        for m in todo
            m in done && continue
            done = union!(done, [m])
            red = find_reducer!(m, basis, syz_signatures, signatureOrder, todo, stat)
            red == nothing && continue
            new_row = mult_by_monomial(red[3], basis.monomials[red[2]])
            push!(mult_rows, new_row)
            push!(row_sigs, red[1])
            push!(indices, red[2])
            break
        end
    end

    # excellent coding
    done = [m for m in done]
    comp = (a, b) -> lt(MO, a, b)
    sort!(done, lt = comp, rev = true)    
    
    tosort = [(row_sigs[i], indices[i], mult_rows[i]) for i in eachindex(mult_rows)]
    comp = (a, b) -> lt(signatureOrder, a, b)
    sort!(tosort, lt = comp, by = x -> x[1], rev=true)
    
    macaulay_matrix{N, M}(pos_t(length(done)),
                          pos_t(length(row_sigs)),
                          done,
                          map(x -> x[1], tosort),
                          map(x -> SparseVector(length(done),
                                                Array{Int}(indexin(x[3], done)),
                                                basis.coefficients[x[2]]),
                              tosort),
                          map(x -> x[2], tosort))
end
    
        
                             
