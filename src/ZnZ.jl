function split(a, n)
  fb = Hecke.FactorBase(Hecke.coprime_base([a, n]))
  f = Hecke.factor(fb, n)
  return [ (p, e) for (p, e) in f]
end

function idempotents(a, b)
  g, e, f = gcdx(a, b)
  return e, f
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
  @show typeof(n)
  global _non_inv
  local G
  try
    println("Trying to call GB.f4 with ", I)
    G = GB.f4(I)
    return G
  catch e
    @show "I AM SPLITTING ..."
    @assert isa(e, ErrorException)
    a = _non_inv[]
    @show "Splitting with $a"
    @assert !iszero(gcd(n, a))
    spl = split(a, n)
    if length(spl) == 1
      error("Not implemented yet")
    else
      m = spl[1][1]^spl[2][2]
      Im = _reduce_mod_n(deepcopy(I), m)
      Gm = gbmodn(Im)
      for i in 2:length(spl)
        k = spl[i][1]^spl[i][2]
        Ik = _reduce_mod_n(deepcopy(I), k)#define I over Z/k
        Gk = gbmodn(Ik)
        G = recombine(Gm, Gk) # G is Gröbner basis over Z/m * k
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
    a = Int(deepcopy(lc(f)))
    u = _unit(a, n)
    push!(new_polys, deepcopy(u * f))
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
      z += Sbase(Int(deepcopy(coe))) * mon
    end
    push!(new_polys, z)
  end
  return Ideal(S, new_polys)
end

function _recombine(Gp, Gq)
  p = Int(characteristic(base_ring(Gp)))
  q = Int(characteristic(base_ring(Gq)))
  # Just to test
  return Gp
end
