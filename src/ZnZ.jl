# Stupid workaround
function Base.Int(x::Singular.n_Zn)
  return parse(Int, string(x))
end

function _split(a, n)
  fb = Hecke.FactorBase(Hecke.coprime_base([a, n]))
  f = Hecke.factor(fb, n)
  return [ (p, e) for (p, e) in f]
end

function _idempotents(a, b)
  g, e, f = gcdx(a, b)
  return e * a, f * b
end

function _stab(a, b, N)
  g = gcd(a, b)
  c = gcd(g, N)
  s, t = ppio(div(N, c), div(a, c))
  return t
end

function _unit(a, N)
  g, s = gcdx(a, N)
  if isone(g)
    @assert mod(N, s) == 0
    return s
  else
    l = div(N, g)
    d = _stab(s, l, N)
    # OK this is a bit silly, but overflows are bad
    r = mod(fmpz(s) + fmpz(d) * fmpz(l), N)
    @assert gcd(N, r) == 1
    @assert ppio(r * a, N)[1] == ppio(a, N)[1]
    @assert mod(N, mod(r * a, N)) == 0
    return r
  end
end

function gbmodn(I)
  R = I.base_ring
  n = characteristic(R)
  global _non_inv
  local G
  try
    println("Trying to call GB.f4 with ", I)
    G = GB.f4(I)
    println("Result is $G")
    return G
  catch e
    @show "I AM SPLITTING ..."
    if !isa(e, ErrorException)
      rethrow(e)
    end
    a = _non_inv[]
    @show "Splitting with $a"
    @assert !iszero(gcd(n, a))
    spl = _split(a, n)
    if length(spl) == 1
      error("Not implemented yet")
    else
      # This is the maximal splitting that we can get
      # Alternatively, we could split only two at a time
      m = spl[1][1]^spl[2][2]
      Im = _reduce_mod_n(I, m)
      Gm = gbmodn(Im)
      _adjust_leading_coefficients(Gm)
      for i in 2:length(spl)
        k = spl[i][1]^spl[i][2]
        Ik = _reduce_mod_n(I, k)#define I over Z/k
        Gk = gbmodn(Ik)
        _adjust_leading_coefficients(Gk)
        println("RECOMBINING $(Int(characteristic(base_ring(Gm)))) ($(Singular.ngens(Gm)) elements) and $k ($(Singular.ngens(Gk)) elements)")
        G = _recombine(Gm, Gk) # G is Gröbner basis over Z/m * k
        Gm = G
        # m <- m * k
      end
      return G
    end
  end
end

function _adjust_leading_coefficients(G)
  n = Int(characteristic(base_ring(G)))
  R = base_ring(G)
  new_polys = elem_type(R)[]
  for i in 1:Singular.ngens(G)
    f = G[i]
    a = Int(lc(f))
    u = _unit(a, n)
    push!(new_polys, u * f)
  end
  return Ideal(R, new_polys)
end

function _reduce_mod_n(G, n)
  R = base_ring(G)
  m = characteristic(R)
  @assert mod(m, n) == 0
  Sbase = Singular.N_ZnRing(n)
  S, X = Singular.PolynomialRing(Sbase, string.(gens(R)), ordering = R.ord)
  new_polys = elem_type(S)[]
  for i in 1:Singular.ngens(G)
    z = zero(S)
    # There must be an easier way?!
    for (coe, exp) in zip(collect(coeffs(G[i])), collect(exponent_vectors(G[i])))
      mon = one(S)
      for j in 1:length(exp)
        mon *= X[j]^exp[j]
      end
      z += Sbase(Int(coe)) * mon
    end
    push!(new_polys, z)
  end
  return Ideal(S, new_polys)
end

function lift(S, f)
    cfs = collect(Singular.coeffs(f))
    exps =
convert(Array{Array{Int32,1},1},collect(Singular.exponent_vectors(f)))
    p     = Singular.libSingular.p_Init(S.ptr)
    lp  = p
    for j = 2:Singular.length(f)
        pterm = Singular.libSingular.p_Init(S.ptr)
        Singular.libSingular.SetpNext(lp, pterm)
        lp  = pterm
    end
    lp  = p
    for j in 1:Singular.length(f)
        Singular.libSingular.pSetCoeff0(lp, Clong(cfs[j]), S.ptr)
        Singular.libSingular.p_SetExpV(lp, prepend!(exps[j],Int32(0)), S.ptr)
        lp  = Singular.libSingular.pNext(lp)
    end
    return S(p)
end

function lift_old(S, f)
  z = zero(S)
  X = Singular.gens(S)
  # There must be an easier way?!
  for (coe, exp) in zip(coeffs(f), exponent_vectors(f))
    mon = one(S)
    for j in 1:length(exp)
      mon *= X[j]^exp[j]
    end
    z += S(Int(coe)) * mon
  end
  return z
end

function _recombine(Ga, Gb)
  a = Int(characteristic(base_ring(Ga)))
  b = Int(characteristic(base_ring(Gb)))
  ua, vb = _idempotents(a, b)
  @assert ua + vb == 1
  @assert mod(ua, a) == 0
  @assert mod(vb, b) == 0
  ua = mod(ua, a * b)
  vb = mod(vb, a * b)
  @show ua, vb

  R = base_ring(Ga)
  n = a * b
  Sbase = Singular.N_ZnRing(a * b)
  S, X = Singular.PolynomialRing(Sbase, string.(gens(R)), ordering = R.ord)
  new_polys = elem_type(S)[]
  Gagenslifted = [ lift(S, Ga[i]) for i in 1:Singular.ngens(Ga)]
  Gbgenslifted = [ lift(S, Gb[j]) for j in 1:Singular.ngens(Gb)]
  push!(Gagenslifted, S(a))
  push!(Gbgenslifted, S(b))

  for i in 1:length(Gagenslifted)
    for j in 1:length(Gbgenslifted)
      Gai = Gagenslifted[i]
      Gbj = Gbgenslifted[j]
      lmlcm = _lcm_mon(Singular.lm(Gai), Singular.lm(Gbj))
      push!(new_polys, ua * _div_mon(lmlcm, Singular.lm(Gbj)) * Singular.lc(Gai) * Gbj +
                       vb * _div_mon(lmlcm, Singular.lm(Gai)) * Singular.lc(Gbj) * Gai)
    end
  end
  # The last element is zero
  f = pop!(new_polys)
  @assert iszero(f)
  return Ideal(S, new_polys)
end

# Why do I have to do this?
function _div_mon(f, g)
  x = Singular.gens(parent(f))
  ef = first(exponent_vectors(f))
  eg = first(exponent_vectors(g))
  z = one(parent(f))
  for i in 1:length(ef)
    @assert ef >= eg
    z *= x[i]^(ef[i] - eg[i])
  end
  return z
end

# Cannot do lcm over Z/nZ using Singular?
function _lcm_mon(f, g)
  x = Singular.gens(parent(f))
  ef = first(exponent_vectors(f))
  eg = first(exponent_vectors(g))
  z = one(parent(f))
  for i in 1:length(ef)
    z *= x[i]^max(ef[i], eg[i])
  end
  return z
end
