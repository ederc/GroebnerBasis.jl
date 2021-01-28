"""
    f5(I[, nthrds::Int=1, maxpairs::Int=0, reducegb::Int=0,
            infolevel::Int=0, monorder::Symbol=:degrevlex,
            sigorder::Int=0])

Compute a Groebner basis of the given ideal I w.r.t. to the given monomial
order using Faugere's F5 algorithm. The function takes a Singular ideal as
input and returns a Singular ideal. At the moment only finite fields up to
32-bit are supported.

# Arguments
* `I::Singular.sideal`: ideal to compute a Groebner basis for.
* `nthrds::Int=1`:  number of threads; default is 1.
* `maxpairs::Int=0`:  maximal number of pairs selected for one matrix; default is
                      0, i.e. no restriction. If matrices get too big or consume
                      too much memory this is a good parameter to play with.
* `reducegb::Int=0`:  reduce final basis; default is 0. Note that for
                      computations over Q we do not normalize the polynomials,
                      the basis is only minimal and tailreduced. Normalize by
                      hand if necessary.
* `infolevel::Int=0`: info level for printout:
    - `0`: no printout (default),
    - `1`:  a summary of the computational data is printed at the beginning and
    the end of the computation,
    - `2`: also dynamical information for each round resp. matrix is printed.
* `monorder::Symbol=:degrevlex`: monomial order w.r.t. which the computation is
                                done;
    - `degrevlex`: the degree-reverse-lexicographical (DRL) order (default),
    - `lex`: the lexicographical order (LEX).
* `sigorder::Int=:0`: signature order w.r.t. which the computation is
                                done;
    - `0`: position-over-term order, like standard F5 (default),
    - `1`: Schreyer order.
"""
function f5(
        I::Singular.sideal;           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                      # in symbolic preprocessing
        reducegb::Int=0,              # reduce final basis
        infolevel::Int=0,             # info level for print outs
        monorder::Symbol=:degrevlex, # monomial order
        sigorder::Symbol=:pot         # signature order
        )
    R     = I.base_ring
    # skip zero generators in ideal
    ptr = Singular.libSingular.id_Copy(I.ptr, R.ptr)
    J   = Singular.Ideal(R, ptr)
    Singular.libSingular.idSkipZeroes(J.ptr)

    # initialize data structures
    stat  = stat_t()
    stat.numberVariables  = Singular.nvars(R)
    stat.numberGenerators = Singular.ngens(J)

    basis = basis_t()
    basis.numberTerms   = Array(Array{len_t}(undef, stat.numberGenerators))
    basis.coefficients  = Array(Array{Array{cf_t}}(undef, stat.numberGenerators))
    basis.monomials     = Array(Array{Array{Array{exp_t}}}(undef, stat.numberGenerators))
    basis.signatures    = Array(Array{signature_t}(undef, stat.numberGenerators))
    
    H = Array{signature_t}(undef, Int((stat.numberGenerators^2 - stat.numberGenerators) / 2))

    #= get monomial order =#
    if monorder == :degrevlex
        monomialOrder = degrevlex(stat.numberVariables)
    end
    if monorder == :lex
        monomialOrder = lex(stat.numberVariables)
    end

    #= get signature order =#
    if sigorder == :pot
        signatureOrder = pot(stat.numberVariables, monomialOrder)
    end
    if sigorder == :top
        signatureOrder = top(stat.numberVariables, monomialOrder)
    end
    
    #= get field characteristic =#
    stat.characteristic = Singular.characteristic(R)
    if ! Nemo.isprime(Nemo.FlintZZ(stat.characteristic))
        error("At the moment GroebnerBasis only supports finite fields and the rationals.")
        return 0
    end

    #= store input generators data in basis =#
    if 0 == stat.characteristic
        #= to be implemented =#
        #= convert_qq_singular_ideal_to_signature_basis(J, stat, basis) =#
    else
        convert_ff_singular_ideal_to_signature_basis(J, stat, basis)
    end

    #= store trivial syzygies =#
    ind = 1
    for j in 1:stat.numberGenerators
        for i in 1:j-1
            sig_1 = mult_signature_by_mon(basis.signatures[i], first(basis.monomials[i]))
            sig_2 = mult_signature_by_mon(basis.signatures[i], first(basis.monomials[j]))
            lt(signatureOrder, sig_1, sig_2) ? H[ind] = sig_2 : H_ind = sig_1
            ind += 1
        end
    end
end

#= Unfinished =#

# function to initialize initial generators as s-pairs
function gen_s_pair(
    i::pos_t,
    basis::basis_t{N, M}
) where {N, M}
    one = @SVector zeros(exp_t, N)
    s_pair{N, M}(basis.signatures[i], @SVector [one, one], @SVector [i, zero(i)])
end

function gen_s_pair(
    i_1::pos_t,
    i_2::pos_t,
    syz_signatures::Array{signature_t{N, M}},
    basis::basis_t{N, M},
    signatureOrder::ModuleOrder{N, MO},
    stat::stat_t
) where {N, M, MO}
    # assume that the monomials are sorted by the monomial order
    lt_1 = first(basis.monomials[i_1])
    lt_2 = first(basis.monomials[i_2])
    lambd = mon_lcm(lt_1, lt_2)

    mon_1 = SVector{N}([@inbounds lambd[i] - lt_1[i] for i=1:N])
    mon_2 = SVector{N}([@inbounds lambd[i] - lt_2[i] for i=1:N])
    
    sig_1 = mult_signature_by_mon(basis.signatures[i_1], mon_1)
    sig_2 = mult_signature_by_mon(basis.signatures[i_2], mon_2)
    
    sig_1 == sig_2 && return nothing

    # this will be the element just added to G so we just check rewriteability w.r.t. H
    rewriteable(sig_1, syz_signatures) && return nothing

    if typeof(signatureOrder) == pot{N, MO}
        if sig_2.position < sig_1.position
            if rewriteable(sig_2, syz_signatures)
                return nothing
            end
        end
    else
        if rewriteable(sig_2, i_2, basis.signatures, syz_signatures, stat)
            return nothing
        end
    end

    lt(signatureOrder, sig_2, sig_1) && return s_pair(sig_1, SVector(mon_1, mon_2), SVector(i_1, i_2))
    
    s_pair(sig_2, SVector(mon_1, mon_2), SVector(i_1, i_2))
end

function rewriteable(
    signature::signature_t{N, M},
    syz::Array{signature_t{N, M}}
) where {N, M}
    for a in syz
        if sig_divisibility(a, signature)
            return true
        end
    end
    return false
end

function rewriteable(
    signature::signature_t{N, M},
    ind_gen::pos_t,
    basis_signatures::Array{signature_t{N, M}},
    syz::Array{signature_t{N, M}},
    stat::stat_t
) where {N, M}
    if rewriteable(signature, syz)
        return true
    end

    for i in max(stat.start, ind_gen + 1):stat.numberGenerators
        if sig_divisibility(basis_signatures[i], signature)
            return true
        end
    end
    false
end


#= Monomial arithmetic convenience functions =#

"""
return the monomial least common multiple of mon_1 and mon_2.
"""
mon_lcm(mon_1::SVector{N, exp_t}, mon_2::SVector{N, exp_t}) where N = SVector{N}([max(mon_1[i], mon_2[i]) for i=1:N])

"""
return true if mon_1 divides mon_2.
"""
function divisibility(
    mon_1::SVector{N, exp_t},
    mon_2::SVector{N, exp_t}
) where N
    mon_2 == mon_lcm(mon_1, mon_2) && return true

    return false
end

# not great
function divisor(
    mon_1::SVector{N, exp_t},
    mon_2::SVector{N, exp_t}
) where N
    !(divisibility(mon_1, mon_2)) && return nothing
    SVector{N, exp_t}([mon_2[i] - mon_1[i] for i=1:N])
end


"""
   sig_divisibility(sig_1::signature_t, sig_2::signature_t)
"""
function sig_divisibility(
    sig_1::signature_t{N, M},
    sig_2::signature_t{N, M},
) where {N, M}
    sig_1.position == sig_2.position && divisibility(sig_1.monomial, sig_2.monomial) && return true

    return false
end

"""
multiply two monomials by each other.
"""
mult_monomials(mon_1::SVector{N, exp_t}, mon_2::SVector{N, exp_t}) where N = SVector{N, exp_t}([mon_1[i] + mon_2[i] for i=1:N])

function mult_by_monomial(
    mon::SVector{N, exp_t},
    pol::Array{SVector{N, exp_t}}
) where N
    map(a -> mult_monomials(mon, a), pol)
end

"""
Multiply a module monomial by a monomial.
"""
function mult_signature_by_mon(
    signature::signature_t{N, M},
    mon::SVector{N, exp_t}
) where {N, M}
    res_mon = mult_monomials(mon, signature.monomial)
    signature_t{N, M}(res_mon, sum(res_mon), signature.position)
end
