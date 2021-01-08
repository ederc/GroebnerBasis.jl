#= (Module) monomial orders
CREDIT: Pierre Lairez - https://gitlab.lip6.fr/lairez/RationalIntegrals.jl/-/blob/master/src/termorder.jl=#


abstract type MonomialOrder{N} end

struct lex{N} <: MonomialOrder{N} end
lex(N) = lex{N}()
ordervector(::Lex{N}, monomial::Array{exp_t}) where N = monomial

struct degrevlex{N} <: MonomialOrder{N} end
degrevlex(N) = degrevlex{N}()
@generated function ordervector(::degrevlex{N},
                     monomial::Array{exp_t}) where N
    sum = :(monomial[1])
    for i in 2:N
        sum = :(monomial[$i] + $sum)
    end
    quote [$sum, $([:(-monomial[$i]) for i in reverse(1:N-1)]...)] end
end

"""
    degrevlex(mon_1::Array{exp_t}, mon_2::Array{exp_t}

Return true if mon_1 < mon_2 in the degrevlex ordering.
)

"""    
function degrevlex(
    mon_1::Array{exp_t},
    mon_2::Array{exp_t},
    deg_1::deg_t,
    deg_2::deg_t,
    stat::stat_t
)
    if deg_1 == deg_2
        for i=0:stat.numberVariables-1
            ind = stat.numberVariables - i
            if mon_1[ind] == mon_2[ind]
                continue
            else
                return  mon_2[ind] < mon_1[ind]
            end
        end
    end
    return deg_1 < deg_2

end

"""
    pot(sig_1::signature_t, sig_2::signature_t, monorder::Int)

Return true if sig_1 < sig_2 w.r.t. the pot extension of monorder.
)

"""
function pot(
    sig_1::signature_t,
    sig_2::signature_t,
    stat::stat_t,
    monorder::Int
)
    if sig_1.position == sig_2.position && monorder == 0
        return degrevlex(sig_1.monomial, sig_2.monomial, sig_1.degree, sig_2.degree, stat)
    end
    return sig_1.position < sig_2.position

end
