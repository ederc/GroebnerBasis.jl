# we take a Singular ideal and extract the following data:
# an int array lengths storing the lengths of each generator
# an int array cfs storing the coefficients of each generator
# an int array exps storing the exponent vectors of each generator
function convert_ff_singular_ideal_to_array(
        id::Singular.sideal,
        nvars::Int,
        ngens::Int
        )
    nterms  = 0
    lens = Array{Int32,1}(undef, ngens)
    for i = 1:ngens
        lens[i] =   Singular.length(id[i])
        nterms  +=  lens[i]
    end
    cfs   = Array{Int32,1}(undef, nterms)
    exps  = Array{Int32,1}(undef, nvars*nterms)
    cc = 1 # coefficient counter
    ec = 0 # exponent vector counter
    for i = 1:Singular.ngens(id)
        for c in Singular.coefficients(id[i])
            cfs[cc] = Base.Int(c)
            cc += 1
        end
        for e in Singular.exponent_vectors(id[i])
            for j = 1:nvars
                exps[nvars*ec+j]  =  Base.Int(e[j])
            end
            ec +=  1
        end
    end
    lens, cfs, exps
end

function convert_ff_singular_ideal_to_signature_basis(
    id::Singular.sideal,
    basis::basis_t{N, M}
) where {N, M}
    one = @SVector zeros(exp_t, N)
    for i=1:M
        basis.numberTerms[i]  = Singular.length(id[i])
        basis.signatures[i]   = signature_t{N, M}(one, deg_t(0), pos_t(i))
        basis.coefficients[i] = Array{cf_t}(undef, basis.numberTerms[i])
        basis.monomials[i]    = Array{SVector{N, exp_t}}(undef, basis.numberTerms[i])
        cc  = 1
        ec  = 1
        for c in Singular.coefficients(id[i])
            basis.coefficients[i][cc] = cf_t(Int(c))
            cc += 1
        end
        for e in Singular.exponent_vectors(id[i])
            basis.monomials[i][ec]    = SVector{N, exp_t}(e)
            ec +=  1
        end
    end
end

function convert_signature_basis_to_ff_singular_ideal(
    id::Singular.sideal,
    basis::basis_t{N, M},
    stat::stat_t
) where {N, M}
    R = id.base_ring
    gens = []
    for i in stat.start:stat.numberGenerators
        C = Singular.MPolyBuildCtx(R)
        for (j, m) in enumerate(basis.monomials[i])
            n = Array([Int64(e) for e in m])
            Singular.push_term!(C, R.base_ring(basis.coefficients[i][j]), n)
        end
        push!(gens, Singular.finish(C))
    end
    G = Singular.Ideal(R, gens...)
    G.isGB = true
    G
end

function convert_qq_singular_ideal_to_array(
        id::Singular.sideal,
        nvars::Int,
        ngens::Int
        )
    nterms  = 0
    lens = Array{Int32,1}(undef, ngens)
    for i = 1:ngens
        lens[i] =   Singular.length(id[i])
        nterms  +=  lens[i]
    end
    cfs   = Array{BigInt,1}(undef, 2*nterms)
    exps  = Array{Int32,1}(undef, nvars*nterms)
    cc = 1 # coefficient counter
    ec = 0 # exponent vector counter
    for i = 1:Singular.ngens(id)
        for c in Singular.coefficients(id[i])
            cfs[cc] = Singular.libSingular.n_GetMPZ(numerator(c).ptr, Singular.ZZ.ptr)
            cc += 1
            cfs[cc] = Singular.libSingular.n_GetMPZ(denominator(c).ptr, Singular.ZZ.ptr)
            cc += 1
        end
        for e in Singular.exponent_vectors(id[i])
            for j = 1:nvars
                exps[nvars*ec+j]  =  Base.Int(e[j])
            end
            ec +=  1
        end
    end
    lens, cfs, exps
end

# we know that the terms are already sorted and they are all different
# coming from GroebnerBasis' F4 computation, so we do not need p_Add_q for
# the terms, but we can directly set the next pointers of the polynomials
function convert_ff_gb_array_to_singular_ideal(
        bld::Int32,
        blen::Array{Int32,1},
        bexp::Array{Int32,1},
        bcf::Array{Int32,1},
        R::Singular.PolyRing
        )
    ngens = bld

    nvars = Singular.nvars(R)
    basis = Singular.Ideal(R, ) # empty ideal
    # first entry in exponent vector is module component => nvars+1
    exp   = zeros(Cint, nvars+1)

    list  = Singular.elem_type(R)[]
    # we generate the singular polynomials low level in order
    # to avoid overhead due to many exponent operations etc.
    j   = ngens + 1 + 1
    len = 1
    for i = 1:ngens
        # do the first term
        p = Singular.libSingular.p_Init(R.ptr)
        Singular.libSingular.pSetCoeff0(p, Clong(bcf[len]), R.ptr)
        for k = 1:nvars
            exp[k+1]  = bexp[(len-1) * nvars + k]
        end
        Singular.libSingular.p_SetExpV(p, exp, R.ptr)
        lp  = p
        for j = 2:blen[i]
          pterm = Singular.libSingular.p_Init(R.ptr)
          Singular.libSingular.pSetCoeff0(pterm, Clong(bcf[len+j-1]), R.ptr)
          for k = 1:nvars
              exp[k+1]  = bexp[(len+j-1-1) * nvars + k]
          end
          Singular.libSingular.p_SetExpV(pterm, exp, R.ptr)
          Singular.libSingular.SetpNext(lp, pterm)
          lp  = pterm
        end
        push!(list, R(p))
        len += blen[i]
    end
    return Singular.Ideal(R, list)
end

function convert_qq_gb_array_to_singular_ideal(
        bld::Int32,
        blen::Array{Int32,1},
        bexp::Array{Int32,1},
        bcf::Ptr{T} where {T <: Signed},
        R::Singular.PolyRing
        )
    ngens = bld

    nvars = Singular.nvars(R)
    basis = Singular.Ideal(R, ) # empty ideal
    # first entry in exponent vector is module component => nvars+1
    exp   = zeros(Cint, nvars+1)

    list  = Singular.elem_type(R)[]
    # we generate the singular polynomials low level in order
    # to avoid overhead due to many exponent operations etc.
    j   = ngens + 1 + 1
    len = 1
    for i = 1:ngens
        # do the first term
        p = Singular.libSingular.p_Init(R.ptr)
        Singular.libSingular.p_SetCoeff0(p,
                Singular.libSingular.n_InitMPZ(BigInt(unsafe_load(bcf, len)),
                    Singular.QQ.ptr), R.ptr)
        for k = 1:nvars
            exp[k+1]  = bexp[(len-1) * nvars + k]
        end
        Singular.libSingular.p_SetExpV(p, exp, R.ptr)
        lp  = p
        for j = 2:blen[i]
          pterm = Singular.libSingular.p_Init(R.ptr)
        Singular.libSingular.p_SetCoeff0(pterm,
                Singular.libSingular.n_InitMPZ(BigInt(unsafe_load(bcf, len+j-1)),
                    Singular.QQ.ptr), R.ptr)
          for k = 1:nvars
              exp[k+1]  = bexp[(len+j-1-1) * nvars + k]
          end
          Singular.libSingular.p_SetExpV(pterm, exp, R.ptr)
          Singular.libSingular.SetpNext(lp, pterm)
          lp  = pterm
        end
        push!(list, R(p))
        len += blen[i]
    end
    return Singular.Ideal(R, list)
end
function test()
    lib = Libdl.dlopen(libgb)
    sym = Libdl.dlsym(lib, :min_example)
    ccall(sym, Nothing, ())
end

