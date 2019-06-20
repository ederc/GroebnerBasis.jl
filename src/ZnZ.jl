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
    p = Singular.libSingular.p_Copy(f.ptr, S.ptr)
    return S(p)
end

function lift_old(S, f)
  z = zero(S)
  X = Singular.gens(S)
  # There must be an easier way?!
  for (coe, exp) in zip(coeffs(f), exponent_vectors(f))
    mon = one(S)
    mon = prod(X.^exp)
    # for j in 1:length(exp)
    #   mon *= X[j]^exp[j]
    # end
    z += S(Int(coe)) * mon
  end
  return z
end

# Return true if lcx * x divides lcy * y
_divides = function(lcx, x, lcy, y, n)
  # there is no divides(x, y) ... :(
  # OLD: lcrecomb = mod(lcrecomb, n)
  # lcrecomb is the product of the two leading coefficients,
  # thus lcrecomb is smaller than a*b = n, so usual mod should
  # be enough for checking divisibility
  if mod(lcy,lcx) != 0
    return false
  end

  for i in 1:length(x)
    if x[i] > y[i]
      return false
    end
  end
  return true
end

# Return true if lcx * x divides lcy * y
function _divides_2(lcx, sx, x, lcy, sy, y, nv)
  # there is no divides(x, y) ... :(
  # OLD: lcrecomb = mod(lcrecomb, n)
  # lcrecomb is the product of the two leading coefficients,
  # thus lcrecomb is smaller than a*b = n, so usual mod should
  # be enough for checking divisibility

  if mod(lcy,lcx) != 0
    return false
  end
  if sx & ~sy != 0
    return false
  end
  for i in 1:2:nv-1
    if x[i] > y[i] || x[i+1] > y[i+1]
      return false
    end
  end
  if x[nv] > y[nv]
    return false
  end
  return true
end

function short_exp_vector(ev::Vector{Int}, nvars::Int)
  _se = Int32(0)
  bound = min(32, nvars)
    k = 1
    if bound <= 16
      for i in 1:bound
        if (ev[i] > 0)
          _se = _se | 1 << k
        end
        k += 1
        if (ev[i] > 1)
          _se = _se | 1 << k
        end
        k += 1
      end
    else
      for i in 1:bound
        if (ev[i] > 0)
          _se = _se | 1 << k
        end
        k += 1
      end
    end
  return _se
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
  nv  = Singular.nvars(S)
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

  ltp = Vector{Tuple{Tuple{Int, Int},Int, Int32, Vector{Int}}}()

  _tmp = Vector{Int}(undef, Singular.nvars(S))

  # bit array to track which of the Gbjs are not already multiples of elements
  # in ltp. if so, we do not need to take care of them. we have to store this
  # information separately since the Gbjs are the inner loop, for the Gais in the
  # outer loop we can directly continue with the next Gai in Gagenslifted without
  # touching the corresponding Gai again. 
  goodj = trues(length(Gbgenslifted))

  i = 1
  @label label2
  while i <= length(Gagenslifted)
    Gai = Gagenslifted[i]
    # get divisibility data from Gai 
    _ei   = Singular.lead_exponent(Gai)
    _sei  = short_exp_vector(_ei, nv)
    _lci  = Int(Singular.lc(Gai))
    j = 1
    @label label1
    while j  <= length(Gbgenslifted)
      if goodj[j] == false
        j += 1
        continue
      end
      Gbj = Gbgenslifted[j]
      # get divisibility data from Gai 
      _ej   = Singular.lead_exponent(Gbj)
      _sej  = short_exp_vector(_ej, nv)
      _lcj  = Int(Singular.lc(Gbj))

      # get lcm exponent
      _exp = max.(_ei, _ej)
      _sen  = short_exp_vector(_exp, nv)
      
      # get combined lc
      lcrecomb = _lci * _lcj

      for (p, _lc, _se, e) in ltp
        if _divides_2(_lc, _se, e, lcrecomb, _sen, _exp, nv)
          if _divides_2(_lc, _se, e, _lci, _sei, _ei, nv)
            i += 1
            @goto label2
          end
          if _divides_2(_lc, _se, e, _lcj, _sej, _ej, nv)
            goodj[j]  = false
          end
          j += 1
          @goto label1
        end
      end

      k = 1
      while k <= length(ltp)
        p, _lc, _se, e = ltp[k]
        if _divides_2(lcrecomb, _sen, _exp, _lc, _se, e, nv)
          deleteat!(ltp, k)
          continue
        end
        k += 1
      end

      push!(ltp, ((i,j), lcrecomb, _sen, copy(_exp)))
      j += 1
    end
    i += 1
  end

  resize!(new_polys, length(ltp))
  k = 1
  X = Singular.gens(S)
  t = @elapsed for ((i, j), _lc, _se, e) in ltp
    Gai = Gagenslifted[i]
    Gbj = Gbgenslifted[j]
    lmlcm = prod(X.^e)
    h =  ua * _div_mon(lmlcm, Singular.lm(Gbj)) * Singular.lc(Gai)::Singular.n_Zn * Gbj + vb * _div_mon(lmlcm, Singular.lm(Gai)) * Singular.lc(Gbj)::Singular.n_Zn * Gai
    new_polys[k] = h
    k += 1
  end
  if haskey(timings, :new_polys)
    timings[:new_polys] += t
  else
    timings[:new_polys] = t
  end

  # The last element is zero
  f = pop!(new_polys)
  #@assert iszero(f)
  @show length(new_polys)
  return Ideal(S, new_polys)
end

# Why do I have to do this?
function _div_mon(f, g)
  x = Singular.gens(parent(f))
  ef = lead_exponent(f)
  eg = lead_exponent(g)
  z = one(parent(f))
  @assert ef >= eg
  efg = ef-eg
  z = prod(x.^efg)
  return z
end

# Cannot do lcm over Z/nZ using Singular?
function _lcm_mon(f, g)
  x = Singular.gens(parent(f))
  ef = lead_exponent(f)
  eg = lead_exponent(g)
  z = one(parent(f))
  m = max.(ef,eg)
  z = prod(x.^m)
  return z
end

# Computes the lcm of the leading monomials of f and g and stores it in res (just the exponent vector)
function _lcm_mon_exp!(res, f, g)
  ef = lead_exponent(f)
  eg = lead_exponent(g)
  res = max.(ef,eg)
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
