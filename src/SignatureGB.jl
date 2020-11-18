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
        monorder::Symbol=:dregrevlex, # monomial order
        sigorder::Int=0               # signature order
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
    basis.numberTerms   = Array{len_t}(undef, stat.numberGenerators)
    basis.coefficients  = Array{Array{cf_t}}(undef, stat.numberGenerators)
    basis.monomials     = Array{Array{Array{exp_t}}}(undef, stat.numberGenerators)

    #= get monomial order =#
    monomialOrder = 0
    if monorder == :degrevlex
        monomialOrder = 0
    end
    if monorder == :lex
        monomialOrder = 1
    end

    #= get signature order =#
    signatureOrder  = sigorder

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
end

#- Unfinished -#

function gen_s_pair(
    s_pol_1::sig_poly_pair,
    s_pol_2::sig_poly_pair,
    rewriters::Array{signature_t}
    stat::stat_t
)
    # assume that the monomials are sorted by the monomial order
    lt_1 = s_pol_1.monomials[1]
    lt_2 = s_pol_2.monomials[1]
    lambd = mon_lcm(lt_1, lt_2)
    mon_1 = Array{exp_t}(undef, stat.numberVariables)
    mon_2 = Array{exp_t}(undef, stat.numberVariables)

    for i in 1:stat.numberVariables
        mon_1[i] = lambd[i] - lt_1[i]
        mon_2[i] = lambd[i] - lt_2[i]
    end

    sig_1 = mult_signature_by_mon(s_pol_1.signature, mon_1)
    sig_2 = mult_signature_by_mon(s_pol_2.signature, mon_2)

    if (sig_1 == sig_2 || rewriteable(sig_1, rewriters) || rewriteable(sig_2, rewriters))
        return nothing
    end

    # here we need to use module monomial order

    s_pair(sig_2, SVector(mon_1, mon_2), SVector(s_pol_1, s_pol_2))
    
end

function rewriteable(
    signature::signature_t,
    rewriters::Array{signature_t}
)
    #- to be implemented -#
end


#- Monomial arithmetic convenience functions -#

"""
    mon_lcm(mon_1::Array{exp_t}, mon_2::Array{exp_t})

return the monomial least common multiple of mon_1 and mon_2.
"""
function mon_lcm(
    mon_1::Array{exp_t},
    mon_2::Array{exp_t},
    stat::stat_t
)
    lcm = Array{exp_t}(undef, stat.numberVariables)

    for i=1:length(mon_1)
        lcm[i] = max(mon_1[i], mon_2[i])
    end

    return lcm
end


"""
    divisibility(mon_1::Array{exp_t}, mon_2::Array{exp_t})

return true if mon_1 divides mon_2.
"""
function divisibility(
    mon_1::Array{exp_t},
    mon_2::Array{exp_t}
)
    lamb = mon_lcm(mon_1, mon_2)

    if lamb == mon_2
        return true
    end

    return false
end

"""
   sig_divisibility(sig_1::signature_t, sig_2::signature_t)

return true if sig_1 divides sig_2.   
"""
function sig_divisibility(
    sig_1::signature_t,
    sig_2::signature_t
)
    if sig_1.position == sig_2.position
        if divisibility(sig_1.monomial, sig_2.monomial)
            return true
        end
    end

    return false
end

"""
    mult_monomials(mon_1::Array{exp_t}, mon_2::Array{exp_t}, stat::stat_t)

multiply two monomials by each other.
"""
function mult_monomials(
    mon_1::Array{exp_t},
    mon_2::Array{exp_t},
    stat::stat_t
)
    res = Array{exp_t}(undef, stat.numberVariables)
    for i=1:stat.numberVariables:
        res[i] = mon_1[i] + mon_2[i]
    end

    res
end

"""
    mult_signature_by_mon(signature::signature_t, mon::Array{exp_t}, stat::stat_t)

Multiply a module monomial by a monomial.
"""
function mult_signature_by_mon(
    signature::signature_t,
    mon::Array{exp_t},
    stat::stat_t
)
    res_mon = mult_monomials(mon, signature.monomial, stat)
    signature_t(res_mon, signature.position)
end
