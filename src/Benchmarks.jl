#=========================
CYCLIC EXAMPLES -- affine
=========================#
function cyclic_4(
    char::Int
    )
  n = 4
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4,
      x1*x2+x2*x3+x1*x4+x3*x4,
      x1*x2*x3+x1*x2*x4+x1*x3*x4+x2*x3*x4,
      x1*x2*x3*x4-1
    )
  R, id
end

function cyclic_5(
    char::Int
    )
  n = 5
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5,
      x1*x2+x2*x3+x3*x4+x1*x5+x4*x5,
      x1*x2*x3+x2*x3*x4+x1*x2*x5+x1*x4*x5+x3*x4*x5,
      x1*x2*x3*x4+x1*x2*x3*x5+x1*x2*x4*x5+x1*x3*x4*x5+x2*x3*x4*x5,
      x1*x2*x3*x4*x5-1
    )
  R, id
end

function cyclic_6(
    char::Int
    )
  n = 6
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5+x6,
      x1*x2+x2*x3+x3*x4+x4*x5+x1*x6+x5*x6,
      x1*x2*x3+x2*x3*x4+x3*x4*x5+x1*x2*x6+x1*x5*x6+x4*x5*x6,
      x1*x2*x3*x4+x2*x3*x4*x5+x1*x2*x3*x6+x1*x2*x5*x6+x1*x4*x5*x6+x3*x4*x5*x6,
      x1*x2*x3*x4*x5+x1*x2*x3*x4*x6+x1*x2*x3*x5*x6+x1*x2*x4*x5*x6+x1*x3*x4*x5*x6+x2*x3*x4*x5*x6,
      x1*x2*x3*x4*x5*x6-1
    )
  R, id
end

function cyclic_7(
    char::Int
    )
  n = 7
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5+x6+x7,
      x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x1*x7+x6*x7,
      x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x1*x2*x7+x1*x6*x7+x5*x6*x7,
      x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x1*x2*x3*x7+x1*x2*x6*x7+x1*x5*x6*x7+x4*x5*x6*x7,
      x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x1*x2*x3*x4*x7+x1*x2*x3*x6*x7+x1*x2*x5*x6*x7+x1*x4*x5*x6*x7+x3*x4*x5*x6*x7,
      x1*x2*x3*x4*x5*x6+x1*x2*x3*x4*x5*x7+x1*x2*x3*x4*x6*x7+x1*x2*x3*x5*x6*x7+x1*x2*x4*x5*x6*x7+x1*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7,
      x1*x2*x3*x4*x5*x6*x7-1
    )
  R, id
end

function cyclic_8(
    char::Int
    )
  n = 8
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5+x6+x7+x8, x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x1*x8+x7*x8,
      x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x1*x2*x8+x1*x7*x8+x6*x7*x8,
      x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x1*x2*x3*x8+x1*x2*x7*x8+x1*x6*x7*x8+x5*x6*x7*x8,
      x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x1*x2*x3*x4*x8+x1*x2*x3*x7*x8+x1*x2*x6*x7*x8+x1*x5*x6*x7*x8+x4*x5*x6*x7*x8,
      x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x1*x2*x3*x4*x5*x8+x1*x2*x3*x4*x7*x8+x1*x2*x3*x6*x7*x8+x1*x2*x5*x6*x7*x8+x1*x4*x5*x6*x7*x8+x3*x4*x5*x6*x7*x8,
      x1*x2*x3*x4*x5*x6*x7+x1*x2*x3*x4*x5*x6*x8+x1*x2*x3*x4*x5*x7*x8+x1*x2*x3*x4*x6*x7*x8+x1*x2*x3*x5*x6*x7*x8+x1*x2*x4*x5*x6*x7*x8+x1*x3*x4*x5*x6*x7*x8+x2*x3*x4*x5*x6*x7*x8,
      x1*x2*x3*x4*x5*x6*x7*x8-1
      )
  R, id
end

function cyclic_9(
    char::Int
    )
  n = 9
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5+x6+x7+x8+x9,
      x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x7*x8+x1*x9+x8*x9,
      x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x6*x7*x8+x1*x2*x9+x1*x8*x9+x7*x8*x9,
      x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x5*x6*x7*x8+x1*x2*x3*x9+x1*x2*x8*x9+x1*x7*x8*x9+x6*x7*x8*x9,
      x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x4*x5*x6*x7*x8+x1*x2*x3*x4*x9+x1*x2*x3*x8*x9+x1*x2*x7*x8*x9+x1*x6*x7*x8*x9+x5*x6*x7*x8*x9,
      x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x3*x4*x5*x6*x7*x8+x1*x2*x3*x4*x5*x9+x1*x2*x3*x4*x8*x9+x1*x2*x3*x7*x8*x9+x1*x2*x6*x7*x8*x9+x1*x5*x6*x7*x8*x9+x4*x5*x6*x7*x8*x9,
      x1*x2*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7*x8+x1*x2*x3*x4*x5*x6*x9+x1*x2*x3*x4*x5*x8*x9+x1*x2*x3*x4*x7*x8*x9+x1*x2*x3*x6*x7*x8*x9+x1*x2*x5*x6*x7*x8*x9+x1*x4*x5*x6*x7*x8*x9+x3*x4*x5*x6*x7*x8*x9,
      x1*x2*x3*x4*x5*x6*x7*x8+x1*x2*x3*x4*x5*x6*x7*x9+x1*x2*x3*x4*x5*x6*x8*x9+x1*x2*x3*x4*x5*x7*x8*x9+x1*x2*x3*x4*x6*x7*x8*x9+x1*x2*x3*x5*x6*x7*x8*x9+x1*x2*x4*x5*x6*x7*x8*x9+x1*x3*x4*x5*x6*x7*x8*x9+x2*x3*x4*x5*x6*x7*x8*x9,
      x1*x2*x3*x4*x5*x6*x7*x8*x9-1
      )
  R, id
end

function cyclic_10(
    char::Int
    )
  n = 10
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5+x6+x7+x8+x9+x10,
      x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x7*x8+x8*x9+x1*x10+x9*x10,
      x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x6*x7*x8+x7*x8*x9+x1*x2*x10+x1*x9*x10+x8*x9*x10,
      x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x5*x6*x7*x8+x6*x7*x8*x9+x1*x2*x3*x10+x1*x2*x9*x10+x1*x8*x9*x10+x7*x8*x9*x10,
      x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x4*x5*x6*x7*x8+x5*x6*x7*x8*x9+x1*x2*x3*x4*x10+x1*x2*x3*x9*x10+x1*x2*x8*x9*x10+x1*x7*x8*x9*x10+x6*x7*x8*x9*x10,
      x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x3*x4*x5*x6*x7*x8+x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x10+x1*x2*x3*x4*x9*x10+x1*x2*x3*x8*x9*x10+x1*x2*x7*x8*x9*x10+x1*x6*x7*x8*x9*x10+x5*x6*x7*x8*x9*x10,
      x1*x2*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7*x8+x3*x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x6*x10+x1*x2*x3*x4*x5*x9*x10+x1*x2*x3*x4*x8*x9*x10+x1*x2*x3*x7*x8*x9*x10+x1*x2*x6*x7*x8*x9*x10+x1*x5*x6*x7*x8*x9*x10+x4*x5*x6*x7*x8*x9*x10,
      x1*x2*x3*x4*x5*x6*x7*x8+x2*x3*x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x6*x7*x10+x1*x2*x3*x4*x5*x6*x9*x10+x1*x2*x3*x4*x5*x8*x9*x10+x1*x2*x3*x4*x7*x8*x9*x10+x1*x2*x3*x6*x7*x8*x9*x10+x1*x2*x5*x6*x7*x8*x9*x10+x1*x4*x5*x6*x7*x8*x9*x10+x3*x4*x5*x6*x7*x8*x9*x10,
      x1*x2*x3*x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x6*x7*x8*x10+x1*x2*x3*x4*x5*x6*x7*x9*x10+x1*x2*x3*x4*x5*x6*x8*x9*x10+x1*x2*x3*x4*x5*x7*x8*x9*x10+x1*x2*x3*x4*x6*x7*x8*x9*x10+x1*x2*x3*x5*x6*x7*x8*x9*x10+x1*x2*x4*x5*x6*x7*x8*x9*x10+x1*x3*x4*x5*x6*x7*x8*x9*x10+x2*x3*x4*x5*x6*x7*x8*x9*x10,
      x1*x2*x3*x4*x5*x6*x7*x8*x9*x10-1
      )
  R, id
end

function cyclic_11(
    char::Int
    )
  n = 11
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11,
      x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x7*x8+x8*x9+x9*x10+x1*x11+x10*x11,
      x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x6*x7*x8+x7*x8*x9+x8*x9*x10+x1*x2*x11+x1*x10*x11+x9*x10*x11,
      x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x5*x6*x7*x8+x6*x7*x8*x9+x7*x8*x9*x10+x1*x2*x3*x11+x1*x2*x10*x11+x1*x9*x10*x11+x8*x9*x10*x11,
      x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x4*x5*x6*x7*x8+x5*x6*x7*x8*x9+x6*x7*x8*x9*x10+x1*x2*x3*x4*x11+x1*x2*x3*x10*x11+x1*x2*x9*x10*x11+x1*x8*x9*x10*x11+x7*x8*x9*x10*x11,
      x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x3*x4*x5*x6*x7*x8+x4*x5*x6*x7*x8*x9+x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x11+x1*x2*x3*x4*x10*x11+x1*x2*x3*x9*x10*x11+x1*x2*x8*x9*x10*x11+x1*x7*x8*x9*x10*x11+x6*x7*x8*x9*x10*x11,
      x1*x2*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7*x8+x3*x4*x5*x6*x7*x8*x9+x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x11+x1*x2*x3*x4*x5*x10*x11+x1*x2*x3*x4*x9*x10*x11+x1*x2*x3*x8*x9*x10*x11+x1*x2*x7*x8*x9*x10*x11+x1*x6*x7*x8*x9*x10*x11+x5*x6*x7*x8*x9*x10*x11,
      x1*x2*x3*x4*x5*x6*x7*x8+x2*x3*x4*x5*x6*x7*x8*x9+x3*x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x7*x11+x1*x2*x3*x4*x5*x6*x10*x11+x1*x2*x3*x4*x5*x9*x10*x11+x1*x2*x3*x4*x8*x9*x10*x11+x1*x2*x3*x7*x8*x9*x10*x11+x1*x2*x6*x7*x8*x9*x10*x11+x1*x5*x6*x7*x8*x9*x10*x11+x4*x5*x6*x7*x8*x9*x10*x11,
      x1*x2*x3*x4*x5*x6*x7*x8*x9+x2*x3*x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x7*x8*x11+x1*x2*x3*x4*x5*x6*x7*x10*x11+x1*x2*x3*x4*x5*x6*x9*x10*x11+x1*x2*x3*x4*x5*x8*x9*x10*x11+x1*x2*x3*x4*x7*x8*x9*x10*x11+x1*x2*x3*x6*x7*x8*x9*x10*x11+x1*x2*x5*x6*x7*x8*x9*x10*x11+x1*x4*x5*x6*x7*x8*x9*x10*x11+x3*x4*x5*x6*x7*x8*x9*x10*x11,
      x1*x2*x3*x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x7*x8*x9*x11+x1*x2*x3*x4*x5*x6*x7*x8*x10*x11+x1*x2*x3*x4*x5*x6*x7*x9*x10*x11+x1*x2*x3*x4*x5*x6*x8*x9*x10*x11+x1*x2*x3*x4*x5*x7*x8*x9*x10*x11+x1*x2*x3*x4*x6*x7*x8*x9*x10*x11+x1*x2*x3*x5*x6*x7*x8*x9*x10*x11+x1*x2*x4*x5*x6*x7*x8*x9*x10*x11+x1*x3*x4*x5*x6*x7*x8*x9*x10*x11+x2*x3*x4*x5*x6*x7*x8*x9*x10*x11,
      x1*x2*x3*x4*x5*x6*x7*x8*x9*x10*x11-1
      )
  R, id
end
#=========================
KATSURA EXAMPLES -- affine
=========================#
function katsura_10(
    char::Int
    )
  n = 10
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
    x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10-1,
    x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2-x1,
    2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10-x2,
    x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10-x3,
    2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10-x4,
    x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10-x5,
    2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10-x6,
    x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10-x7,
    2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10-x8,
    x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10-x9
      )
  R, id
end

function katsura_11(
    char::Int
    )
  n = 11
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11-1,
      x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2-x1,
      2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11-x2,
      x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11-x3,
      2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11-x4,
      x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11-x5,
      2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11-x6,
      x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11-x7,
      2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11-x8,
      x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11-x9,
      2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11-x10
      )
  R, id
end

function katsura_12(
    char::Int
    )
  n = 12
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12-1,
      x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2-x1,
      2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12-x2,
      x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12-x3,
      2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12-x4,
      x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12-x5,
      2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12-x6,
      x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12-x7,
      2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12-x8,
      x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12-x9,
      2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12-x10,
      x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12-x11
      )
  R, id
end

function katsura_13(
    char::Int
    )
  n = 13
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13-1,
      x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2-x1,
      2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13-x2,
      x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13-x3,
      2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13-x4,
      x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13-x5,
      2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13-x6,
      x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13-x7,
      2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13-x8,
      x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13-x9,
      2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13-x10,
      x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13-x11,
      2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13-x12
      )
  R, id
end

function katsura_14(
    char::Int
    )
  n = 14
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14-1,
      x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2-x1,
      2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14-x2,
      x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14-x3,
      2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14-x4,
      x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14-x5,
      2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14-x6,
      x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14-x7,
      2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14-x8,
      x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14-x9,
      2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14-x10,
      x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14-x11,
      2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14-x12,
      x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14-x13
      )
  R, id
end

function katsura_15(
    char::Int
    )
  n = 15
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14+2*x15-1,
      x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2+2*x15^2-x1,
      2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14+2*x14*x15-x2,
      x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14+2*x13*x15-x3,
      2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14+2*x12*x15-x4,
      x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14+2*x11*x15-x5,
      2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14+2*x10*x15-x6,
      x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14+2*x9*x15-x7,
      2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14+2*x8*x15-x8,
      x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14+2*x7*x15-x9,
      2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14+2*x6*x15-x10,
      x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14+2*x5*x15-x11,
      2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14+2*x4*x15-x12,
      x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14+2*x3*x15-x13,
      2*x7*x8+2*x6*x9+2*x5*x10+2*x4*x11+2*x3*x12+2*x2*x13+2*x1*x14+2*x2*x15-x14
      )
  R, id
end

function mayr_42(
    char::Int
    )
  n = 51
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      -x10*x51+x4*x49,
      x3*x48-x51*x9,
      x2*x47-x51*x8,
      x1*x46-x51*x7,
      x4*x44-x49*x9,
      x3*x43-x48*x8,
      x2*x42-x47*x7,
      x1*x41-x46*x6,
      x39*x4-x49*x9,
      x3*x38-x48*x8,
      x2*x37-x47*x7,
      x1*x36-x46*x6,
      x34*x9-x49*x9,
      x34*x4-x5*x51,
      x33*x8-x48*x8,
      x3*x33-x4*x51,
      x32*x7-x47*x7,
      x2*x32-x3*x51,
      x31*x6-x46*x6,
      x1*x31-x2*x51,
      x14*x39*x9-x29*x44*x9,
      x13*x38*x8-x28*x43*x8,
      x12*x37*x7-x27*x42*x7,
      x11*x36*x6-x26*x41*x6,
      x26^2*x46*x6-x51^3*x7,
      x11^2*x46*x6-x2*x51^3,
      x21^2*x41*x6-x46*x51^2*x6,
      x16^2*x36*x6-x46*x51^2*x6,
      x24*x30*x39*x50*x9-x29*x44*x50*x51*x9,
      x23*x29*x38*x49*x8-x28*x43*x49*x51*x8,
      x22*x28*x37*x48*x7-x27*x42*x48*x51*x7,
      x21*x27*x36*x47*x6-x26*x41*x47*x51*x6,
      x24*x25*x39*x45*x9-x29*x44*x45*x51*x9,
      x23*x24*x38*x44*x8-x28*x43*x44*x51*x8,
      x22*x23*x37*x43*x7-x27*x42*x43*x51*x7,
      x21*x22*x36*x42*x6-x26*x41*x42*x51*x6,
      x20*x24*x39*x40*x9-x29*x40*x44*x51*x9,
      x19*x23*x38*x39*x8-x28*x39*x43*x51*x8,
      x15*x24*x35*x39*x9-x29*x35*x44*x51*x9,
      x18*x22*x37*x38*x7-x27*x38*x42*x51*x7,
      x14*x23*x34*x38*x8-x28*x34*x43*x51*x8,
      x17*x21*x36*x37*x6-x26*x37*x41*x51*x6,
      x13*x22*x33*x37*x7-x27*x33*x42*x51*x7,
      x12*x21*x32*x36*x6-x26*x32*x41*x51*x6
      )
  R, id
end

function jason_210(
    char::Int
    )
  n = 8
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      x1^2*x3^4+x1*x2*x3^2*x5^2+x1*x2*x3*x4*x5*x7+x1*x2*x3*x4*x6*x8+x1*x2*x4^2*x6^2+x2^2*x4^4,
      x2^6,
      x1^6
      )
  R, id
end

function pearson_9(
    char::Int
    )
  n1  = 3
  n2  = 3
  n3  = 3
  n4  = 8
  n   = n1 + n2 + n3 + n4
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  ctr = 1
  for i = 1:n1
    vars[ctr] = "a$(i)"
    ctr = ctr + 1
  end
  for i = 1:n2
    vars[ctr] = "x$(i)"
    ctr = ctr + 1
  end
  for i = 1:n3
    vars[ctr] = "s$(i)"
    ctr = ctr + 1
  end
  for i = 1:n4
    vars[ctr] = "m$(i)"
    ctr = ctr + 1
  end
    if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      a1+a2+a3-1,
      a1*x1+a2*x2+a3*x3-m1,
      a1*x1^2+a2*x2^2+a3*x3^2+a1*s1+a2*s2+a3*s3-m2,
      a1*x1^3+a2*x2^3+a3*x3^3+3*a1*x1*s1+3*a2*x2*s2+3*a3*x3*s3-m3,
      a1*x1^4+a2*x2^4+a3*x3^4+6*a1*x1^2*s1+6*a2*x2^2*s2+6*a3*x3^2*s3+3*a1*s1^2+3*a2*s2^2+3*a3*s3^2-m4,
      a1*x1^5+a2*x2^5+a3*x3^5+10*a1*x1^3*s1+10*a2*x2^3*s2+10*a3*x3^3*s3+15*a1*x1*s1^2+15*a2*x2*s2^2+15*a3*x3*s3^2-m5,
      a1*x1^6+a2*x2^6+a3*x3^6+15*a1*x1^4*s1+15*a2*x2^4*s2+15*a3*x3^4*s3+45*a1*x1^2*s1^2+45*a2*x2^2*s2^2+45*a3*x3^2*s3^2+15*a1*s1^3+15*a2*s2^3+15*a3*s3^3-m6,
      a1*x1^7+a2*x2^7+a3*x3^7+21*a1*x1^5*s1+21*a2*x2^5*s2+21*a3*x3^5*s3+105*a1*x1^3*s1^2+105*a2*x2^3*s2^2+105*a3*x3^3*s3^2+105*a1*x1*s1^3+105*a2*x2*s2^3+105*a3*x3*s3^3-m7,
      a1*x1^8+a2*x2^8+a3*x3^8+28*a1*x1^6*s1+28*a2*x2^6*s2+28*a3*x3^6*s3+210*a1*x1^4*s1^2+210*a2*x2^4*s2^2+210*a3*x3^4*s3^2+420*a1*x1^2*s1^3+420*a2*x2^2*s2^3+420*a3*x3^2*s3^3+105*a1*s1^4+105*a2*s2^4+105*a3*s3^4-m8
      )
  R, id
end

function pearson_12(
    char::Int
    )
  n1  = 4
  n2  = 4
  n3  = 4
  n4  = 11
  n   = n1 + n2 + n3 + n4
  vars = Array{String, 1}(n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  ctr = 1
  for i = 1:n1
    vars[ctr] = "a$(i)"
    ctr = ctr + 1
  end
  for i = 1:n2
    vars[ctr] = "x$(i)"
    ctr = ctr + 1
  end
  for i = 1:n3
    vars[ctr] = "s$(i)"
    ctr = ctr + 1
  end
  for i = 1:n4
    vars[ctr] = "m$(i)"
    ctr = ctr + 1
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars)
  end
  global X
  # parses X[i] to xi
  [ eval(parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  id = Singular.Ideal(R,
      a1+a2+a3+a4-1,
      a1*x1+a2*x2+a3*x3+a4*x4-m1,
      a1*x1^2+a2*x2^2+a3*x3^2+a4*x4^2+a1*s1+a2*s2+a3*s3+a4*s4-m2,
      a1*x1^3+a2*x2^3+a3*x3^3+a4*x4^3+3*a1*x1*s1+3*a2*x2*s2+3*a3*x3*s3+3*a4*x4*s4-m3,
      a1*x1^4+a2*x2^4+a3*x3^4+a4*x4^4+6*a1*x1^2*s1+6*a2*x2^2*s2+6*a3*x3^2*s3+6*a4*x4^2*s4+3*a1*s1^2+3*a2*s2^2+3*a3*s3^2+3*a4*s4^2-m4,
      a1*x1^5+a2*x2^5+a3*x3^5+a4*x4^5+10*a1*x1^3*s1+10*a2*x2^3*s2+10*a3*x3^3*s3+10*a4*x4^3*s4+15*a1*x1*s1^2+15*a2*x2*s2^2+15*a3*x3*s3^2+15*a4*x4*s4^2-m5,
      a1*x1^6+a2*x2^6+a3*x3^6+a4*x4^6+15*a1*x1^4*s1+15*a2*x2^4*s2+15*a3*x3^4*s3+15*a4*x4^4*s4+45*a1*x1^2*s1^2+45*a2*x2^2*s2^2+45*a3*x3^2*s3^2+45*a4*x4^2*s4^2+15*a1*s1^3+15*a2*s2^3+15*a3*s3^3+15*a4*s4^3-m6,
      a1*x1^7+a2*x2^7+a3*x3^7+a4*x4^7+21*a1*x1^5*s1+21*a2*x2^5*s2+21*a3*x3^5*s3+21*a4*x4^5*s4+105*a1*x1^3*s1^2+105*a2*x2^3*s2^2+105*a3*x3^3*s3^2+105*a4*x4^3*s4^2+105*a1*x1*s1^3+105*a2*x2*s2^3+105*a3*x3*s3^3+105*a4*x4*s4^3-m7,
      a1*x1^8+a2*x2^8+a3*x3^8+a4*x4^8+28*a1*x1^6*s1+28*a2*x2^6*s2+28*a3*x3^6*s3+28*a4*x4^6*s4+210*a1*x1^4*s1^2+210*a2*x2^4*s2^2+210*a3*x3^4*s3^2+210*a4*x4^4*s4^2+420*a1*x1^2*s1^3+420*a2*x2^2*s2^3+420*a3*x3^2*s3^3+420*a4*x4^2*s4^3+105*a1*s1^4+105*a2*s2^4+105*a3*s3^4+105*a4*s4^4-m8,
      a1*x1^9+a2*x2^9+a3*x3^9+a4*x4^9+36*a1*x1^7*s1+36*a2*x2^7*s2+36*a3*x3^7*s3+36*a4*x4^7*s4+378*a1*x1^5*s1^2+378*a2*x2^5*s2^2+378*a3*x3^5*s3^2+378*a4*x4^5*s4^2+1260*a1*x1^3*s1^3+1260*a2*x2^3*s2^3+1260*a3*x3^3*s3^3+1260*a4*x4^3*s4^3+945*a1*x1*s1^4+945*a2*x2*s2^4+945*a3*x3*s3^4+945*a4*x4*s4^4-m9,
      a1*x1^10+a2*x2^10+a3*x3^10+a4*x4^10+45*a1*x1^8*s1+45*a2*x2^8*s2+45*a3*x3^8*s3+45*a4*x4^8*s4+630*a1*x1^6*s1^2+630*a2*x2^6*s2^2+630*a3*x3^6*s3^2+630*a4*x4^6*s4^2+3150*a1*x1^4*s1^3+3150*a2*x2^4*s2^3+3150*a3*x3^4*s3^3+3150*a4*x4^4*s4^3+4725*a1*x1^2*s1^4+4725*a2*x2^2*s2^4+4725*a3*x3^2*s3^4+4725*a4*x4^2*s4^4+945*a1*s1^5+945*a2*s2^5+945*a3*s3^5+945*a4*s4^5-m10,
      a1*x1^11+a2*x2^11+a3*x3^11+a4*x4^11+55*a1*x1^9*s1+55*a2*x2^9*s2+55*a3*x3^9*s3+55*a4*x4^9*s4+990*a1*x1^7*s1^2+990*a2*x2^7*s2^2+990*a3*x3^7*s3^2+990*a4*x4^7*s4^2+6930*a1*x1^5*s1^3+6930*a2*x2^5*s2^3+6930*a3*x3^5*s3^3+6930*a4*x4^5*s4^3+17325*a1*x1^3*s1^4+17325*a2*x2^3*s2^4+17325*a3*x3^3*s3^4+17325*a4*x4^3*s4^4+10395*a1*x1*s1^5+10395*a2*x2*s2^5+10395*a3*x3*s3^5+10395*a4*x4*s4^5-m11
      )
  R, id
end
