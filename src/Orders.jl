#= (Module) monomial orders
CREDIT: Pierre Lairez - https://gitlab.lip6.fr/lairez/RationalIntegrals.jl/-/blob/master/src/termorder.jl=#

@generated function insert(
    a::SVector{N, T},
    b::T
) where {N, T}
    quote
        SVector{$(N+1)}([b, $([:(a[$i]) for i=1:N]...)])
    end
end

@generated function append(
    a::SVector{N, T},
    b::T
) where {N, T}
    quote
        SVector{$(N+1)}([$([:(a[$i]) for i=1:N]...), b])
    end
end

abstract type MonomialOrder{N} end
abstract type ModuleOrder{N, MO} end

struct lex{N} <: MonomialOrder{N} end
lex(N) = lex{N}()
ordervector(::lex{N}, monomial::SVector{N, exp_t}) where N = monomial

struct degrevlex{N} <: MonomialOrder{N} end
degrevlex(N) = degrevlex{N}()
ordervector(::degrevlex{N}, monomial::SVector{N, exp_t}) where N = insert(deleteat(reverse(-monomial), N), sum(monomial))

# this is not ideal, we store the degree, but recompute it above
struct pot{N, MO} <: ModuleOrder{N, MO} end
pot(N, MO) = pot{N, MO}()
function ordervector(::pot{N, MO},
                     sig::signature_t{N, M}) where {MO, N, M}
    insert(ordervector(MO, sig.monomial), exp_t(sig.position))
end

struct top{N, MO} <: ModuleOrder{N, MO} end
top(N, MO) = top{N, MO}()
function ordervector(::top{N, MO},
                     sig::signature_t{N, M}) where {MO, N, M}
    append(ordervector(MO, sig.monomial), exp_t(sig.position))
end


@inline @generated function compare(a::SVector{N, T},
                            b::SVector{N, T}) where {N, T}
    quote
        $([:(a[$i] < b[$i] && return true ; a[$i] > b[$i] && return false) for i in 1:N]...)
        return false
    end
end

lt(t::MonomialOrder{N}, mon_1::SVector{N, exp_t}, mon_2::SVector{N, exp_t}) where N = compare(ordervector(t, mon_1), ordervector(t, mon_2))
lt(m::ModuleOrder{N, MO}, sig_1::signature_t{N, M}, sig_2::signature_t{N, M}) where {MO, N, M} = compare(ordervector(m, sig_1), ordervector(m, sig_2))
