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

function gbmodn(I::Singular.sideal{Singular.spoly{Singular.n_Zn}}; laopt = 2, timings = Dict())
  R = Singular.base_ring(I)::Singular.PolyRing{Singular.n_Zn}
  n = characteristic(R)
  global _non_inv
  local G
  try
    println("Trying to call GB.f4 with ", n)
    t = @elapsed G = GB.f4(I, laopt=laopt)
    if haskey(timings, :f4)
      timings[:f4] += t
    else
      timings[:f4] = t
    end
    return G
  catch e
    if !isa(e, ErrorException)
      rethrow(e)
    end
    a = _non_inv[]
    println("Splitting with $a")
    @assert !iszero(gcd(n, a))
    spl = _split(a, n)
    if length(spl) == 1
      println("Cannot split ... falling back to Singular.std for $n")
      return Singular.std(I)
    else
      # This is the maximal splitting that we can get
      # Alternatively, we could split only two at a time
      m = spl[1][1]^spl[1][2]
      Im = _reduce_mod_n(I, m)
      Gm = gbmodn(Im, laopt = laopt, timings = timings)
      _adjust_leading_coefficients(Gm)
      for i in 2:length(spl)
        k = spl[i][1]^spl[i][2]
        Ik = _reduce_mod_n(I, k)#define I over Z/k
        Gk = gbmodn(Ik, laopt = laopt, timings = timings)
        _adjust_leading_coefficients(Gk)
        println("RECOMBINING $(Int(characteristic(base_ring(Gm)))) ($(Singular.ngens(Gm)) elements) and $k ($(Singular.ngens(Gk)) elements)")
        t = @elapsed G = _recombine(Gm, Gk, timings = timings) # G is Gröbner basis over Z/m * k
        if haskey(timings, :recombine)
          timings[:recombine] += t
        else
          timings[:recombine] = t
        end
        Gm = G
        # m <- m * k
      end
      G.isGB  = true
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
    exps = convert(Array{Array{Int32,1},1},collect(Singular.exponent_vectors(f)))
    p = Singular.libSingular.p_Init(S.ptr)
    lp = p
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

function _recombine(Ga, Gb; timings = Dict())
  a = Int(characteristic(base_ring(Ga)::Singular.PolyRing{Singular.n_Zn}))
  b = Int(characteristic(base_ring(Gb)::Singular.PolyRing{Singular.n_Zn}))
  ua, vb = _idempotents(a, b)
  @assert ua + vb == 1
  @assert mod(ua, a) == 0
  @assert mod(vb, b) == 0
  ua = mod(ua, a * b)
  vb = mod(vb, a * b)

  R = base_ring(Ga)::Singular.PolyRing{Singular.n_Zn}
  n = a * b
  Sbase = Singular.N_ZnRing(a * b)
  S, X = Singular.PolynomialRing(Sbase, string.(gens(R)), ordering = R.ord)
  new_polys = elem_type(S)[]
  Gagenslifted = Vector{elem_type(S)}(undef, Singular.ngens(Ga))
  t = @elapsed for i in 1:Singular.ngens(Ga)
    Gagenslifted[i] = lift(S, Ga[i])
  end
  if haskey(timings, :lifting)
    timings[:lifting] += t
  else
    timings[:lifting] = t
  end
  Gbgenslifted = Vector{elem_type(S)}(undef, Singular.ngens(Gb))
  t = @elapsed for i in 1:Singular.ngens(Gb)
    Gbgenslifted[i] = lift(S, Gb[i])
  end
  timings[:lifting] += t
  #Gbgenslifted = [ lift(S, Gb[j]) for j in 1:Singular.ngens(Gb)]
  push!(Gagenslifted, S(a))
  push!(Gbgenslifted, S(b))

  lt = Vector{Tuple{Int, Vector{Int}}}()

  # Return true if lcx * x divides lcy * y
  _divides = function(lcx, x, lcy, y)
    # there is no divides(x, y) ... :(
    if gcd(lcx, lcy, n) != gcd(lcx, n)
      return false
    end

    for i in 1:length(x)
      if x[i] > y[i]
        return false
      end
    end
    return true
  end

  polys_to_keep = Vector{Tuple{Int, Int}}()

  _to_delete = Int[]

  _tmp = Vector{Int}(undef, Singular.nvars(S))

  @time for i in 1:length(Gagenslifted)
    for j in 1:length(Gbgenslifted)
      empty!(_to_delete)
      Gai = Gagenslifted[i]
      Gbj = Gbgenslifted[j]
      _exp = _lcm_mon_exp!(_tmp, Gai, Gbj)
      lcrecomb = Int(lc(Gai))*Int(lc(Gbj))

      redundant = false
      
      for (_lc, e) in lt
        if _divides(_lc, e, lcrecomb, _exp)
          redundant = true
          break
        end
      end

      if redundant
        continue
      end

      for k in 1:length(lt)
        _lc, e = lt[k]
        if _divides(lcrecomb, _exp, _lc, e)
          push!(_to_delete, k)
        end
      end

      if length(_to_delete) > 0
        deleteat!(lt, _to_delete)
        deleteat!(polys_to_keep, _to_delete)
      end

      push!(lt, (lcrecomb, copy(_exp)))
      push!(polys_to_keep, (i, j))
    end
  end

  for (i, j) in polys_to_keep
    Gai = Gagenslifted[i]
    Gbj = Gbgenslifted[j]
    lmlcm = _lcm_mon(Singular.lm(Gai), Singular.lm(Gbj))
    h =  ua * _div_mon(lmlcm, Singular.lm(Gbj)) * Singular.lc(Gai)::Singular.n_Zn * Gbj + vb * _div_mon(lmlcm, Singular.lm(Gai)) * Singular.lc(Gbj)::Singular.n_Zn * Gai
    if iszero(h)
      continue
    end
    push!(new_polys, h)
  end

  # The last element is zero
  #f = pop!(new_polys)
  #@assert iszero(f)
  @show length(new_polys)
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

# Computes the lcm of the leading monomials of f and g and stores it in res (just the exponent vector)
function _lcm_mon_exp!(res, f, g)
  ef = first(exponent_vectors(f))
  eg = first(exponent_vectors(g))
  for k in 1:length(ef)
    res[k] = max(ef[k], eg[k])
  end
  return res
end

function _are_gb_equal(G1, G2)
  for i in 1:Singular.ngens(G1)
    if Singular.reduce(G1[i], G2) != 0
      return false
    end
  end
  
  for i in 1:Singular.ngens(G2)
    if Singular.reduce(G2[i], G1) != 0
      return false
    end
  end

  return true
end
