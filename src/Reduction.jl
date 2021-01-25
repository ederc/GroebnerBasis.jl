function addinv(a, p)
    c = a % p
    c < 0 && return p + c
    return p - c
end

function build_sparse_row(
    row::Array{cf_t},
    indexed::Array{pos_t},
    start::pos_t,
    endd::pos_t
)
    sparse_row = Array{cf_t}([])
    for i in start:length(indexed)
        if i == 1
            diff = indexed[1] - 1
        else
            diff = indexed[i] - indexed[i-1] - 1
        end
        append!(sparse_row, zeros(cf_t, diff))
        push!(sparse_row, row[i])
    end
    append!(sparse_row, zeros(endd - length(indexed)))
    sparse_row
end

# can be improved, no need to store the entire row_1, shoudl probably make char static
function reduce_dense_row(
    row_1::Array{cf_t},
    row_2::Array{cf_t},
    indexed_1::Array{pos_t},
    indexed_2::Array{pos_t},
    piv_ind::pos_t,
    n_cols::pos_t,
    char::cf_t
)
    # init buffer using indexed_1
    buffer = build_sparse_row(row_1, indexed_1, pos_t(1), n_cols)
    # compute_multiplier
    multiplier = Int32(buffer[piv_ind] * invmod(row_2[1], char))  % char # buffer[1] / row_2[1]
    for (j, i) in enumerate(indexed_2)
        res = (Int32(buffer[i]) + addinv(multiplier * Int32(row_2[j]), char)) % char
        buffer[i] =  cf_t(res)# buffer[i] - multiplier * row_2[j]
    end
    new_row = Array{cf_t}([])
    new_indexed = Array{pos_t}([])
    for (i, coeff) in enumerate(buffer)
        coeff == cf_t(0) && continue
        push!(new_indexed, i)
        push!(new_row, coeff)
    end
    return new_row, new_indexed
end

# right now this does every possible reduction from bottom to top
function reduction!(
    Mat::macaulay_matrix{N, M},
    char::cf_t
) where {N, M}
    for i in reverse(1:Mat.n_rows)
        piv_ind = Mat.indexed[i][1]
        for j in 1:i-1
            Mat.indexed[j][1] > piv_ind && !(piv_ind in Mat.indexed[j]) && continue
            new_row, new_indexed = reduce_dense_row(Mat.entries[j], Mat.entries[i], Mat.indexed[j], Mat.indexed[i], piv_ind, Mat.n_cols, char)
            Mat.entries[j] = new_row
            Mat.indexed[j] = new_indexed
        end
    end
    Mat
end
