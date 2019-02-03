#=========================
CYCLIC EXAMPLES -- affine
=========================#
function cyclic_3(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 3
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3",
    "x1*x2+x2*x3+x1*x3",
    "x1*x2*x3-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_4(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 4
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4",
    "x1*x2+x2*x3+x1*x4+x3*x4",
    "x1*x2*x3+x1*x2*x4+x1*x3*x4+x2*x3*x4",
    "x1*x2*x3*x4-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_5(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 5
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5",
    "x1*x2+x2*x3+x3*x4+x1*x5+x4*x5",
    "x1*x2*x3+x2*x3*x4+x1*x2*x5+x1*x4*x5+x3*x4*x5",
    "x1*x2*x3*x4+x1*x2*x3*x5+x1*x2*x4*x5+x1*x3*x4*x5+x2*x3*x4*x5",
    "x1*x2*x3*x4*x5-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_6(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 6
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5+x6",
    "x1*x2+x2*x3+x3*x4+x4*x5+x1*x6+x5*x6",
    "x1*x2*x3+x2*x3*x4+x3*x4*x5+x1*x2*x6+x1*x5*x6+x4*x5*x6",
    "x1*x2*x3*x4+x2*x3*x4*x5+x1*x2*x3*x6+x1*x2*x5*x6+x1*x4*x5*x6+x3*x4*x5*x6",
    "x1*x2*x3*x4*x5+x1*x2*x3*x4*x6+x1*x2*x3*x5*x6+x1*x2*x4*x5*x6+x1*x3*x4*x5*x6+x2*x3*x4*x5*x6",
    "x1*x2*x3*x4*x5*x6-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_7(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 7
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5+x6+x7",
    "x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x1*x7+x6*x7",
    "x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x1*x2*x7+x1*x6*x7+x5*x6*x7",
    "x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x1*x2*x3*x7+x1*x2*x6*x7+x1*x5*x6*x7+x4*x5*x6*x7",
    "x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x1*x2*x3*x4*x7+x1*x2*x3*x6*x7+x1*x2*x5*x6*x7+x1*x4*x5*x6*x7+x3*x4*x5*x6*x7",
    "x1*x2*x3*x4*x5*x6+x1*x2*x3*x4*x5*x7+x1*x2*x3*x4*x6*x7+x1*x2*x3*x5*x6*x7+x1*x2*x4*x5*x6*x7+x1*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7",
    "x1*x2*x3*x4*x5*x6*x7-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_8(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 8
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5+x6+x7+x8",
    "x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x1*x8+x7*x8",
    "x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x1*x2*x8+x1*x7*x8+x6*x7*x8",
    "x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x1*x2*x3*x8+x1*x2*x7*x8+x1*x6*x7*x8+x5*x6*x7*x8",
    "x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x1*x2*x3*x4*x8+x1*x2*x3*x7*x8+x1*x2*x6*x7*x8+x1*x5*x6*x7*x8+x4*x5*x6*x7*x8",
    "x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x1*x2*x3*x4*x5*x8+x1*x2*x3*x4*x7*x8+x1*x2*x3*x6*x7*x8+x1*x2*x5*x6*x7*x8+x1*x4*x5*x6*x7*x8+x3*x4*x5*x6*x7*x8",
    "x1*x2*x3*x4*x5*x6*x7+x1*x2*x3*x4*x5*x6*x8+x1*x2*x3*x4*x5*x7*x8+x1*x2*x3*x4*x6*x7*x8+x1*x2*x3*x5*x6*x7*x8+x1*x2*x4*x5*x6*x7*x8+x1*x3*x4*x5*x6*x7*x8+x2*x3*x4*x5*x6*x7*x8",
    "x1*x2*x3*x4*x5*x6*x7*x8-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_9(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 9
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5+x6+x7+x8+x9",
    "x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x7*x8+x1*x9+x8*x9",
    "x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x6*x7*x8+x1*x2*x9+x1*x8*x9+x7*x8*x9",
    "x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x5*x6*x7*x8+x1*x2*x3*x9+x1*x2*x8*x9+x1*x7*x8*x9+x6*x7*x8*x9",
    "x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x4*x5*x6*x7*x8+x1*x2*x3*x4*x9+x1*x2*x3*x8*x9+x1*x2*x7*x8*x9+x1*x6*x7*x8*x9+x5*x6*x7*x8*x9",
    "x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x3*x4*x5*x6*x7*x8+x1*x2*x3*x4*x5*x9+x1*x2*x3*x4*x8*x9+x1*x2*x3*x7*x8*x9+x1*x2*x6*x7*x8*x9+x1*x5*x6*x7*x8*x9+x4*x5*x6*x7*x8*x9",
    "x1*x2*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7*x8+x1*x2*x3*x4*x5*x6*x9+x1*x2*x3*x4*x5*x8*x9+x1*x2*x3*x4*x7*x8*x9+x1*x2*x3*x6*x7*x8*x9+x1*x2*x5*x6*x7*x8*x9+x1*x4*x5*x6*x7*x8*x9+x3*x4*x5*x6*x7*x8*x9",
    "x1*x2*x3*x4*x5*x6*x7*x8+x1*x2*x3*x4*x5*x6*x7*x9+x1*x2*x3*x4*x5*x6*x8*x9+x1*x2*x3*x4*x5*x7*x8*x9+x1*x2*x3*x4*x6*x7*x8*x9+x1*x2*x3*x5*x6*x7*x8*x9+x1*x2*x4*x5*x6*x7*x8*x9+x1*x3*x4*x5*x6*x7*x8*x9+x2*x3*x4*x5*x6*x7*x8*x9",
    "x1*x2*x3*x4*x5*x6*x7*x8*x9-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_10(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 10
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5+x6+x7+x8+x9+x10",
    "x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x7*x8+x8*x9+x1*x10+x9*x10",
    "x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x6*x7*x8+x7*x8*x9+x1*x2*x10+x1*x9*x10+x8*x9*x10",
    "x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x5*x6*x7*x8+x6*x7*x8*x9+x1*x2*x3*x10+x1*x2*x9*x10+x1*x8*x9*x10+x7*x8*x9*x10",
    "x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x4*x5*x6*x7*x8+x5*x6*x7*x8*x9+x1*x2*x3*x4*x10+x1*x2*x3*x9*x10+x1*x2*x8*x9*x10+x1*x7*x8*x9*x10+x6*x7*x8*x9*x10",
    "x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x3*x4*x5*x6*x7*x8+x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x10+x1*x2*x3*x4*x9*x10+x1*x2*x3*x8*x9*x10+x1*x2*x7*x8*x9*x10+x1*x6*x7*x8*x9*x10+x5*x6*x7*x8*x9*x10",
    "x1*x2*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7*x8+x3*x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x6*x10+x1*x2*x3*x4*x5*x9*x10+x1*x2*x3*x4*x8*x9*x10+x1*x2*x3*x7*x8*x9*x10+x1*x2*x6*x7*x8*x9*x10+x1*x5*x6*x7*x8*x9*x10+x4*x5*x6*x7*x8*x9*x10",
    "x1*x2*x3*x4*x5*x6*x7*x8+x2*x3*x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x6*x7*x10+x1*x2*x3*x4*x5*x6*x9*x10+x1*x2*x3*x4*x5*x8*x9*x10+x1*x2*x3*x4*x7*x8*x9*x10+x1*x2*x3*x6*x7*x8*x9*x10+x1*x2*x5*x6*x7*x8*x9*x10+x1*x4*x5*x6*x7*x8*x9*x10+x3*x4*x5*x6*x7*x8*x9*x10",
    "x1*x2*x3*x4*x5*x6*x7*x8*x9+x1*x2*x3*x4*x5*x6*x7*x8*x10+x1*x2*x3*x4*x5*x6*x7*x9*x10+x1*x2*x3*x4*x5*x6*x8*x9*x10+x1*x2*x3*x4*x5*x7*x8*x9*x10+x1*x2*x3*x4*x6*x7*x8*x9*x10+x1*x2*x3*x5*x6*x7*x8*x9*x10+x1*x2*x4*x5*x6*x7*x8*x9*x10+x1*x3*x4*x5*x6*x7*x8*x9*x10+x2*x3*x4*x5*x6*x7*x8*x9*x10",
    "x1*x2*x3*x4*x5*x6*x7*x8*x9*x10-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function cyclic_11(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 11
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11",
    "x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x6*x7+x7*x8+x8*x9+x9*x10+x1*x11+x10*x11",
    "x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x5*x6*x7+x6*x7*x8+x7*x8*x9+x8*x9*x10+x1*x2*x11+x1*x10*x11+x9*x10*x11",
    "x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x4*x5*x6*x7+x5*x6*x7*x8+x6*x7*x8*x9+x7*x8*x9*x10+x1*x2*x3*x11+x1*x2*x10*x11+x1*x9*x10*x11+x8*x9*x10*x11",
    "x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x3*x4*x5*x6*x7+x4*x5*x6*x7*x8+x5*x6*x7*x8*x9+x6*x7*x8*x9*x10+x1*x2*x3*x4*x11+x1*x2*x3*x10*x11+x1*x2*x9*x10*x11+x1*x8*x9*x10*x11+x7*x8*x9*x10*x11",
    "x1*x2*x3*x4*x5*x6+x2*x3*x4*x5*x6*x7+x3*x4*x5*x6*x7*x8+x4*x5*x6*x7*x8*x9+x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x11+x1*x2*x3*x4*x10*x11+x1*x2*x3*x9*x10*x11+x1*x2*x8*x9*x10*x11+x1*x7*x8*x9*x10*x11+x6*x7*x8*x9*x10*x11",
    "x1*x2*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7*x8+x3*x4*x5*x6*x7*x8*x9+x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x11+x1*x2*x3*x4*x5*x10*x11+x1*x2*x3*x4*x9*x10*x11+x1*x2*x3*x8*x9*x10*x11+x1*x2*x7*x8*x9*x10*x11+x1*x6*x7*x8*x9*x10*x11+x5*x6*x7*x8*x9*x10*x11",
    "x1*x2*x3*x4*x5*x6*x7*x8+x2*x3*x4*x5*x6*x7*x8*x9+x3*x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x7*x11+x1*x2*x3*x4*x5*x6*x10*x11+x1*x2*x3*x4*x5*x9*x10*x11+x1*x2*x3*x4*x8*x9*x10*x11+x1*x2*x3*x7*x8*x9*x10*x11+x1*x2*x6*x7*x8*x9*x10*x11+x1*x5*x6*x7*x8*x9*x10*x11+x4*x5*x6*x7*x8*x9*x10*x11",
    "x1*x2*x3*x4*x5*x6*x7*x8*x9+x2*x3*x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x7*x8*x11+x1*x2*x3*x4*x5*x6*x7*x10*x11+x1*x2*x3*x4*x5*x6*x9*x10*x11+x1*x2*x3*x4*x5*x8*x9*x10*x11+x1*x2*x3*x4*x7*x8*x9*x10*x11+x1*x2*x3*x6*x7*x8*x9*x10*x11+x1*x2*x5*x6*x7*x8*x9*x10*x11+x1*x4*x5*x6*x7*x8*x9*x10*x11+x3*x4*x5*x6*x7*x8*x9*x10*x11",
    "x1*x2*x3*x4*x5*x6*x7*x8*x9*x10+x1*x2*x3*x4*x5*x6*x7*x8*x9*x11+x1*x2*x3*x4*x5*x6*x7*x8*x10*x11+x1*x2*x3*x4*x5*x6*x7*x9*x10*x11+x1*x2*x3*x4*x5*x6*x8*x9*x10*x11+x1*x2*x3*x4*x5*x7*x8*x9*x10*x11+x1*x2*x3*x4*x6*x7*x8*x9*x10*x11+x1*x2*x3*x5*x6*x7*x8*x9*x10*x11+x1*x2*x4*x5*x6*x7*x8*x9*x10*x11+x1*x3*x4*x5*x6*x7*x8*x9*x10*x11+x2*x3*x4*x5*x6*x7*x8*x9*x10*x11",
    "x1*x2*x3*x4*x5*x6*x7*x8*x9*x10*x11-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

#=========================
KATSURA EXAMPLES -- affine
=========================#
function katsura_4(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 4
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4-x2",
    "x2^2+2*x1*x3+2*x2*x4-x3"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_5(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 5
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5-x4"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_6(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 6
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6-x5"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_7(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 7
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7-x6"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_8(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 8
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8-x7"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_9(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 9
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9-x8"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_10(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 10
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10-x9"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_11(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 11
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11-x10"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_12(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 12
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12-x11"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_13(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 13
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13-x11",
    "2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13-x12"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_14(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 14
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14-x11",
    "2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14-x12",
    "x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14-x13"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_15(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 15
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14+2*x15-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2+2*x15^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14+2*x14*x15-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14+2*x13*x15-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14+2*x12*x15-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14+2*x11*x15-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14+2*x10*x15-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14+2*x9*x15-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14+2*x8*x15-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14+2*x7*x15-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14+2*x6*x15-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14+2*x5*x15-x11",
    "2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14+2*x4*x15-x12",
    "x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14+2*x3*x15-x13",
    "2*x7*x8+2*x6*x9+2*x5*x10+2*x4*x11+2*x3*x12+2*x2*x13+2*x1*x14+2*x2*x15-x14"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_16(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 16
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14+2*x15+2*x16-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2+2*x15^2+2*x16^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14+2*x14*x15+2*x15*x16-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14+2*x13*x15+2*x14*x16-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14+2*x12*x15+2*x13*x16-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14+2*x11*x15+2*x12*x16-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14+2*x10*x15+2*x11*x16-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14+2*x9*x15+2*x10*x16-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14+2*x8*x15+2*x9*x16-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14+2*x7*x15+2*x8*x16-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14+2*x6*x15+2*x7*x16-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14+2*x5*x15+2*x6*x16-x11",
    "2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14+2*x4*x15+2*x5*x16-x12",
    "x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14+2*x3*x15+2*x4*x16-x13",
    "2*x7*x8+2*x6*x9+2*x5*x10+2*x4*x11+2*x3*x12+2*x2*x13+2*x1*x14+2*x2*x15+2*x3*x16-x14",
    "x8^2+2*x7*x9+2*x6*x10+2*x5*x11+2*x4*x12+2*x3*x13+2*x2*x14+2*x1*x15+2*x2*x16-x15"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_17(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 17
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14+2*x15+2*x16+2*x17-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2+2*x15^2+2*x16^2+2*x17^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14+2*x14*x15+2*x15*x16+2*x16*x17-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14+2*x13*x15+2*x14*x16+2*x15*x17-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14+2*x12*x15+2*x13*x16+2*x14*x17-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14+2*x11*x15+2*x12*x16+2*x13*x17-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14+2*x10*x15+2*x11*x16+2*x12*x17-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14+2*x9*x15+2*x10*x16+2*x11*x17-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14+2*x8*x15+2*x9*x16+2*x10*x17-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14+2*x7*x15+2*x8*x16+2*x9*x17-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14+2*x6*x15+2*x7*x16+2*x8*x17-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14+2*x5*x15+2*x6*x16+2*x7*x17-x11",
    "2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14+2*x4*x15+2*x5*x16+2*x6*x17-x12",
    "x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14+2*x3*x15+2*x4*x16+2*x5*x17-x13",
    "2*x7*x8+2*x6*x9+2*x5*x10+2*x4*x11+2*x3*x12+2*x2*x13+2*x1*x14+2*x2*x15+2*x3*x16+2*x4*x17-x14",
    "x8^2+2*x7*x9+2*x6*x10+2*x5*x11+2*x4*x12+2*x3*x13+2*x2*x14+2*x1*x15+2*x2*x16+2*x3*x17-x15",
    "2*x8*x9+2*x7*x10+2*x6*x11+2*x5*x12+2*x4*x13+2*x3*x14+2*x2*x15+2*x1*x16+2*x2*x17-x16"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function katsura_18(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 18
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8+2*x9+2*x10+2*x11+2*x12+2*x13+2*x14+2*x15+2*x16+2*x17+2*x18-1",
    "x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2+2*x9^2+2*x10^2+2*x11^2+2*x12^2+2*x13^2+2*x14^2+2*x15^2+2*x16^2+2*x17^2+2*x18^2-x1",
    "2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8+2*x8*x9+2*x9*x10+2*x10*x11+2*x11*x12+2*x12*x13+2*x13*x14+2*x14*x15+2*x15*x16+2*x16*x17+2*x17*x18-x2",
    "x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8+2*x7*x9+2*x8*x10+2*x9*x11+2*x10*x12+2*x11*x13+2*x12*x14+2*x13*x15+2*x14*x16+2*x15*x17+2*x16*x18-x3",
    "2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8+2*x6*x9+2*x7*x10+2*x8*x11+2*x9*x12+2*x10*x13+2*x11*x14+2*x12*x15+2*x13*x16+2*x14*x17+2*x15*x18-x4",
    "x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8+2*x5*x9+2*x6*x10+2*x7*x11+2*x8*x12+2*x9*x13+2*x10*x14+2*x11*x15+2*x12*x16+2*x13*x17+2*x14*x18-x5",
    "2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8+2*x4*x9+2*x5*x10+2*x6*x11+2*x7*x12+2*x8*x13+2*x9*x14+2*x10*x15+2*x11*x16+2*x12*x17+2*x13*x18-x6",
    "x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8+2*x3*x9+2*x4*x10+2*x5*x11+2*x6*x12+2*x7*x13+2*x8*x14+2*x9*x15+2*x10*x16+2*x11*x17+2*x12*x18-x7",
    "2*x4*x5+2*x3*x6+2*x2*x7+2*x1*x8+2*x2*x9+2*x3*x10+2*x4*x11+2*x5*x12+2*x6*x13+2*x7*x14+2*x8*x15+2*x9*x16+2*x10*x17+2*x11*x18-x8",
    "x5^2+2*x4*x6+2*x3*x7+2*x2*x8+2*x1*x9+2*x2*x10+2*x3*x11+2*x4*x12+2*x5*x13+2*x6*x14+2*x7*x15+2*x8*x16+2*x9*x17+2*x10*x18-x9",
    "2*x5*x6+2*x4*x7+2*x3*x8+2*x2*x9+2*x1*x10+2*x2*x11+2*x3*x12+2*x4*x13+2*x5*x14+2*x6*x15+2*x7*x16+2*x8*x17+2*x9*x18-x10",
    "x6^2+2*x5*x7+2*x4*x8+2*x3*x9+2*x2*x10+2*x1*x11+2*x2*x12+2*x3*x13+2*x4*x14+2*x5*x15+2*x6*x16+2*x7*x17+2*x8*x18-x11",
    "2*x6*x7+2*x5*x8+2*x4*x9+2*x3*x10+2*x2*x11+2*x1*x12+2*x2*x13+2*x3*x14+2*x4*x15+2*x5*x16+2*x6*x17+2*x7*x18-x12",
    "x7^2+2*x6*x8+2*x5*x9+2*x4*x10+2*x3*x11+2*x2*x12+2*x1*x13+2*x2*x14+2*x3*x15+2*x4*x16+2*x5*x17+2*x6*x18-x13",
    "2*x7*x8+2*x6*x9+2*x5*x10+2*x4*x11+2*x3*x12+2*x2*x13+2*x1*x14+2*x2*x15+2*x3*x16+2*x4*x17+2*x5*x18-x14",
    "x8^2+2*x7*x9+2*x6*x10+2*x5*x11+2*x4*x12+2*x3*x13+2*x2*x14+2*x1*x15+2*x2*x16+2*x3*x17+2*x4*x18-x15",
    "2*x8*x9+2*x7*x10+2*x6*x11+2*x5*x12+2*x4*x13+2*x3*x14+2*x2*x15+2*x1*x16+2*x2*x17+2*x3*x18-x16",
    "x9^2+2*x8*x10+2*x7*x11+2*x6*x12+2*x5*x13+2*x4*x14+2*x3*x15+2*x2*x16+2*x1*x17+2*x2*x18-x17"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

#=========================
MISC EXAMPLES
=========================#
function mayr_42(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 51
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "-x10*x51+x4*x49",
    "x3*x48-x51*x9",
    "x2*x47-x51*x8",
    "x1*x46-x51*x7",
    "x4*x44-x49*x9",
    "x3*x43-x48*x8",
    "x2*x42-x47*x7",
    "x1*x41-x46*x6",
    "x39*x4-x49*x9",
    "x3*x38-x48*x8",
    "x2*x37-x47*x7",
    "x1*x36-x46*x6",
    "x34*x9-x49*x9",
    "x34*x4-x5*x51",
    "x33*x8-x48*x8",
    "x3*x33-x4*x51",
    "x32*x7-x47*x7",
    "x2*x32-x3*x51",
    "x31*x6-x46*x6",
    "x1*x31-x2*x51",
    "x14*x39*x9-x29*x44*x9",
    "x13*x38*x8-x28*x43*x8",
    "x12*x37*x7-x27*x42*x7",
    "x11*x36*x6-x26*x41*x6",
    "x26^2*x46*x6-x51^3*x7",
    "x11^2*x46*x6-x2*x51^3",
    "x21^2*x41*x6-x46*x51^2*x6",
    "x16^2*x36*x6-x46*x51^2*x6",
    "x24*x30*x39*x50*x9-x29*x44*x50*x51*x9",
    "x23*x29*x38*x49*x8-x28*x43*x49*x51*x8",
    "x22*x28*x37*x48*x7-x27*x42*x48*x51*x7",
    "x21*x27*x36*x47*x6-x26*x41*x47*x51*x6",
    "x24*x25*x39*x45*x9-x29*x44*x45*x51*x9",
    "x23*x24*x38*x44*x8-x28*x43*x44*x51*x8",
    "x22*x23*x37*x43*x7-x27*x42*x43*x51*x7",
    "x21*x22*x36*x42*x6-x26*x41*x42*x51*x6",
    "x20*x24*x39*x40*x9-x29*x40*x44*x51*x9",
    "x19*x23*x38*x39*x8-x28*x39*x43*x51*x8",
    "x15*x24*x35*x39*x9-x29*x35*x44*x51*x9",
    "x18*x22*x37*x38*x7-x27*x38*x42*x51*x7",
    "x14*x23*x34*x38*x8-x28*x34*x43*x51*x8",
    "x17*x21*x36*x37*x6-x26*x37*x41*x51*x6",
    "x13*x22*x33*x37*x7-x27*x33*x42*x51*x7",
    "x12*x21*x32*x36*x6-x26*x32*x41*x51*x6"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function jason_210(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 8
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x1^2*x3^4+x1*x2*x3^2*x5^2+x1*x2*x3*x4*x5*x7+x1*x2*x3*x4*x6*x8+x1*x2*x4^2*x6^2+x2^2*x4^4",
    "x2^6",
    "x1^6"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function lthree_non_convex(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n   = 3 + 3 + 3
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  ctr = 1
  for i in [11,12,13]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
  for i in [21,22,23]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
  for i in [31,32,33]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
    if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
"y31^2+y32^2+y33^2-1",
"y21*y31+y22*y32+y23*y33",
"y11*y31+y12*y32+y13*y33",
"y21^2+y22^2+y23^2-1",
"y11*y21+y12*y22+y13*y23",
"-y13*y22*y31+y12*y23*y31+y13*y21*y32-y11*y23*y32-y12*y21*y33+y11*y22*y33-1",
"y11^2+y12^2+y13^2-1",
"y12^3*y13-y12*y13^3+y22^3*y23-y22*y23^3+y32^3*y33-y32*y33^3",
"y11^3*y13-y11*y13^3+y21^3*y23-y21*y23^3+y31^3*y33-y31*y33^3",
"y11^3*y12-y11*y12^3+y21^3*y22-y21*y22^3+y31^3*y32-y31*y32^3"
  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function lfour_non_convex(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n   = 4 + 4 + 4 + 4
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  ctr = 1
  for i in [11,12,13,14]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
  for i in [21,22,23,24]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
  for i in [31,32,33,34]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
  for i in [41,42,43,44]
    vars[ctr] = "y$(i)"
    ctr = ctr + 1
  end
    if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
"y41^2+y42^2+y43^2+y44^2-1",
"y31*y41+y32*y42+y33*y43+y34*y44",
"y21*y41+y22*y42+y23*y43+y24*y44",
"y11*y41+y12*y42+y13*y43+y14*y44",
"y31^2+y32^2+y33^2+y34^2-1",
"y21*y31+y22*y32+y23*y33+y24*y34",
"y11*y31+y12*y32+y13*y33+y14*y34",
"y21^2+y22^2+y23^2+y24^2-1",
"y11*y21+y12*y22+y13*y23+y14*y24",
"y14*y23*y32*y41-y13*y24*y32*y41-y14*y22*y33*y41+y12*y24*y33*y41+y13*y22*y34*y41-y12*y23*y34*y41-y14*y23*y31*y42+y13*y24*y31*y42+y14*y21*y33*y42-y11*y24*y33*y42-y13*y21*y34*y42+y11*y23*y34*y42+y14*y22*y31*y43-y12*y24*y31*y43-y14*y21*y32*y43+y11*y24*y32*y43+y12*y21*y34*y43-y11*y22*y34*y43-y13*y22*y31*y44+y12*y23*y31*y44+y13*y21*y32*y44-y11*y23*y32*y44-y12*y21*y33*y44+y11*y22*y33*y44-1",
"y11^2+y12^2+y13^2+y14^2-1",
"y13^3*y14-y13*y14^3+y23^3*y24-y23*y24^3+y33^3*y34-y33*y34^3+y43^3*y44-y43*y44^3",
"y12^3*y14-y12*y14^3+y22^3*y24-y22*y24^3+y32^3*y34-y32*y34^3+y42^3*y44-y42*y44^3",
"y11^3*y14-y11*y14^3+y21^3*y24-y21*y24^3+y31^3*y34-y31*y34^3+y41^3*y44-y41*y44^3",
"y12^3*y13-y12*y13^3+y22^3*y23-y22*y23^3+y32^3*y33-y32*y33^3+y42^3*y43-y42*y43^3",
"y11^3*y13-y11*y13^3+y21^3*y23-y21*y23^3+y31^3*y33-y31*y33^3+y41^3*y43-y41*y43^3",
"y11^3*y12-y11*y12^3+y21^3*y22-y21*y22^3+y31^3*y32-y31*y32^3+y41^3*y42-y41*y42^3"
  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function pearson_9(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n1  = 3
  n2  = 3
  n3  = 3
  n4  = 8
  n   = n1 + n2 + n3 + n4
  vars = Array{String, 1}(undef, n)
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
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "a1+a2+a3-1",
    "a1*x1+a2*x2+a3*x3-m1",
    "a1*x1^2+a2*x2^2+a3*x3^2+a1*s1+a2*s2+a3*s3-m2",
    "a1*x1^3+a2*x2^3+a3*x3^3+3*a1*x1*s1+3*a2*x2*s2+3*a3*x3*s3-m3",
    "a1*x1^4+a2*x2^4+a3*x3^4+6*a1*x1^2*s1+6*a2*x2^2*s2+6*a3*x3^2*s3+
    3*a1*s1^2+3*a2*s2^2+3*a3*s3^2-m4",
    "a1*x1^5+a2*x2^5+a3*x3^5+10*a1*x1^3*s1+10*a2*x2^3*s2+10*a3*x3^3*s3+
    15*a1*x1*s1^2+15*a2*x2*s2^2+15*a3*x3*s3^2-m5",
    "a1*x1^6+a2*x2^6+a3*x3^6+15*a1*x1^4*s1+15*a2*x2^4*s2+15*a3*x3^4*s3+
    45*a1*x1^2*s1^2+45*a2*x2^2*s2^2+45*a3*x3^2*s3^2+15*a1*s1^3+
    15*a2*s2^3+15*a3*s3^3-m6",
    "a1*x1^7+a2*x2^7+a3*x3^7+21*a1*x1^5*s1+21*a2*x2^5*s2+21*a3*x3^5*s3+
    105*a1*x1^3*s1^2+105*a2*x2^3*s2^2+105*a3*x3^3*s3^2+105*a1*x1*s1^3+
    105*a2*x2*s2^3+105*a3*x3*s3^3-m7",
    "a1*x1^8+a2*x2^8+a3*x3^8+28*a1*x1^6*s1+28*a2*x2^6*s2+28*a3*x3^6*s3+
    210*a1*x1^4*s1^2+210*a2*x2^4*s2^2+210*a3*x3^4*s3^2+420*a1*x1^2*s1^3+
    420*a2*x2^2*s2^3+420*a3*x3^2*s3^3+105*a1*s1^4+105*a2*s2^4+105*a3*s3^4-m8"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function pearson_12(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n1  = 4
  n2  = 4
  n3  = 4
  n4  = 11
  n   = n1 + n2 + n3 + n4
  vars = Array{String, 1}(undef, n)
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
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "a1+ a2+ a3+ a4- 1",
    "a1*x1+ a2*x2+ a3*x3+ a4*x4- m1",
    "a1*x1^2+ a2*x2^2+ a3*x3^2+ a4*x4^2+ a1*s1+ a2*s2+ a3*s3+ a4*s4- m2",
    "a1*x1^3+ a2*x2^3+ a3*x3^3+ a4*x4^3+ 3*a1*x1*s1+ 3*a2*x2*s2+ 3*a3*x3*s3+
    3*a4*x4*s4- m3",
    "a1*x1^4+ a2*x2^4+ a3*x3^4+ a4*x4^4+ 6*a1*x1^2*s1+ 6*a2*x2^2*s2+
    6*a3*x3^2*s3+ 6*a4*x4^2*s4+ 3*a1*s1^2+ 3*a2*s2^2+ 3*a3*s3^2+ 3*a4*s4^2- m4",
    "a1*x1^5+ a2*x2^5+ a3*x3^5+ a4*x4^5+ 10*a1*x1^3*s1+ 10*a2*x2^3*s2+
    10*a3*x3^3*s3+ 10*a4*x4^3*s4+ 15*a1*x1*s1^2+ 15*a2*x2*s2^2+ 15*a3*x3*s3^2+
    15*a4*x4*s4^2- m5",
    "a1*x1^6+ a2*x2^6+ a3*x3^6+ a4*x4^6+ 15*a1*x1^4*s1+ 15*a2*x2^4*s2+
    15*a3*x3^4*s3+ 15*a4*x4^4*s4+ 45*a1*x1^2*s1^2+ 45*a2*x2^2*s2^2+
    45*a3*x3^2*s3^2+ 45*a4*x4^2*s4^2+ 15*a1*s1^3+ 15*a2*s2^3+ 15*a3*s3^3+
    15*a4*s4^3- m6",
    "a1*x1^7+ a2*x2^7+ a3*x3^7+ a4*x4^7+ 21*a1*x1^5*s1+ 21*a2*x2^5*s2+
    21*a3*x3^5*s3+ 21*a4*x4^5*s4+ 105*a1*x1^3*s1^2+ 105*a2*x2^3*s2^2+
    105*a3*x3^3*s3^2+ 105*a4*x4^3*s4^2+ 105*a1*x1*s1^3+ 105*a2*x2*s2^3+
    105*a3*x3*s3^3+ 105*a4*x4*s4^3- m7",
    "a1*x1^8+ a2*x2^8+ a3*x3^8+ a4*x4^8+ 28*a1*x1^6*s1+ 28*a2*x2^6*s2+
    28*a3*x3^6*s3+ 28*a4*x4^6*s4+ 210*a1*x1^4*s1^2+ 210*a2*x2^4*s2^2+
    210*a3*x3^4*s3^2+ 210*a4*x4^4*s4^2+ 420*a1*x1^2*s1^3+ 420*a2*x2^2*s2^3+
    420*a3*x3^2*s3^3+ 420*a4*x4^2*s4^3+ 105*a1*s1^4+ 105*a2*s2^4+ 105*a3*s3^4+
    105*a4*s4^4- m8",
    "a1*x1^9+ a2*x2^9+ a3*x3^9+ a4*x4^9+ 36*a1*x1^7*s1+ 36*a2*x2^7*s2+
    36*a3*x3^7*s3+ 36*a4*x4^7*s4+ 378*a1*x1^5*s1^2+ 378*a2*x2^5*s2^2+
    378*a3*x3^5*s3^2+ 378*a4*x4^5*s4^2+ 1260*a1*x1^3*s1^3+ 1260*a2*x2^3*s2^3+
    1260*a3*x3^3*s3^3+ 1260*a4*x4^3*s4^3+ 945*a1*x1*s1^4+ 945*a2*x2*s2^4+
    945*a3*x3*s3^4+ 945*a4*x4*s4^4- m9",
    "a1*x1^10+ a2*x2^10+ a3*x3^10+ a4*x4^10+ 45*a1*x1^8*s1+ 45*a2*x2^8*s2+
    45*a3*x3^8*s3+ 45*a4*x4^8*s4+ 630*a1*x1^6*s1^2+ 630*a2*x2^6*s2^2+
    630*a3*x3^6*s3^2+ 630*a4*x4^6*s4^2+ 3150*a1*x1^4*s1^3+ 3150*a2*x2^4*s2^3+
    3150*a3*x3^4*s3^3+ 3150*a4*x4^4*s4^3+ 4725*a1*x1^2*s1^4+ 4725*a2*x2^2*s2^4+
    4725*a3*x3^2*s3^4+ 4725*a4*x4^2*s4^4+ 945*a1*s1^5+ 945*a2*s2^5+ 945*a3*s3^5+
    945*a4*s4^5- m10",
    "a1*x1^11+ a2*x2^11+ a3*x3^11+ a4*x4^11+ 55*a1*x1^9*s1+ 55*a2*x2^9*s2+
    55*a3*x3^9*s3+ 55*a4*x4^9*s4+ 990*a1*x1^7*s1^2+ 990*a2*x2^7*s2^2+
    990*a3*x3^7*s3^2+ 990*a4*x4^7*s4^2+ 6930*a1*x1^5*s1^3+ 6930*a2*x2^5*s2^3+
    6930*a3*x3^5*s3^3+ 6930*a4*x4^5*s4^3+ 17325*a1*x1^3*s1^4+
    17325*a2*x2^3*s2^4+ 17325*a3*x3^3*s3^4+ 17325*a4*x4^3*s4^4+
    10395*a1*x1*s1^5+ 10395*a2*x2*s2^5+ 10395*a3*x3*s3^5+ 10395*a4*x4*s4^5- m11"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function bayes_148(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 32
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "-x23*x32+x24*x31",
    "-x22*x32+x24*x30",
    "-x22*x31+x23*x30",
    "-x21*x32+x24*x29",
    "-x21*x31+x23*x29",
    "-x21*x30+x22*x29",
    "-x12*x32+x16*x28",
    "-x19*x28+x20*x27",
    "-x11*x31+x15*x27",
    "-x18*x28+x20*x26",
    "-x18*x27+x19*x26",
    "-x10*x30+x14*x26",
    "-x17*x28+x20*x25",
    "-x17*x27+x19*x25",
    "-x17*x26+x18*x25",
    "-x9*x29+x13*x25",
    "x20*x8-x24*x4",
    "-x17*x20-x17*x24-2*x17*x28-x17*x32+x18*x19+x18*x23+2*x18*x27+x18*x31+x19*x22+x19*x30-x20*x21-x20*x29-x21*x24-x21*x28-2*x21*x32+x22*x23+x22*x27+2*x22*x31+x23*x26-x24*x25-x25*x28-x25*x32+x26*x27+x26*x31+x27*x30-x28*x29-x29*x32+x30*x31",
    "x19*x7-x23*x3",
    "x18*x6-x2*x22",
    "-x1*x21+x17*x5"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function reimer_8(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 8
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "2*x1^2 - 2*x2^2 + 2*x3^2 - 2*x4^2 + 2*x5^2 - 2*x6^2 + 2*x7^2 - 2*x8^2 - 1",
    "2*x1^3 - 2*x2^3 + 2*x3^3 - 2*x4^3 + 2*x5^3 - 2*x6^3 + 2*x7^3 - 2*x8^3 - 1",
    "2*x1^4 - 2*x2^4 + 2*x3^4 - 2*x4^4 + 2*x5^4 - 2*x6^4 + 2*x7^4 - 2*x8^4 - 1",
    "2*x1^5 - 2*x2^5 + 2*x3^5 - 2*x4^5 + 2*x5^5 - 2*x6^5 + 2*x7^5 - 2*x8^5 - 1",
    "2*x1^6 - 2*x2^6 + 2*x3^6 - 2*x4^6 + 2*x5^6 - 2*x6^6 + 2*x7^6 - 2*x8^6 - 1",
    "2*x1^7 - 2*x2^7 + 2*x3^7 - 2*x4^7 + 2*x5^7 - 2*x6^7 + 2*x7^7 - 2*x8^7 - 1",
    "2*x1^8 - 2*x2^8 + 2*x3^8 - 2*x4^8 + 2*x5^8 - 2*x6^8 + 2*x7^8 - 2*x8^8 - 1",
    "2*x1^9 - 2*x2^9 + 2*x3^9 - 2*x4^9 + 2*x5^9 - 2*x6^9 + 2*x7^9 - 2*x8^9 - 1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function gametwo_7(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 7
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "p$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "3821*p2*p3*p4*p5*p6*p7- 7730*p2*p3*p4*p5*p6- 164*p2*p3*p4*p5*p7-
    2536*p2*p3*p4*p6*p7- 4321*p2*p3*p5*p6*p7- 2161*p2*p4*p5*p6*p7-
    2188*p3*p4*p5*p6*p7- 486*p2*p3*p4*p5+ 3491*p2*p3*p4*p6+ 4247*p2*p3*p5*p6+
    3528*p2*p4*p5*p6+ 2616*p3*p4*p5*p6- 101*p2*p3*p4*p7+ 1765*p2*p3*p5*p7+
    258*p2*p4*p5*p7- 378*p3*p4*p5*p7+ 1246*p2*p3*p6*p7+ 2320*p2*p4*p6*p7+
    1776*p3*p4*p6*p7+ 1715*p2*p5*p6*p7+ 728*p3*p5*p6*p7+ 842*p4*p5*p6*p7+
    69*p2*p3*p4- 1660*p2*p3*p5+ 1863*p2*p4*p5+ 1520*p3*p4*p5- 245*p2*p3*p6-
    804*p2*p4*p6- 2552*p3*p4*p6- 3152*p2*p5*p6+ 40*p3*p5*p6- 1213*p4*p5*p6+
    270*p2*p3*p7- 851*p2*p4*p7+ 327*p3*p4*p7- 1151*p2*p5*p7+ 1035*p3*p5*p7-
    161*p4*p5*p7- 230*p2*p6*p7- 294*p3*p6*p7- 973*p4*p6*p7- 264*p5*p6*p7+
    874*p2*p3- 2212*p2*p4+ 168*p3*p4+ 511*p2*p5- 918*p3*p5- 2017*p4*p5-
    76*p2*p6+ 465*p3*p6+ 1629*p4*p6+ 856*p5*p6- 54*p2*p7- 1355*p3*p7+ 227*p4*p7+
    77*p5*p7- 220*p6*p7- 696*p2+ 458*p3+ 486*p4+ 661*p5- 650*p6+ 671*p7- 439",
    "-6157*p1*p3*p4*p5*p6*p7+ 13318*p1*p3*p4*p5*p6+ 5928*p1*p3*p4*p5*p7+
    1904*p1*p3*p4*p6*p7+ 2109*p1*p3*p5*p6*p7+ 8475*p1*p4*p5*p6*p7+
    2878*p3*p4*p5*p6*p7- 8339*p1*p3*p4*p5- 2800*p1*p3*p4*p6- 9649*p1*p3*p5*p6-
    10964*p1*p4*p5*p6- 4481*p3*p4*p5*p6+ 251*p1*p3*p4*p7- 4245*p1*p3*p5*p7-
    7707*p1*p4*p5*p7- 2448*p3*p4*p5*p7+ 1057*p1*p3*p6*p7- 3605*p1*p4*p6*p7+
    546*p3*p4*p6*p7- 3633*p1*p5*p6*p7- 699*p3*p5*p6*p7- 4126*p4*p5*p6*p7-
    730*p1*p3*p4+ 5519*p1*p3*p5+ 8168*p1*p4*p5+ 4366*p3*p4*p5+ 2847*p1*p3*p6+
    2058*p1*p4*p6- 1416*p3*p4*p6+ 8004*p1*p5*p6+ 4740*p3*p5*p6+ 5361*p4*p5*p6-
    677*p1*p3*p7+ 1755*p1*p4*p7- 760*p3*p4*p7+ 3384*p1*p5*p7+ 2038*p3*p5*p7+
    4119*p4*p5*p7+ 812*p1*p6*p7+ 11*p3*p6*p7+ 2022*p4*p6*p7+ 2642*p5*p6*p7+
    1276*p1*p3- 1723*p1*p4+ 121*p3*p4- 6456*p1*p5- 3710*p3*p5- 4525*p4*p5-
    2187*p1*p6- 1559*p3*p6- 848*p4*p6- 4041*p5*p6- 83*p1*p7- 12*p3*p7-
    1180*p4*p7- 2747*p5*p7- 1970*p6*p7+ 2575*p1- 161*p3+ 2149*p4+ 4294*p5+
    1687*p6+ 958*p7- 1950",
    "182*p1*p2*p4*p5*p6*p7- 2824*p1*p2*p4*p5*p6- 3513*p1*p2*p4*p5*p7-
    3386*p1*p2*p4*p6*p7- 2330*p1*p2*p5*p6*p7- 2838*p1*p4*p5*p6*p7+
    1294*p2*p4*p5*p6*p7+ 4764*p1*p2*p4*p5+ 1647*p1*p2*p4*p6+ 4221*p1*p2*p5*p6+
    814*p1*p4*p5*p6+ 2738*p2*p4*p5*p6+ 4057*p1*p2*p4*p7+ 2403*p1*p2*p5*p7+
    2552*p1*p4*p5*p7+ 471*p2*p4*p5*p7+ 448*p1*p2*p6*p7+ 2336*p1*p4*p6*p7+
    1617*p2*p4*p6*p7+ 2220*p1*p5*p6*p7- 1543*p2*p5*p6*p7+ 402*p4*p5*p6*p7-
    5184*p1*p2*p4- 3983*p1*p2*p5+ 44*p1*p4*p5- 1327*p2*p4*p5- 581*p1*p2*p6-
    389*p1*p4*p6- 2722*p2*p4*p6+ 443*p1*p5*p6- 2893*p2*p5*p6- 154*p4*p5*p6-
    1277*p1*p2*p7- 2018*p1*p4*p7- 509*p2*p4*p7- 1254*p1*p5*p7+ 602*p2*p5*p7-
    464*p4*p5*p7- 647*p1*p6*p7+ 922*p2*p6*p7- 1463*p4*p6*p7+ 729*p5*p6*p7+
    2665*p1*p2+ 591*p1*p4+ 981*p2*p4- 444*p1*p5+ 1818*p2*p5- 1985*p4*p5-
    1818*p1*p6+ 197*p2*p6+ 1038*p4*p6+ 340*p5*p6+ 399*p1*p7- 835*p2*p7+
    787*p4*p7- 753*p5*p7- 221*p6*p7+ 481*p1+ 260*p2+ 1713*p4+ 1219*p5+ 794*p6+
    762*p7- 1231",
    "2923*p1*p2*p3*p5*p6*p7- 4328*p1*p2*p3*p5*p6- 3674*p1*p2*p3*p5*p7-
    3291*p1*p2*p3*p6*p7- 4955*p1*p2*p5*p6*p7- 8*p1*p3*p5*p6*p7-
    135*p2*p3*p5*p6*p7+ 7784*p1*p2*p3*p5+ 3471*p1*p2*p3*p6+ 1544*p1*p2*p5*p6+
    1607*p1*p3*p5*p6+ 1710*p2*p3*p5*p6+ 2434*p1*p2*p3*p7+ 1408*p1*p2*p5*p7-
    215*p1*p3*p5*p7+ 507*p2*p3*p5*p7+ 2208*p1*p2*p6*p7+ 1920*p1*p3*p6*p7-
    389*p2*p3*p6*p7+ 1304*p1*p5*p6*p7+ 2480*p2*p5*p6*p7+ 102*p3*p5*p6*p7-
    2683*p1*p2*p3- 3508*p1*p2*p5- 3505*p1*p3*p5- 2400*p2*p3*p5- 2236*p1*p2*p6-
    1727*p1*p3*p6- 1354*p2*p3*p6- 1022*p1*p5*p6- 2099*p2*p5*p6- 918*p3*p5*p6-
    495*p1*p2*p7- 109*p1*p3*p7+ 474*p2*p3*p7+ 268*p1*p5*p7+ 1084*p2*p5*p7-
    190*p3*p5*p7- 666*p1*p6*p7- 497*p2*p6*p7+ 615*p3*p6*p7- 912*p5*p6*p7+
    473*p1*p2+ 742*p1*p3+ 186*p2*p3+ 1021*p1*p5+ 2556*p2*p5+ 2312*p3*p5+
    1075*p1*p6+ 920*p2*p6+ 164*p3*p6+ 80*p5*p6- 199*p1*p7- 1270*p2*p7-
    1050*p3*p7- 724*p5*p7+ 136*p6*p7+ 740*p1- 474*p2+ 37*p3- 1056*p5+ 303*p6+
    833*p7+ 736",
    "4990*p1*p2*p3*p4*p6*p7- 3067*p1*p2*p3*p4*p6- 1661*p1*p2*p3*p4*p7-
    4064*p1*p2*p3*p6*p7- 223*p1*p2*p4*p6*p7- 5229*p1*p3*p4*p6*p7-
    4636*p2*p3*p4*p6*p7+ 5720*p1*p2*p3*p4+ 4872*p1*p2*p3*p6+ 1643*p1*p2*p4*p6+
    4536*p1*p3*p4*p6+ 2451*p2*p3*p4*p6+ 1264*p1*p2*p3*p7+ 70*p1*p2*p4*p7+
    2213*p1*p3*p4*p7+ 1734*p2*p3*p4*p7+ 1698*p1*p2*p6*p7+ 3799*p1*p3*p6*p7+
    1622*p2*p3*p6*p7+ 901*p1*p4*p6*p7- 496*p2*p4*p6*p7+ 3782*p3*p4*p6*p7-
    5591*p1*p2*p3- 1303*p1*p2*p4- 6383*p1*p3*p4- 2332*p2*p3*p4- 3179*p1*p2*p6-
    6257*p1*p3*p6- 3654*p2*p3*p6- 1830*p1*p4*p6- 1473*p2*p4*p6- 3278*p3*p4*p6-
    1462*p1*p2*p7- 1495*p1*p3*p7- 468*p2*p3*p7- 400*p1*p4*p7+ 431*p2*p4*p7-
    1907*p3*p4*p7- 1547*p1*p6*p7- 214*p2*p6*p7- 1423*p3*p6*p7- 1625*p4*p6*p7+
    5708*p1*p2+ 3809*p1*p3+ 2053*p2*p3+ 2824*p1*p4+ 1122*p2*p4+ 3653*p3*p4+
    3658*p1*p6+ 3001*p2*p6+ 3890*p3*p6+ 2371*p4*p6+ 602*p1*p7+ 185*p2*p7+
    899*p3*p7+ 963*p4*p7+ 560*p6*p7- 4557*p1- 3536*p2- 1635*p3- 2552*p4-
    2595*p6- 207*p7+ 2740",
    "-1407*p1*p2*p3*p4*p5*p7+ 4444*p1*p2*p3*p4*p5+ 2350*p1*p2*p3*p4*p7+
    5424*p1*p2*p3*p5*p7- 2524*p1*p2*p4*p5*p7- 985*p1*p3*p4*p5*p7-
    431*p2*p3*p4*p5*p7- 2662*p1*p2*p3*p4- 5342*p1*p2*p3*p5- 39*p1*p2*p4*p5-
    2525*p1*p3*p4*p5- 2650*p2*p3*p4*p5- 3553*p1*p2*p3*p7- 71*p1*p2*p4*p7-
    3268*p1*p3*p4*p7- 1140*p2*p3*p4*p7- 702*p1*p2*p5*p7- 924*p1*p3*p5*p7-
    2198*p2*p3*p5*p7+ 4087*p1*p4*p5*p7+ 2709*p2*p4*p5*p7+ 587*p3*p4*p5*p7+
    968*p1*p2*p3- 150*p1*p2*p4+ 909*p1*p3*p4+ 4587*p2*p3*p4+ 929*p1*p2*p5+
    1804*p1*p3*p5+ 2226*p2*p3*p5- 916*p1*p4*p5+ 906*p2*p4*p5+ 2735*p3*p4*p5+
    1894*p1*p2*p7+ 2998*p1*p3*p7+ 1611*p2*p3*p7+ 304*p1*p4*p7- 1601*p2*p4*p7+
    2066*p3*p4*p7- 1971*p1*p5*p7- 480*p2*p5*p7- 500*p3*p5*p7- 2617*p4*p5*p7-
    532*p1*p2+ 2016*p1*p3- 2574*p2*p3+ 529*p1*p4- 1251*p2*p4- 2082*p3*p4+
    280*p1*p5- 852*p2*p5- 476*p3*p5- 340*p4*p5- 924*p1*p7+ 253*p2*p7-
    1090*p3*p7+ 170*p4*p7+ 1204*p5*p7- 869*p1+ 1394*p2- 264*p3+ 719*p4+ 219*p5-
    128*p7+ 506",
    "-901*p1*p2*p3*p4*p5*p6+ 1805*p1*p2*p3*p4*p5- 1103*p1*p2*p3*p4*p6-
    1746*p1*p2*p3*p5*p6- 1968*p1*p2*p4*p5*p6+ 3957*p1*p3*p4*p5*p6+
    1293*p2*p3*p4*p5*p6- 523*p1*p2*p3*p4- 2498*p1*p2*p3*p5+ 693*p1*p2*p4*p5-
    2805*p1*p3*p4*p5- 722*p2*p3*p4*p5- 770*p1*p2*p3*p6+ 1088*p1*p2*p4*p6-
    232*p1*p3*p4*p6+ 2657*p2*p3*p4*p6+ 3281*p1*p2*p5*p6- 1066*p1*p3*p5*p6+
    240*p2*p3*p5*p6- 1174*p1*p4*p5*p6+ 1304*p2*p4*p5*p6- 2070*p3*p4*p5*p6+
    2571*p1*p2*p3+ 115*p1*p2*p4+ 3899*p1*p3*p4- 4641*p2*p3*p4- 752*p1*p2*p5+
    1531*p1*p3*p5+ 1178*p2*p3*p5+ 11*p1*p4*p5- 1144*p2*p4*p5- 1701*p3*p4*p5+
    592*p1*p2*p6+ 1140*p1*p3*p6+ 130*p2*p3*p6+ 304*p1*p4*p6- 2273*p2*p4*p6-
    1224*p3*p4*p6- 2*p1*p5*p6- 1090*p2*p5*p6+ 585*p3*p5*p6+ 670*p4*p5*p6-
    1867*p1*p2- 4780*p1*p3+ 1079*p2*p3- 2435*p1*p4+ 2901*p2*p4+ 2073*p3*p4+
    499*p1*p5+ 908*p2*p5+ 323*p3*p5+ 1631*p4*p5- 966*p1*p6- 315*p2*p6-
    481*p3*p6+ 759*p4*p6- 595*p5*p6+ 3233*p1- 1978*p2+ 729*p3- 1184*p4- 40*p5+
    446*p6+ 282"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function yang_1(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 48
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "x21*x45+ x22*x46+ x23*x47+ x24*x48",
    "x17*x45+ x18*x46+ x19*x47+ x20*x48",
    "x13*x45+ x14*x46+ x15*x47+ x16*x48",
    "x10*x46+ x11*x47+ x12*x48+ x45*x9",
    "x45*x5+ x46*x6+ x47*x7+ x48*x8",
    "x1*x45+ x2*x46+ x3*x47+ x4*x48",
    "x21*x41+x22*x42+ x23*x43+ x24*x44",
    "x17*x41+ x18*x42+ x19*x43+ x20*x44",
    "x13*x41+x14*x42+ x15*x43+ x16*x44",
    "x10*x42+ x11*x43+ x12*x44+ x41*x9",
    "x41*x5+x42*x6+ x43*x7+ x44*x8",
    "x1*x41+ x2*x42+ x3*x43+ x4*x44",
    "x21*x37+ x22*x38+x23*x39+ x24*x40",
    "x17*x37+ x18*x38+ x19*x39+ x20*x40",
    "x13*x37+ x14*x38+x15*x39+ x16*x40",
    "x10*x38+ x11*x39+ x12*x40+ x37*x9",
    "x37*x5+ x38*x6+ x39*x7+x40*x8",
    "x1*x37+ x2*x38+ x3*x39+ x4*x40",
    "x21*x33+ x22*x34+ x23*x35+ x24*x36",
    "x17*x33+ x18*x34+ x19*x35+ x20*x36",
    "x13*x33+ x14*x34+ x15*x35+ x16*x36",
    "x10*x34+ x11*x35+ x12*x36+ x33*x9",
    "x33*x5+ x34*x6+ x35*x7+ x36*x8",
    "x1*x33+x2*x34+ x3*x35+ x36*x4",
    "x21*x29+ x22*x30+ x23*x31+ x24*x32",
    "x17*x29+x18*x30+ x19*x31+ x20*x32",
    "x13*x29+ x14*x30+ x15*x31+ x16*x32",
    "x10*x30+x11*x31+ x12*x32+ x29*x9",
    "x29*x5+ x30*x6+ x31*x7+ x32*x8",
    "x1*x29+ x2*x30+x3*x31+ x32*x4",
    "x21*x25+ x22*x26+ x23*x27+ x24*x28",
    "x17*x25+ x18*x26+x19*x27+ x20*x28",
    "x13*x25+ x14*x26+ x15*x27+ x16*x28",
    "x10*x26+ x11*x27+x12*x28+ x25*x9",
    "x25*x5+ x26*x6+ x27*x7+ x28*x8",
    "x1*x25+ x2*x26+ x27*x3+x28*x4",
    "x33*x38*x43*x48- x33*x38*x44*x47- x33*x39*x42*x48+ x33*x39*x44*x46+
    x33*x40*x42*x47- x33*x40*x43*x46- x34*x37*x43*x48+ x34*x37*x44*x47+
    x34*x39*x41*x48- x34*x39*x44*x45- x34*x40*x41*x47+ x34*x40*x43*x45+
    x35*x37*x42*x48- x35*x37*x44*x46- x35*x38*x41*x48+ x35*x38*x44*x45+
    x35*x40*x41*x46- x35*x40*x42*x45- x36*x37*x42*x47+ x36*x37*x43*x46+
    x36*x38*x41*x47- x36*x38*x43*x45- x36*x39*x41*x46+ x36*x39*x42*x45",
    "x29*x38*x43*x48- x29*x38*x44*x47- x29*x39*x42*x48+ x29*x39*x44*x46+
    x29*x40*x42*x47- x29*x40*x43*x46- x30*x37*x43*x48+ x30*x37*x44*x47+
    x30*x39*x41*x48- x30*x39*x44*x45- x30*x40*x41*x47+ x30*x40*x43*x45+
    x31*x37*x42*x48- x31*x37*x44*x46- x31*x38*x41*x48+ x31*x38*x44*x45+
    x31*x40*x41*x46- x31*x40*x42*x45- x32*x37*x42*x47+ x32*x37*x43*x46+
    x32*x38*x41*x47- x32*x38*x43*x45- x32*x39*x41*x46+ x32*x39*x42*x45",
    "x25*x38*x43*x48- x25*x38*x44*x47- x25*x39*x42*x48+ x25*x39*x44*x46+
    x25*x40*x42*x47- x25*x40*x43*x46- x26*x37*x43*x48+ x26*x37*x44*x47+
    x26*x39*x41*x48- x26*x39*x44*x45- x26*x40*x41*x47+ x26*x40*x43*x45+
    x27*x37*x42*x48- x27*x37*x44*x46- x27*x38*x41*x48+ x27*x38*x44*x45+
    x27*x40*x41*x46- x27*x40*x42*x45- x28*x37*x42*x47+ x28*x37*x43*x46+
    x28*x38*x41*x47- x28*x38*x43*x45- x28*x39*x41*x46+ x28*x39*x42*x45",
    "x29*x34*x43*x48- x29*x34*x44*x47- x29*x35*x42*x48+ x29*x35*x44*x46+
    x29*x36*x42*x47- x29*x36*x43*x46- x30*x33*x43*x48+ x30*x33*x44*x47+
    x30*x35*x41*x48- x30*x35*x44*x45- x30*x36*x41*x47+ x30*x36*x43*x45+
    x31*x33*x42*x48- x31*x33*x44*x46- x31*x34*x41*x48+ x31*x34*x44*x45+
    x31*x36*x41*x46- x31*x36*x42*x45- x32*x33*x42*x47+ x32*x33*x43*x46+
    x32*x34*x41*x47- x32*x34*x43*x45- x32*x35*x41*x46+ x32*x35*x42*x45",
    "x25*x34*x43*x48- x25*x34*x44*x47- x25*x35*x42*x48+ x25*x35*x44*x46+
    x25*x36*x42*x47- x25*x36*x43*x46- x26*x33*x43*x48+ x26*x33*x44*x47+
    x26*x35*x41*x48- x26*x35*x44*x45- x26*x36*x41*x47+ x26*x36*x43*x45+
    x27*x33*x42*x48- x27*x33*x44*x46- x27*x34*x41*x48+ x27*x34*x44*x45+
    x27*x36*x41*x46- x27*x36*x42*x45- x28*x33*x42*x47+ x28*x33*x43*x46+
    x28*x34*x41*x47- x28*x34*x43*x45- x28*x35*x41*x46+ x28*x35*x42*x45",
    "x25*x30*x43*x48- x25*x30*x44*x47- x25*x31*x42*x48+ x25*x31*x44*x46+
    x25*x32*x42*x47- x25*x32*x43*x46- x26*x29*x43*x48+ x26*x29*x44*x47+
    x26*x31*x41*x48- x26*x31*x44*x45- x26*x32*x41*x47+ x26*x32*x43*x45+
    x27*x29*x42*x48- x27*x29*x44*x46- x27*x30*x41*x48+ x27*x30*x44*x45+
    x27*x32*x41*x46- x27*x32*x42*x45- x28*x29*x42*x47+ x28*x29*x43*x46+
    x28*x30*x41*x47- x28*x30*x43*x45- x28*x31*x41*x46+ x28*x31*x42*x45",
    "x29*x34*x39*x48- x29*x34*x40*x47- x29*x35*x38*x48+ x29*x35*x40*x46+
    x29*x36*x38*x47- x29*x36*x39*x46- x30*x33*x39*x48+ x30*x33*x40*x47+
    x30*x35*x37*x48- x30*x35*x40*x45- x30*x36*x37*x47+ x30*x36*x39*x45+
    x31*x33*x38*x48- x31*x33*x40*x46- x31*x34*x37*x48+ x31*x34*x40*x45+
    x31*x36*x37*x46- x31*x36*x38*x45- x32*x33*x38*x47+ x32*x33*x39*x46+
    x32*x34*x37*x47- x32*x34*x39*x45- x32*x35*x37*x46+ x32*x35*x38*x45",
    "x25*x34*x39*x48- x25*x34*x40*x47- x25*x35*x38*x48+ x25*x35*x40*x46+
    x25*x36*x38*x47- x25*x36*x39*x46- x26*x33*x39*x48+ x26*x33*x40*x47+
    x26*x35*x37*x48- x26*x35*x40*x45- x26*x36*x37*x47+ x26*x36*x39*x45+
    x27*x33*x38*x48- x27*x33*x40*x46- x27*x34*x37*x48+ x27*x34*x40*x45+
    x27*x36*x37*x46- x27*x36*x38*x45- x28*x33*x38*x47+ x28*x33*x39*x46+
    x28*x34*x37*x47- x28*x34*x39*x45- x28*x35*x37*x46+ x28*x35*x38*x45",
    "x25*x30*x39*x48- x25*x30*x40*x47- x25*x31*x38*x48+ x25*x31*x40*x46+
    x25*x32*x38*x47- x25*x32*x39*x46- x26*x29*x39*x48+ x26*x29*x40*x47+
    x26*x31*x37*x48- x26*x31*x40*x45- x26*x32*x37*x47+ x26*x32*x39*x45+
    x27*x29*x38*x48- x27*x29*x40*x46- x27*x30*x37*x48+ x27*x30*x40*x45+
    x27*x32*x37*x46- x27*x32*x38*x45- x28*x29*x38*x47+ x28*x29*x39*x46+
    x28*x30*x37*x47- x28*x30*x39*x45- x28*x31*x37*x46+ x28*x31*x38*x45",
    "x25*x30*x35*x48- x25*x30*x36*x47- x25*x31*x34*x48+ x25*x31*x36*x46+
    x25*x32*x34*x47- x25*x32*x35*x46- x26*x29*x35*x48+ x26*x29*x36*x47+
    x26*x31*x33*x48- x26*x31*x36*x45- x26*x32*x33*x47+ x26*x32*x35*x45+
    x27*x29*x34*x48- x27*x29*x36*x46- x27*x30*x33*x48+ x27*x30*x36*x45+
    x27*x32*x33*x46- x27*x32*x34*x45- x28*x29*x34*x47+ x28*x29*x35*x46+
    x28*x30*x33*x47- x28*x30*x35*x45- x28*x31*x33*x46+ x28*x31*x34*x45",
    "x29*x34*x39*x44- x29*x34*x40*x43- x29*x35*x38*x44+ x29*x35*x40*x42+
    x29*x36*x38*x43- x29*x36*x39*x42- x30*x33*x39*x44+ x30*x33*x40*x43+
    x30*x35*x37*x44- x30*x35*x40*x41- x30*x36*x37*x43+ x30*x36*x39*x41+
    x31*x33*x38*x44- x31*x33*x40*x42- x31*x34*x37*x44+ x31*x34*x40*x41+
    x31*x36*x37*x42- x31*x36*x38*x41- x32*x33*x38*x43+ x32*x33*x39*x42+
    x32*x34*x37*x43- x32*x34*x39*x41- x32*x35*x37*x42+ x32*x35*x38*x41",
    "x25*x34*x39*x44- x25*x34*x40*x43- x25*x35*x38*x44+ x25*x35*x40*x42+
    x25*x36*x38*x43- x25*x36*x39*x42- x26*x33*x39*x44+ x26*x33*x40*x43+
    x26*x35*x37*x44- x26*x35*x40*x41- x26*x36*x37*x43+ x26*x36*x39*x41+
    x27*x33*x38*x44- x27*x33*x40*x42- x27*x34*x37*x44+ x27*x34*x40*x41+
    x27*x36*x37*x42- x27*x36*x38*x41- x28*x33*x38*x43+ x28*x33*x39*x42+
    x28*x34*x37*x43- x28*x34*x39*x41- x28*x35*x37*x42+ x28*x35*x38*x41",
    "x25*x30*x39*x44- x25*x30*x40*x43- x25*x31*x38*x44+ x25*x31*x40*x42+
    x25*x32*x38*x43- x25*x32*x39*x42- x26*x29*x39*x44+ x26*x29*x40*x43+
    x26*x31*x37*x44- x26*x31*x40*x41- x26*x32*x37*x43+ x26*x32*x39*x41+
    x27*x29*x38*x44- x27*x29*x40*x42- x27*x30*x37*x44+ x27*x30*x40*x41+
    x27*x32*x37*x42- x27*x32*x38*x41- x28*x29*x38*x43+ x28*x29*x39*x42+
    x28*x30*x37*x43- x28*x30*x39*x41- x28*x31*x37*x42+ x28*x31*x38*x41",
    "x25*x30*x35*x44- x25*x30*x36*x43- x25*x31*x34*x44+ x25*x31*x36*x42+
    x25*x32*x34*x43- x25*x32*x35*x42- x26*x29*x35*x44+ x26*x29*x36*x43+
    x26*x31*x33*x44- x26*x31*x36*x41- x26*x32*x33*x43+ x26*x32*x35*x41+
    x27*x29*x34*x44- x27*x29*x36*x42- x27*x30*x33*x44+ x27*x30*x36*x41+
    x27*x32*x33*x42- x27*x32*x34*x41- x28*x29*x34*x43+ x28*x29*x35*x42+
    x28*x30*x33*x43- x28*x30*x35*x41- x28*x31*x33*x42+ x28*x31*x34*x41",
    "x25*x30*x35*x40- x25*x30*x36*x39- x25*x31*x34*x40+ x25*x31*x36*x38+
    x25*x32*x34*x39- x25*x32*x35*x38- x26*x29*x35*x40+ x26*x29*x36*x39+
    x26*x31*x33*x40- x26*x31*x36*x37- x26*x32*x33*x39+ x26*x32*x35*x37+
    x27*x29*x34*x40- x27*x29*x36*x38- x27*x30*x33*x40+ x27*x30*x36*x37+
    x27*x32*x33*x38- x27*x32*x34*x37- x28*x29*x34*x39+ x28*x29*x35*x38+
    x28*x30*x33*x39- x28*x30*x35*x37- x28*x31*x33*x38+ x28*x31*x34*x37",
    "-x10*x13*x19*x24+ x10*x13*x20*x23+ x10*x15*x17*x24- x10*x15*x20*x21-
    x10*x16*x17*x23+ x10*x16*x19*x21+ x11*x13*x18*x24- x11*x13*x20*x22-
    x11*x14*x17*x24+ x11*x14*x20*x21+ x11*x16*x17*x22- x11*x16*x18*x21-
    x12*x13*x18*x23+ x12*x13*x19*x22+ x12*x14*x17*x23- x12*x14*x19*x21-
    x12*x15*x17*x22+ x12*x15*x18*x21+ x14*x19*x24*x9- x14*x20*x23*x9-
    x15*x18*x24*x9+ x15*x20*x22*x9+ x16*x18*x23*x9- x16*x19*x22*x9",
    "-x13*x18*x23*x8+ x13*x18*x24*x7+ x13*x19*x22*x8- x13*x19*x24*x6-
    x13*x20*x22*x7+ x13*x20*x23*x6+ x14*x17*x23*x8- x14*x17*x24*x7-
    x14*x19*x21*x8+ x14*x19*x24*x5+ x14*x20*x21*x7- x14*x20*x23*x5-
    x15*x17*x22*x8+ x15*x17*x24*x6+ x15*x18*x21*x8- x15*x18*x24*x5-
    x15*x20*x21*x6+ x15*x20*x22*x5+ x16*x17*x22*x7- x16*x17*x23*x6-
    x16*x18*x21*x7+ x16*x18*x23*x5+ x16*x19*x21*x6- x16*x19*x22*x5",
    "x1*x14*x19*x24- x1*x14*x20*x23- x1*x15*x18*x24+ x1*x15*x20*x22+
    x1*x16*x18*x23- x1*x16*x19*x22- x13*x18*x23*x4+ x13*x18*x24*x3-
    x13*x19*x2*x24+ x13*x19*x22*x4+ x13*x2*x20*x23- x13*x20*x22*x3+
    x14*x17*x23*x4- x14*x17*x24*x3- x14*x19*x21*x4+ x14*x20*x21*x3+
    x15*x17*x2*x24- x15*x17*x22*x4+ x15*x18*x21*x4- x15*x2*x20*x21-
    x16*x17*x2*x23+ x16*x17*x22*x3- x16*x18*x21*x3+ x16*x19*x2*x21",
    "x10*x17*x23*x8- x10*x17*x24*x7- x10*x19*x21*x8+ x10*x19*x24*x5+
    x10*x20*x21*x7- x10*x20*x23*x5- x11*x17*x22*x8+ x11*x17*x24*x6+
    x11*x18*x21*x8- x11*x18*x24*x5- x11*x20*x21*x6+ x11*x20*x22*x5+
    x12*x17*x22*x7- x12*x17*x23*x6- x12*x18*x21*x7+ x12*x18*x23*x5+
    x12*x19*x21*x6- x12*x19*x22*x5- x18*x23*x8*x9+ x18*x24*x7*x9+ x19*x22*x8*x9-
    x19*x24*x6*x9- x20*x22*x7*x9+ x20*x23*x6*x9",
    "x1*x10*x19*x24- x1*x10*x20*x23-x1*x11*x18*x24+ x1*x11*x20*x22+
    x1*x12*x18*x23- x1*x12*x19*x22+ x10*x17*x23*x4- x10*x17*x24*x3-
    x10*x19*x21*x4+ x10*x20*x21*x3+ x11*x17*x2*x24- x11*x17*x22*x4+
    x11*x18*x21*x4- x11*x2*x20*x21- x12*x17*x2*x23+ x12*x17*x22*x3-
    x12*x18*x21*x3+ x12*x19*x2*x21- x18*x23*x4*x9+ x18*x24*x3*x9- x19*x2*x24*x9+
    x19*x22*x4*x9+ x2*x20*x23*x9- x20*x22*x3*x9",
    "x1*x18*x23*x8- x1*x18*x24*x7- x1*x19*x22*x8+ x1*x19*x24*x6+ x1*x20*x22*x7-
    x1*x20*x23*x6- x17*x2*x23*x8+ x17*x2*x24*x7+ x17*x22*x3*x8- x17*x22*x4*x7+
    x17*x23*x4*x6- x17*x24*x3*x6- x18*x21*x3*x8+ x18*x21*x4*x7- x18*x23*x4*x5+
    x18*x24*x3*x5+ x19*x2*x21*x8- x19*x2*x24*x5- x19*x21*x4*x6+ x19*x22*x4*x5-
    x2*x20*x21*x7+ x2*x20*x23*x5+ x20*x21*x3*x6- x20*x22*x3*x5",
    "x10*x13*x23*x8- x10*x13*x24*x7- x10*x15*x21*x8+ x10*x15*x24*x5+
    x10*x16*x21*x7- x10*x16*x23*x5- x11*x13*x22*x8+ x11*x13*x24*x6+
    x11*x14*x21*x8- x11*x14*x24*x5- x11*x16*x21*x6+ x11*x16*x22*x5+
    x12*x13*x22*x7- x12*x13*x23*x6- x12*x14*x21*x7+ x12*x14*x23*x5+
    x12*x15*x21*x6- x12*x15*x22*x5- x14*x23*x8*x9+ x14*x24*x7*x9+ x15*x22*x8*x9-
    x15*x24*x6*x9- x16*x22*x7*x9+ x16*x23*x6*x9",
    "x1*x10*x15*x24- x1*x10*x16*x23- x1*x11*x14*x24+ x1*x11*x16*x22+
    x1*x12*x14*x23- x1*x12*x15*x22+ x10*x13*x23*x4- x10*x13*x24*x3-
    x10*x15*x21*x4+ x10*x16*x21*x3+ x11*x13*x2*x24- x11*x13*x22*x4+
    x11*x14*x21*x4- x11*x16*x2*x21- x12*x13*x2*x23+ x12*x13*x22*x3-
    x12*x14*x21*x3+ x12*x15*x2*x21- x14*x23*x4*x9+ x14*x24*x3*x9- x15*x2*x24*x9+
    x15*x22*x4*x9+ x16*x2*x23*x9- x16*x22*x3*x9",
    "x1*x14*x23*x8- x1*x14*x24*x7- x1*x15*x22*x8+ x1*x15*x24*x6+ x1*x16*x22*x7-
    x1*x16*x23*x6- x13*x2*x23*x8+ x13*x2*x24*x7+ x13*x22*x3*x8- x13*x22*x4*x7+
    x13*x23*x4*x6- x13*x24*x3*x6- x14*x21*x3*x8+ x14*x21*x4*x7- x14*x23*x4*x5+
    x14*x24*x3*x5+ x15*x2*x21*x8- x15*x2*x24*x5- x15*x21*x4*x6+ x15*x22*x4*x5-
    x16*x2*x21*x7+ x16*x2*x23*x5+ x16*x21*x3*x6- x16*x22*x3*x5",
    "x1*x10*x23*x8- x1*x10*x24*x7- x1*x11*x22*x8+ x1*x11*x24*x6+ x1*x12*x22*x7-
    x1*x12*x23*x6- x10*x21*x3*x8+ x10*x21*x4*x7- x10*x23*x4*x5+ x10*x24*x3*x5+
    x11*x2*x21*x8- x11*x2*x24*x5- x11*x21*x4*x6+ x11*x22*x4*x5- x12*x2*x21*x7+
    x12*x2*x23*x5+ x12*x21*x3*x6- x12*x22*x3*x5- x2*x23*x8*x9+ x2*x24*x7*x9+
    x22*x3*x8*x9- x22*x4*x7*x9+ x23*x4*x6*x9- x24*x3*x6*x9",
    "x10*x13*x19*x8- x10*x13*x20*x7- x10*x15*x17*x8+ x10*x15*x20*x5+
    x10*x16*x17*x7- x10*x16*x19*x5- x11*x13*x18*x8+ x11*x13*x20*x6+
    x11*x14*x17*x8- x11*x14*x20*x5- x11*x16*x17*x6+ x11*x16*x18*x5+
    x12*x13*x18*x7- x12*x13*x19*x6- x12*x14*x17*x7+ x12*x14*x19*x5+
    x12*x15*x17*x6- x12*x15*x18*x5- x14*x19*x8*x9+ x14*x20*x7*x9+ x15*x18*x8*x9-
    x15*x20*x6*x9- x16*x18*x7*x9+ x16*x19*x6*x9",
    "x1*x10*x15*x20- x1*x10*x16*x19- x1*x11*x14*x20+ x1*x11*x16*x18+
    x1*x12*x14*x19- x1*x12*x15*x18+ x10*x13*x19*x4- x10*x13*x20*x3-
    x10*x15*x17*x4+ x10*x16*x17*x3- x11*x13*x18*x4+ x11*x13*x2*x20+
    x11*x14*x17*x4- x11*x16*x17*x2+ x12*x13*x18*x3- x12*x13*x19*x2-
    x12*x14*x17*x3+ x12*x15*x17*x2- x14*x19*x4*x9+ x14*x20*x3*x9+ x15*x18*x4*x9-
    x15*x2*x20*x9- x16*x18*x3*x9+ x16*x19*x2*x9",
    "x1*x14*x19*x8- x1*x14*x20*x7- x1*x15*x18*x8+ x1*x15*x20*x6+ x1*x16*x18*x7-
    x1*x16*x19*x6+ x13*x18*x3*x8- x13*x18*x4*x7- x13*x19*x2*x8+ x13*x19*x4*x6+
    x13*x2*x20*x7- x13*x20*x3*x6- x14*x17*x3*x8+ x14*x17*x4*x7- x14*x19*x4*x5+
    x14*x20*x3*x5+ x15*x17*x2*x8- x15*x17*x4*x6+ x15*x18*x4*x5- x15*x2*x20*x5-
    x16*x17*x2*x7+ x16*x17*x3*x6- x16*x18*x3*x5+ x16*x19*x2*x5",
    "x1*x10*x19*x8- x1*x10*x20*x7- x1*x11*x18*x8+ x1*x11*x20*x6+ x1*x12*x18*x7-
    x1*x12*x19*x6- x10*x17*x3*x8+ x10*x17*x4*x7- x10*x19*x4*x5+ x10*x20*x3*x5+
    x11*x17*x2*x8- x11*x17*x4*x6+ x11*x18*x4*x5- x11*x2*x20*x5- x12*x17*x2*x7+
    x12*x17*x3*x6- x12*x18*x3*x5+ x12*x19*x2*x5+ x18*x3*x8*x9- x18*x4*x7*x9-
    x19*x2*x8*x9+ x19*x4*x6*x9+ x2*x20*x7*x9- x20*x3*x6*x9",
    "x1*x10*x15*x8- x1*x10*x16*x7- x1*x11*x14*x8+ x1*x11*x16*x6+ x1*x12*x14*x7-
    x1*x12*x15*x6- x10*x13*x3*x8+ x10*x13*x4*x7- x10*x15*x4*x5+ x10*x16*x3*x5+
    x11*x13*x2*x8- x11*x13*x4*x6+ x11*x14*x4*x5- x11*x16*x2*x5- x12*x13*x2*x7+
    x12*x13*x3*x6- x12*x14*x3*x5+ x12*x15*x2*x5+ x14*x3*x8*x9- x14*x4*x7*x9-
    x15*x2*x8*x9+ x15*x4*x6*x9+ x16*x2*x7*x9- x16*x3*x6*x9"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function ideal_q_andreas_gerhard(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 36
  # generate dummy array of n strings for generating
  # singular polynomial ring
  vars = Array{String, 1}(undef, n)
  vars =
    ["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10","x11","x12",
    "y1","y2","y3","y4","y5","y6","y7","y8","y9","y10","y11","y12",
    "z1","z2","z3","z4","z5","z6","z7","z8","z9","z10","z11","z12"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "-x12*y4*y11*z1*z10+x11*y4*y12*z1*z10+x12*y1*y11*z4*z10-x11*y1*y12*z4*z10+x12*y4*y10*z1*z11-x4*y10*y12*z1*z11-x12*y1*y10*z4*z11+x1*y10*y12*z4*z11+x4*y1*y12*z10*z11-x1*y4*y12*z10*z11-x11*y4*y10*z1*z12+x4*y10*y11*z1*z12+x11*y1*y10*z4*z12-x1*y10*y11*z4*z12-x4*y1*y11*z10*z12+x1*y4*y11*z10*z12",
    "-x9*y4*y8*z1*z7+x8*y4*y9*z1*z7+x9*y1*y8*z4*z7-x8*y1*y9*z4*z7+x9*y4*y7*z1*z8-x4*y7*y9*z1*z8-x9*y1*y7*z4*z8+x1*y7*y9*z4*z8+x4*y1*y9*z7*z8-x1*y4*y9*z7*z8-x8*y4*y7*z1*z9+x4*y7*y8*z1*z9+x8*y1*y7*z4*z9-x1*y7*y8*z4*z9-x4*y1*y8*z7*z9+x1*y4*y8*z7*z9",
    "x11*x12*y5*y8*y9*z4*z6-x8*x12*y5*y9*y11*z4*z6-x9*x11*y5*y8*y12*z4*z6+x8*x9*y5*y11*y12*z4*z6-x11*x12*y4*y5*y9*z6*z8+x5*x12*y4*y9*y11*z6*z8+x9*x11*y4*y5*y12*z6*z8-x5*x9*y4*y11*y12*z6*z8-x11*x12*y5*y6*y8*z4*z9+x8*x12*y5*y6*y11*z4*z9+x5*x11*y6*y8*y12*z4*z9-x5*x8*y6*y11*y12*z4*z9-x5*x11*y4*y8*y12*z6*z9+x4*x11*y5*y8*y12*z6*z9+x5*x8*y4*y11*y12*z6*z9-x4*x8*y5*y11*y12*z6*z9+x11*x12*y4*y5*y6*z8*z9-x5*x12*y4*y6*y11*z8*z9-x4*x11*y5*y6*y12*z8*z9+x4*x5*y6*y11*y12*z8*z9+x8*x12*y4*y5*y9*z6*z11-x5*x12*y4*y8*y9*z6*z11-x8*x9*y4*y5*y12*z6*z11+x5*x9*y4*y8*y12*z6*z11-x8*x12*y4*y5*y6*z9*z11+x5*x12*y4*y6*y8*z9*z11+x4*x8*y5*y6*y12*z9*z11-x4*x5*y6*y8*y12*z9*z11+x9*x11*y5*y6*y8*z4*z12-x5*x11*y6*y8*y9*z4*z12-x8*x9*y5*y6*y11*z4*z12+x5*x8*y6*y9*y11*z4*z12+x5*x11*y4*y8*y9*z6*z12-x4*x11*y5*y8*y9*z6*z12-x5*x8*y4*y9*y11*z6*z12+x4*x8*y5*y9*y11*z6*z12-x9*x11*y4*y5*y6*z8*z12+x4*x11*y5*y6*y9*z8*z12+x5*x9*y4*y6*y11*z8*z12-x4*x5*y6*y9*y11*z8*z12+x8*x9*y4*y5*y6*z11*z12-x5*x9*y4*y6*y8*z11*z12-x4*x8*y5*y6*y9*z11*z12+x4*x5*y6*y8*y9*z11*z12",
    "-x11*y8*z5+x8*y11*z5+x11*y5*z8-x5*y11*z8-x8*y5*z11+x5*y8*z11",
    "x11*x12*y2*y8*y9*z1*z3-x8*x12*y2*y9*y11*z1*z3-x9*x11*y2*y8*y12*z1*z3+x8*x9*y2*y11*y12*z1*z3-x11*x12*y1*y2*y9*z3*z8+x2*x12*y1*y9*y11*z3*z8+x9*x11*y1*y2*y12*z3*z8-x2*x9*y1*y11*y12*z3*z8-x11*x12*y2*y3*y8*z1*z9+x8*x12*y2*y3*y11*z1*z9+x2*x11*y3*y8*y12*z1*z9-x2*x8*y3*y11*y12*z1*z9-x2*x11*y1*y8*y12*z3*z9+x1*x11*y2*y8*y12*z3*z9+x2*x8*y1*y11*y12*z3*z9-x1*x8*y2*y11*y12*z3*z9+x11*x12*y1*y2*y3*z8*z9-x2*x12*y1*y3*y11*z8*z9-x1*x11*y2*y3*y12*z8*z9+x1*x2*y3*y11*y12*z8*z9+x8*x12*y1*y2*y9*z3*z11-x2*x12*y1*y8*y9*z3*z11-x8*x9*y1*y2*y12*z3*z11+x2*x9*y1*y8*y12*z3*z11-x8*x12*y1*y2*y3*z9*z11+x2*x12*y1*y3*y8*z9*z11+x1*x8*y2*y3*y12*z9*z11-x1*x2*y3*y8*y12*z9*z11+x9*x11*y2*y3*y8*z1*z12-x2*x11*y3*y8*y9*z1*z12-x8*x9*y2*y3*y11*z1*z12+x2*x8*y3*y9*y11*z1*z12+x2*x11*y1*y8*y9*z3*z12-x1*x11*y2*y8*y9*z3*z12-x2*x8*y1*y9*y11*z3*z12+x1*x8*y2*y9*y11*z3*z12-x9*x11*y1*y2*y3*z8*z12+x1*x11*y2*y3*y9*z8*z12+x2*x9*y1*y3*y11*z8*z12-x1*x2*y3*y9*y11*z8*z12+x8*x9*y1*y2*y3*z11*z12-x2*x9*y1*y3*y8*z11*z12-x1*x8*y2*y3*y9*z11*z12+x1*x2*y3*y8*y9*z11*z12",
    "-x11*y8*z2+x8*y11*z2+x11*y2*z8-x2*y11*z8-x8*y2*z11+x2*y8*z11",
    "-x10*x12*y4*y11*z1+x4*x12*y10*y11*z1+x10*x11*y4*y12*z1-x4*x11*y10*y12*z1+x10*x12*y1*y11*z4-x1*x12*y10*y11*z4-x10*x11*y1*y12*z4+x1*x11*y10*y12*z4-x4*x12*y1*y10*z11+x1*x12*y4*y10*z11+x4*x10*y1*y12*z11-x1*x10*y4*y12*z11+x4*x11*y1*y10*z12-x1*x11*y4*y10*z12-x4*x10*y1*y11*z12+x1*x10*y4*y11*z12",
    "-x7*x9*y4*y8*z1+x4*x9*y7*y8*z1+x7*x8*y4*y9*z1-x4*x8*y7*y9*z1+x7*x9*y1*y8*z4-x1*x9*y7*y8*z4-x7*x8*y1*y9*z4+x1*x8*y7*y9*z4-x4*x9*y1*y7*z8+x1*x9*y4*y7*z8+x4*x7*y1*y9*z8-x1*x7*y4*y9*z8+x4*x8*y1*y7*z9-x1*x8*y4*y7*z9-x4*x7*y1*y8*z9+x1*x7*y4*y8*z9",
    "x6*x11*x12*y5*y8*y9*z4-x5*x11*x12*y6*y8*y9*z4-x6*x8*x12*y5*y9*y11*z4+x5*x8*x12*y6*y9*y11*z4-x6*x9*x11*y5*y8*y12*z4+x5*x9*x11*y6*y8*y12*z4+x6*x8*x9*y5*y11*y12*z4-x5*x8*x9*y6*y11*y12*z4-x6*x11*x12*y4*y5*y9*z8+x4*x11*x12*y5*y6*y9*z8+x5*x6*x12*y4*y9*y11*z8-x4*x5*x12*y6*y9*y11*z8+x6*x9*x11*y4*y5*y12*z8-x4*x9*x11*y5*y6*y12*z8-x5*x6*x9*y4*y11*y12*z8+x4*x5*x9*y6*y11*y12*z8+x5*x11*x12*y4*y6*y8*z9-x4*x11*x12*y5*y6*y8*z9-x5*x8*x12*y4*y6*y11*z9+x4*x8*x12*y5*y6*y11*z9-x5*x6*x11*y4*y8*y12*z9+x4*x6*x11*y5*y8*y12*z9+x5*x6*x8*y4*y11*y12*z9-x4*x6*x8*y5*y11*y12*z9+x6*x8*x12*y4*y5*y9*z11-x4*x8*x12*y5*y6*y9*z11-x5*x6*x12*y4*y8*y9*z11+x4*x5*x12*y6*y8*y9*z11-x6*x8*x9*y4*y5*y12*z11+x4*x8*x9*y5*y6*y12*z11+x5*x6*x9*y4*y8*y12*z11-x4*x5*x9*y6*y8*y12*z11-x5*x9*x11*y4*y6*y8*z12+x4*x9*x11*y5*y6*y8*z12+x5*x6*x11*y4*y8*y9*z12-x4*x6*x11*y5*y8*y9*z12+x5*x8*x9*y4*y6*y11*z12-x4*x8*x9*y5*y6*y11*z12-x5*x6*x8*y4*y9*y11*z12+x4*x6*x8*y5*y9*y11*z12",
    "x3*x11*x12*y2*y8*y9*z1-x2*x11*x12*y3*y8*y9*z1-x3*x8*x12*y2*y9*y11*z1+x2*x8*x12*y3*y9*y11*z1-x3*x9*x11*y2*y8*y12*z1+x2*x9*x11*y3*y8*y12*z1+x3*x8*x9*y2*y11*y12*z1-x2*x8*x9*y3*y11*y12*z1-x3*x11*x12*y1*y2*y9*z8+x1*x11*x12*y2*y3*y9*z8+x2*x3*x12*y1*y9*y11*z8-x1*x2*x12*y3*y9*y11*z8+x3*x9*x11*y1*y2*y12*z8-x1*x9*x11*y2*y3*y12*z8-x2*x3*x9*y1*y11*y12*z8+x1*x2*x9*y3*y11*y12*z8+x2*x11*x12*y1*y3*y8*z9-x1*x11*x12*y2*y3*y8*z9-x2*x8*x12*y1*y3*y11*z9+x1*x8*x12*y2*y3*y11*z9-x2*x3*x11*y1*y8*y12*z9+x1*x3*x11*y2*y8*y12*z9+x2*x3*x8*y1*y11*y12*z9-x1*x3*x8*y2*y11*y12*z9+x3*x8*x12*y1*y2*y9*z11-x1*x8*x12*y2*y3*y9*z11-x2*x3*x12*y1*y8*y9*z11+x1*x2*x12*y3*y8*y9*z11-x3*x8*x9*y1*y2*y12*z11+x1*x8*x9*y2*y3*y12*z11+x2*x3*x9*y1*y8*y12*z11-x1*x2*x9*y3*y8*y12*z11-x2*x9*x11*y1*y3*y8*z12+x1*x9*x11*y2*y3*y8*z12+x2*x3*x11*y1*y8*y9*z12-x1*x3*x11*y2*y8*y9*z12+x2*x8*x9*y1*y3*y11*z12-x1*x8*x9*y2*y3*y11*z12-x2*x3*x8*y1*y9*y11*z12+x1*x3*x8*y2*y9*y11*z12"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

#==========================
EXAMPLES BY ZHANG / PHYSICS
==========================#
function zhang_xxz_10_5(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 18
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "x14*(-2 + x3)",
    "680*x14 - 257*x15 + 16*x15*x3 + 16*x14*x4",
    "-185040*x14 + 10880*x15 - 65537*x16 + 256*x16*x3 + 256*x15*x4 + 256*x14*x5",
    "31464960*x14 - 368640*x15 + 2622080*x16 - 16777217*x17 + 4096*x17*x3 + 4096*x16*x4 + 4096*x15*x5 + 4096*x14*x6",
    "-3523269120*x14 + 33423360*x15 - 47370240*x16 + 671089280*x17 - 4294967297*x18 + 65536*x18*x3 + 65536*x17*x4 + 65536*x16*x5 + 65536*x15*x6 + 65536*x14*x7",
    "-1099511627777 + 270583197696*x14 - 3536977920*x15 + 534773760*x16 - 12079779840*x17 + 171798692480*x18 + 1048576*x3 + 1048576*x18*x4 + 1048576*x17*x5 + 1048576*x16*x6 + 1048576*x15*x7 + 1048576*x14*x8",
    "343597383685 - 112742898240*x14 + 2114445312*x15 - 55050240*x16 + 1006878720*x17 - 24159192480*x18 + 131072*x4 + 131072*x18*x5 + 131072*x17*x6 + 131072*x16*x7 + 131072*x15*x8 + 131072*x14*x9",
    "-193273528365 + 128849019360*x14 + 65536*x10*x14 - 3523269120*x15 + 70189056*x16 - 221061120*x17 + 8053071360*x18 + 65536*x5 + 65536*x18*x6 + 65536*x17*x7 + 65536*x16*x8 + 65536*x15*x9",
    "128849019360 - 193273528365*x14 + 65536*x11*x14 + 8053071360*x15 + 65536*x10*x15 - 221061120*x16 + 70189056*x17 - 3523269120*x18 + 65536*x6 + 65536*x18*x7 + 65536*x17*x8 + 65536*x16*x9",
    "-112742898240 + 343597383685*x14 + 131072*x12*x14 - 24159192480*x15 + 131072*x11*x15 + 1006878720*x16 + 131072*x10*x16 - 55050240*x17 + 2114445312*x18 + 131072*x7 + 131072*x18*x8 + 131072*x17*x9",
    "-2 + x13",
    "270583197696 - 1099511627777*x14 + 1048576*x13*x14 + 171798692480*x15 + 1048576*x12*x15 - 12079779840*x16 + 1048576*x11*x16 + 534773760*x17 + 1048576*x10*x17 - 3536977920*x18 + 1048576*x8 + 1048576*x18*x9",
    "-3523269120 - 4294967297*x15 + 65536*x13*x15 + 671089280*x16 + 65536*x12*x16 - 47370240*x17 + 65536*x11*x17 + 33423360*x18 + 65536*x10*x18 + 65536*x9",
    "31464960 + 4096*x10 - 16777217*x16 + 4096*x13*x16 + 2622080*x17 + 4096*x12*x17 - 368640*x18 + 4096*x11*x18",
    "-185040 + 256*x11 - 65537*x17 + 256*x13*x17 + 10880*x18 + 256*x12*x18",
    "680 + 16*x12 - 257*x18 + 16*x13*x18",
    "-1024 + 1024*x1 + 1048577*x1*x14 + 1024*x1*x14^2 + 262148*x1*x15 + 4352*x1*x14*x15 + 1024*x1*x15^2 + 65552*x1*x16 + 16448*x1*x14*x16 + 4352*x1*x15*x16 + 1024*x1*x16^2 + 16448*x1*x17 + 65552*x1*x14*x17 + 16448*x1*x15*x17 + 4352*x1*x16*x17 + 1024*x1*x17^2 + 4352*x1*x18 + 262148*x1*x14*x18 + 65552*x1*x15*x18 + 16448*x1*x16*x18 + 4352*x1*x17*x18 + 1024*x1*x18^2",
    "-1 + x14*x2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_xxz_11_5(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 19
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
      "x15*(5 + 2*x3)",
      "-880*x15 + 1025*x16 + 32*x16*x3 + 32*x15*x4",
      "228800*x15 - 45760*x16 + 262145*x17 + 512*x17*x3 + 512*x16*x4 + 512*x15*x5",
      "-43296000*x15 + 1126400*x16 - 11535040*x17 + 67108865*x18 + 8192*x18*x3 + 8192*x17*x4 + 8192*x16*x5 + 8192*x15*x6",
      "5536819200*x15 - 54067200*x16 + 230912000*x17 - 2952790720*x18 + 17179869185*x19 + 131072*x19*x3 + 131072*x18*x4 + 131072*x17*x5 + 131072*x16*x6 + 131072*x15*x7",
      "4398046511105 - 496070615040*x15 + 5622988800*x16 - 2811494400*x17 + 59056025600*x18 - 755914244800*x19 + 2097152*x3 + 2097152*x19*x4 + 2097152*x18*x5 + 2097152*x17*x6 + 2097152*x16*x7 + 2097152*x15*x8",
      "-3023656976395 + 496068840960*x15 - 7758643200*x16 + 432537600*x17 - 11073638400*x18 + 236223204800*x19 + 524288*x4 + 524288*x19*x5 + 524288*x18*x6 + 524288*x17*x7 + 524288*x16*x8 + 524288*x15*x9",
      "944892805175 - 354334807200*x15 + 131072*x10*x15 + 7751546880*x16 - 151388160*x17 + 1385472000*x18 - 44291860800*x19 + 131072*x5 + 131072*x19*x6 + 131072*x18*x7 + 131072*x17*x8 + 131072*x16*x9",
      "-177167401125 + 177167401125*x15 + 32768*x11*x15 - 5536502400*x16 + 32768*x10*x16 + 123002880*x17 - 123002880*x18 + 5536502400*x19 + 32768*x6 + 32768*x19*x7 + 32768*x18*x8 + 32768*x17*x9",
      "354334807200 - 944892805175*x15 + 131072*x12*x15 + 44291860800*x16 + 131072*x11*x16 - 1385472000*x17 + 131072*x10*x17 + 151388160*x18 - 7751546880*x19 + 131072*x7 + 131072*x19*x8 + 131072*x18*x9",
      "-496068840960 + 3023656976395*x15 + 524288*x13*x15 - 236223204800*x16 + 524288*x12*x16 + 11073638400*x17 + 524288*x11*x17 - 432537600*x18 + 524288*x10*x18 + 7758643200*x19 + 524288*x8 + 524288*x19*x9",
      "-5 + 2*x14",
      "496070615040 - 4398046511105*x15 + 2097152*x14*x15 + 755914244800*x16 + 2097152*x13*x16 - 59056025600*x17 + 2097152*x12*x17 + 2811494400*x18 + 2097152*x11*x18 - 5622988800*x19 + 2097152*x10*x19 + 2097152*x9",
      "-5536819200 + 131072*x10 - 17179869185*x16 + 131072*x14*x16 + 2952790720*x17 + 131072*x13*x17 - 230912000*x18 + 131072*x12*x18 + 54067200*x19 + 131072*x11*x19",
      "43296000 + 8192*x11 - 67108865*x17 + 8192*x14*x17 + 11535040*x18 + 8192*x13*x18 - 1126400*x19 + 8192*x12*x19",
      "-228800 + 512*x12 - 262145*x18 + 512*x14*x18 + 45760*x19 + 512*x13*x19",
      "880 + 32*x13 - 1025*x19 + 32*x14*x19",
      "-1024 + 1024*x1 + 1048577*x1*x15 + 1024*x1*x15^2 + 262148*x1*x16 + 4352*x1*x15*x16 + 1024*x1*x16^2 + 65552*x1*x17 + 16448*x1*x15*x17 + 4352*x1*x16*x17 + 1024*x1*x17^2 + 16448*x1*x18 + 65552*x1*x15*x18 + 16448*x1*x16*x18 + 4352*x1*x17*x18 + 1024*x1*x18^2 + 4352*x1*x19 + 262148*x1*x15*x19 + 65552*x1*x16*x19 + 16448*x1*x17*x19 + 4352*x1*x18*x19 + 1024*x1*x19^2",
      "-1 + x15*x2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_xxz_12_6(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 21
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "x16*(-2 + x3)",
    "816*x16 - 257*x17 + 16*x17*x3 + 16*x16*x4",
    "-271392*x16 + 13056*x17 - 65537*x18 + 256*x18*x3 + 256*x17*x4 + 256*x16*x5",
    "57685760*x16 - 540672*x17 + 3146496*x18 - 16777217*x19 + 4096*x19*x3 + 4096*x18*x4 + 4096*x17*x5 + 4096*x16*x6",
    "-8304848640*x16 + 61276160*x17 - 69476352*x18 + 805307136*x19 - 4294967297*x20 + 65536*x20*x3 + 65536*x19*x4 + 65536*x18*x5 + 65536*x17*x6 + 65536*x16*x7",
    "850404335616*x16 - 8337162240*x17 + 980418560*x18 - 17717010432*x19 + 206158430976*x20 - 1099511627777*x21 + 1048576*x21*x3 + 1048576*x20*x4 + 1048576*x19*x5 + 1048576*x18*x6 + 1048576*x17*x7 + 1048576*x16*x8",
    "-281474976710657 - 63496800288768*x16 + 850611142656*x17 - 16609443840*x18 + 236280872960*x19 - 4535485734912*x20 + 52776558134016*x21 + 16777216*x3 + 16777216*x21*x4 + 16777216*x20*x5 + 16777216*x19*x6 + 16777216*x18*x7 + 16777216*x17*x8 + 16777216*x16*x9",
    "52776558133251 + 13606456444416*x16 + 1048576*x10*x16 - 248038146048*x17 + 3529506816*x18 - 8337162240*x19 + 236223426560*x20 - 4535485465632*x21 + 1048576*x4 + 1048576*x21*x5 + 1048576*x20*x6 + 1048576*x19*x7 + 1048576*x18*x8 + 1048576*x17*x9",
    "-36283883716641 - 17008070496120*x16 + 524288*x11*x16 + 425202167808*x17 + 524288*x10*x17 - 7781351424*x18 + 1764753408*x19 - 66438789120*x20 + 1889785617280*x21 + 524288*x5 + 524288*x21*x6 + 524288*x20*x7 + 524288*x19*x8 + 524288*x18*x9",
    "3779571220535 + 3779571220535*x16 + 65536*x12*x16 - 132875558640*x17 + 65536*x11*x17 + 3322699776*x18 + 65536*x10*x18 - 121110528*x19 + 3322699776*x20 - 132875558640*x21 + 65536*x6 + 65536*x21*x7 + 65536*x20*x8 + 65536*x19*x9",
    "-17008070496120 - 36283883716641*x16 + 524288*x13*x16 + 1889785617280*x17 + 524288*x12*x17 - 66438789120*x18 + 524288*x11*x18 + 1764753408*x19 + 524288*x10*x19 - 7781351424*x20 + 425202167808*x21 + 524288*x7 + 524288*x21*x8 + 524288*x20*x9",
    "13606456444416 + 52776558133251*x16 + 1048576*x14*x16 - 4535485465632*x17 + 1048576*x13*x17 + 236223426560*x18 + 1048576*x12*x18 - 8337162240*x19 + 1048576*x11*x19 + 3529506816*x20 + 1048576*x10*x20 - 248038146048*x21 + 1048576*x8 + 1048576*x21*x9",
    "-2 + x15",
    "-63496800288768 - 281474976710657*x16 + 16777216*x15*x16 + 52776558134016*x17 + 16777216*x14*x17 - 4535485734912*x18 + 16777216*x13*x18 + 236280872960*x19 + 16777216*x12*x19 - 16609443840*x20 + 16777216*x11*x20 + 850611142656*x21 + 16777216*x10*x21 + 16777216*x9",
    "850404335616 + 1048576*x10 - 1099511627777*x17 + 1048576*x15*x17 + 206158430976*x18 + 1048576*x14*x18 - 17717010432*x19 + 1048576*x13*x19 + 980418560*x20 + 1048576*x12*x20 - 8337162240*x21 + 1048576*x11*x21",
    "-8304848640 + 65536*x11 - 4294967297*x18 + 65536*x15*x18 + 805307136*x19 + 65536*x14*x19 - 69476352*x20 + 65536*x13*x20 + 61276160*x21 + 65536*x12*x21",
    "57685760 + 4096*x12 - 16777217*x19 + 4096*x15*x19 + 3146496*x20 + 4096*x14*x20 - 540672*x21 + 4096*x13*x21",
    "-271392 + 256*x13 - 65537*x20 + 256*x15*x20 + 13056*x21 + 256*x14*x21",
    "816 + 16*x14 - 257*x21 + 16*x15*x21",
    "-4096 + 4096*x1 + 16777217*x1*x16 + 4096*x1*x16^2 + 4194308*x1*x17 + 17408*x1*x16*x17 + 4096*x1*x17^2 + 1048592*x1*x18 + 65792*x1*x16*x18 + 17408*x1*x17*x18 + 4096*x1*x18^2 + 262208*x1*x19 + 262208*x1*x16*x19 + 65792*x1*x17*x19 + 17408*x1*x18*x19 + 4096*x1*x19^2 + 65792*x1*x20 + 1048592*x1*x16*x20 + 262208*x1*x17*x20 + 65792*x1*x18*x20 + 17408*x1*x19*x20 + 4096*x1*x20^2 + 17408*x1*x21 + 4194308*x1*x16*x21 + 1048592*x1*x17*x21 + 262208*x1*x18*x21 + 65792*x1*x19*x21 + 17408*x1*x20*x21 + 4096*x1*x21^2",
    "-1 + x16*x2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_xxz_13_6(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 22
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "x17*(5 + 2*x3)",
    "-1040*x17 + 1025*x18 + 32*x18*x3 + 32*x17*x4",
    "324480*x17 - 54080*x18 + 262145*x19 + 512*x19*x3 + 512*x18*x4 + 512*x17*x5",
    "-75046400*x17 + 1597440*x18 - 13632320*x19 + 67108865*x20 + 8192*x20*x3 + 8192*x19*x4 + 8192*x18*x5 + 8192*x17*x6",
    "11996441600*x17 - 93716480*x18 + 327475200*x19 - 3489661760*x20 + 17179869185*x21 + 131072*x21*x3 + 131072*x20*x4 + 131072*x19*x5 + 131072*x18*x6 + 131072*x17*x7",
    "-1381910999040*x17 + 12183142400*x18 - 4873256960*x19 + 83752181760*x20 - 893353198400*x21 + 4398046511105*x22 + 2097152*x22*x3 + 2097152*x21*x4 + 2097152*x20*x5 + 2097152*x19*x6 + 2097152*x18*x7 + 2097152*x17*x8",
    "1125899906842625 + 117922650193920*x17 - 1383255244800*x18 + 59978547200*x19 - 1228435619840*x20 + 21440477061120*x21 - 228698418578240*x22 + 33554432*x3 + 33554432*x22*x4 + 33554432*x21*x5 + 33554432*x20*x6 + 33554432*x19*x7 + 33554432*x18*x8 + 33554432*x17*x9",
    "-914793674309645 - 117922623836160*x17 + 8388608*x10*x17 + 1842653429760*x18 - 26990346240*x19 + 192118784000*x20 - 4913443758080*x21 + 85761906971520*x22 + 8388608*x4 + 8388608*x22*x5 + 8388608*x21*x6 + 8388608*x20*x7 + 8388608*x19*x8 + 8388608*x18*x9",
    "171523813933095 + 44220983320800*x17 + 1048576*x11*x17 - 921273999360*x18 + 1048576*x10*x18 + 14619770880*x19 - 10964828160*x20 + 383864166400*x21 - 9826885182400*x22 + 1048576*x5 + 1048576*x22*x6 + 1048576*x21*x7 + 1048576*x20*x8 + 1048576*x19*x9",
    "-39307540693135 - 24567212934550*x17 + 262144*x12*x17 + 690953028480*x18 + 262144*x11*x18 - 14408908800*x19 + 262144*x10*x19 + 1124597760*x20 - 43187189760*x21 + 1535450831200*x22 + 262144*x6 + 262144*x22*x7 + 262144*x21*x8 + 262144*x20*x9",
    "24567212934550 + 39307540693135*x17 + 262144*x13*x17 - 1535450831200*x18 + 262144*x12*x18 + 43187189760*x19 + 262144*x11*x19 - 1124597760*x20 + 262144*x10*x20 + 14408908800*x21 - 690953028480*x22 + 262144*x7 + 262144*x22*x8 + 262144*x21*x9",
    "-44220983320800 - 171523813933095*x17 + 1048576*x14*x17 + 9826885182400*x18 + 1048576*x13*x18 - 383864166400*x19 + 1048576*x12*x19 + 10964828160*x20 + 1048576*x11*x20 - 14619770880*x21 + 1048576*x10*x21 + 921273999360*x22 + 1048576*x8 + 1048576*x22*x9",
    "117922623836160 + 914793674309645*x17 + 8388608*x15*x17 - 85761906971520*x18 + 8388608*x14*x18 + 4913443758080*x19 + 8388608*x13*x19 - 192118784000*x20 + 8388608*x12*x20 + 26990346240*x21 + 8388608*x11*x21 - 1842653429760*x22 + 8388608*x10*x22 + 8388608*x9",
    "-5 + 2*x16",
    "-117922650193920 + 33554432*x10 - 1125899906842625*x17 + 33554432*x16*x17 + 228698418578240*x18 + 33554432*x15*x18 - 21440477061120*x19 + 33554432*x14*x19 + 1228435619840*x20 + 33554432*x13*x20 - 59978547200*x21 + 33554432*x12*x21 + 1383255244800*x22 + 33554432*x11*x22",
    "1381910999040 + 2097152*x11 - 4398046511105*x18 + 2097152*x16*x18 + 893353198400*x19 + 2097152*x15*x19 - 83752181760*x20 + 2097152*x14*x20 + 4873256960*x21 + 2097152*x13*x21 - 12183142400*x22 + 2097152*x12*x22",
    "-11996441600 + 131072*x12 - 17179869185*x19 + 131072*x16*x19 + 3489661760*x20 + 131072*x15*x20 - 327475200*x21 + 131072*x14*x21 + 93716480*x22 + 131072*x13*x22",
    "75046400 + 8192*x13 - 67108865*x20 + 8192*x16*x20 + 13632320*x21 + 8192*x15*x21 - 1597440*x22 + 8192*x14*x22",
    "-324480 + 512*x14 - 262145*x21 + 512*x16*x21 + 54080*x22 + 512*x15*x22",
    "1040 + 32*x15 - 1025*x22 + 32*x16*x22",
    "-4096 + 4096*x1 + 16777217*x1*x17 + 4096*x1*x17^2 + 4194308*x1*x18 + 17408*x1*x17*x18 + 4096*x1*x18^2 + 1048592*x1*x19 + 65792*x1*x17*x19 + 17408*x1*x18*x19 + 4096*x1*x19^2 + 262208*x1*x20 + 262208*x1*x17*x20 + 65792*x1*x18*x20 + 17408*x1*x19*x20 + 4096*x1*x20^2 + 65792*x1*x21 + 1048592*x1*x17*x21 + 262208*x1*x18*x21 + 65792*x1*x19*x21 + 17408*x1*x20*x21 + 4096*x1*x21^2 + 17408*x1*x22 + 4194308*x1*x17*x22 + 1048592*x1*x18*x22 + 262208*x1*x19*x22 + 65792*x1*x20*x22 + 17408*x1*x21*x22 + 4096*x1*x22^2",
    "-1 + x17*x2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_xxz_14_7(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 24
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "x18*(-2 + x3)",
    "952*x18 - 257*x19 + 16*x19*x3 + 16*x18*x4",
    "-374192*x18 + 15232*x19 - 65537*x20 + 256*x20*x3 + 256*x19*x4 + 256*x18*x5",
    "95443712*x18 - 745472*x19 + 3670912*x20 - 16777217*x21 + 4096*x21*x3 +
    4096*x20*x4 + 4096*x19*x5 + 4096*x18*x6",
    "-16794249472*x18 + 101384192*x19 - 95793152*x20 + 939524992*x21 - 4294967297*x22 + 65536*x22*x3 + 65536*x21*x4 + 65536*x20*x5 + 65536*x19*x6 + 65536*x18*x7",
    "2149633181696*x18 - 16859594752*x19 + 1622147072*x20 - 24427999232*x21 + 240518169472*x22 - 1099511627777*x23 + 1048576*x23*x3 + 1048576*x22*x4 + 1048576*x21*x5 + 1048576*x20*x6 + 1048576*x19*x7 + 1048576*x18*x8",
    "-206364600938496*x18 + 2150155943936*x19 - 33587986432*x20 + 390937444352*x21 - 6253472755712*x22 + 61572651156352*x23 - 281474976710657*x24 + 16777216*x24*x3 + 16777216*x23*x4 + 16777216*x22*x5 + 16777216*x21*x6 + 16777216*x20*x7 + 16777216*x19*x8 + 16777216*x18*x9",
    "-72057594037927937 + 15094095682338816*x18 + 268435456*x10*x18 - 206367737511936*x19 + 2283983077376*x20 - 4316056256512*x21 + 100055653548032*x22 - 1600888930414592*x23 + 15762598695797632*x24 + 268435456*x3 + 268435456*x24*x4 + 268435456*x23*x5 + 268435456*x22*x6 + 268435456*x21*x7 + 268435456*x20*x8 + 268435456*x19*x9",
    "31525197391593479 - 6603666837960192*x18 + 33554432*x11*x18 + 117922734538752*x19 + 33554432*x10*x19 - 1618521096192*x20 + 285497884672*x21 - 8598655729664*x22 + 200111117000704*x23 - 3201777860086624*x24 + 33554432*x4 + 33554432*x24*x5 + 33554432*x23*x6 + 33554432*x22*x7 + 33554432*x21*x8 + 33554432*x20*x9",
    "-25614222880669787 + 8804889115358336*x18 + 16777216*x12*x18 - 206364600938496*x19 + 16777216*x11*x19 + 3685981618176*x20 + 16777216*x10*x20 - 100763959296*x21 + 2150155943936*x22 - 68788200312832*x23 + 1600888930065152*x24 + 16777216*x5 + 16777216*x24*x6 + 16777216*x23*x7 + 16777216*x22*x8 + 16777216*x21*x9",
    "1600888930041947 - 1100611139404777*x18 + 1048576*x13*x18 + 34394098234496*x19 + 1048576*x12*x19 - 806123974656*x20 + 1048576*x11*x20 + 15294529536*x21 + 1048576*x10*x21 - 50578784256*x22 + 2149633181696*x23 - 68788196228752*x24 + 1048576*x6 + 1048576*x24*x7 + 1048576*x23*x8 + 1048576*x22*x9",
    "-1100611139404777 + 1600888930041947*x18 + 1048576*x14*x18 - 68788196228752*x19 + 1048576*x13*x19 + 2149633181696*x20 + 1048576*x12*x20 - 50578784256*x21 + 1048576*x11*x21 + 15294529536*x22 + 1048576*x10*x22 - 806123974656*x23 + 34394098234496*x24 + 1048576*x7 + 1048576*x24*x8 + 1048576*x23*x9",
    "8804889115358336 - 25614222880669787*x18 + 16777216*x15*x18 + 1600888930065152*x19 + 16777216*x14*x19 - 68788200312832*x20 + 16777216*x13*x20 + 2150155943936*x21 + 16777216*x12*x21 - 100763959296*x22 + 16777216*x11*x22 + 3685981618176*x23 + 16777216*x10*x23 - 206364600938496*x24 + 16777216*x8 + 16777216*x24*x9",
    "-6603666837960192 + 31525197391593479*x18 + 33554432*x16*x18 - 3201777860086624*x19 + 33554432*x15*x19 + 200111117000704*x20 + 33554432*x14*x20 - 8598655729664*x21 + 33554432*x13*x21 + 285497884672*x22 + 33554432*x12*x22 - 1618521096192*x23 + 33554432*x11*x23 + 117922734538752*x24 + 33554432*x10*x24 + 33554432*x9",
    "-2 + x17",
    "15094095682338816 + 268435456*x10 - 72057594037927937*x18 + 268435456*x17*x18 + 15762598695797632*x19 + 268435456*x16*x19 - 1600888930414592*x20 + 268435456*x15*x20 + 100055653548032*x21 + 268435456*x14*x21 - 4316056256512*x22 + 268435456*x13*x22 + 2283983077376*x23 + 268435456*x12*x23 - 206367737511936*x24 + 268435456*x11*x24",
    "-206364600938496 + 16777216*x11 - 281474976710657*x19 + 16777216*x17*x19 + 61572651156352*x20 + 16777216*x16*x20 - 6253472755712*x21 + 16777216*x15*x21 + 390937444352*x22 + 16777216*x14*x22 - 33587986432*x23 + 16777216*x13*x23 + 2150155943936*x24 + 16777216*x12*x24",
    "2149633181696 + 1048576*x12 - 1099511627777*x20 + 1048576*x17*x20 + 240518169472*x21 + 1048576*x16*x21 - 24427999232*x22 + 1048576*x15*x22 + 1622147072*x23 + 1048576*x14*x23 - 16859594752*x24 + 1048576*x13*x24",
    "-16794249472 + 65536*x13 - 4294967297*x21 + 65536*x17*x21 + 939524992*x22 + 65536*x16*x22 - 95793152*x23 + 65536*x15*x23 + 101384192*x24 + 65536*x14*x24",
    "95443712 + 4096*x14 - 16777217*x22 + 4096*x17*x22 + 3670912*x23 + 4096*x16*x23 - 745472*x24 + 4096*x15*x24",
    "-374192 + 256*x15 - 65537*x23 + 256*x17*x23 + 15232*x24 + 256*x16*x24",
    "952 + 16*x16 - 257*x24 + 16*x17*x24",
    "-16384 + 16384*x1 + 268435457*x1*x18 + 16384*x1*x18^2 + 67108868*x1*x19 + 69632*x1*x18*x19 + 16384*x1*x19^2 + 16777232*x1*x20 + 263168*x1*x18*x20 + 69632*x1*x19*x20 + 16384*x1*x20^2 + 4194368*x1*x21 + 1048832*x1*x18*x21 + 263168*x1*x19*x21 + 69632*x1*x20*x21 + 16384*x1*x21^2 + 1048832*x1*x22 + 4194368*x1*x18*x22 + 1048832*x1*x19*x22 + 263168*x1*x20*x22 + 69632*x1*x21*x22 + 16384*x1*x22^2 + 263168*x1*x23 + 16777232*x1*x18*x23 + 4194368*x1*x19*x23 + 1048832*x1*x20*x23 + 263168*x1*x21*x23 + 69632*x1*x22*x23 + 16384*x1*x23^2 + 69632*x1*x24 + 67108868*x1*x18*x24 + 16777232*x1*x19*x24 + 4194368*x1*x20*x24 + 1048832*x1*x21*x24 + 263168*x1*x22*x24 + 69632*x1*x23*x24 + 16384*x1*x24^2",
    "-1 + x18*x2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_xxz_15_7(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 25
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
      "x19*(5 + 2*x3)",
      "-1200*x19 + 1025*x20 + 32*x20*x3 + 32*x19*x4",
      "436800*x19 - 62400*x20 + 262145*x21 + 512*x21*x3 + 512*x20*x4 + 512*x19*x5",
      "-119392000*x19 + 2150400*x20 - 15729600*x21 + 67108865*x22 + 8192*x22*x3 + 8192*x21*x4 + 8192*x20*x5 + 8192*x19*x6",
      "22902297600*x19 - 149094400*x20 + 440832000*x21 - 4026532800*x22 + 17179869185*x23 + 131072*x23*x3 + 131072*x22*x4 + 131072*x21*x5 + 131072*x20*x6 + 131072*x19*x7",
      "-3224458997760*x19 + 23258726400*x20 - 7752908800*x21 + 112743321600*x22 - 1030792152000*x23 + 4398046511105*x24 + 2097152*x24*x3 + 2097152*x23*x4 + 2097152*x22*x5 + 2097152*x21*x6 + 2097152*x20*x7 + 2097152*x19*x8",
      "343941063065600*x19 - 3227595571200*x20 + 114504499200*x21 - 1954329395200*x22 + 28862180659200*x23 - 263882790667200*x24 + 1125899906842625*x25 + 33554432*x25*x3 + 33554432*x24*x4 + 33554432*x23*x5 + 33554432*x22*x6 + 33554432*x21*x7 + 33554432*x20*x8 + 33554432*x19*x9",
      "288230376151711745 - 28301429720678400*x19 + 536870912*x10*x19 + 343961973555200*x20 - 4030558371840*x21 + 23473422336000*x22 - 500277909913600*x23 + 7388718139084800*x24 - 67553994410558400*x25 + 536870912*x3 + 536870912*x25*x4 + 536870912*x24*x5 + 536870912*x23*x6 + 536870912*x22*x7 + 536870912*x21*x8 + 536870912*x20*x9",
      "-270215977642229775 + 28301429325312000*x19 + 134217728*x11*x19 - 442211519692800*x20 + 134217728*x10*x20 + 5458047795200*x21 - 3274828677120*x22 + 93802443571200*x23 - 2001111164416000*x24 + 29554872554625600*x25 + 134217728*x4 + 134217728*x25*x5 + 134217728*x24*x6 + 134217728*x23*x7 + 134217728*x22*x8 + 134217728*x21*x9",
      "118219490218475625 - 22012222789356800*x19 + 33554432*x12*x19 + 442209938227200*x20 + 33554432*x11*x20 - 6916276224000*x21 + 33554432*x10*x21 + 419849830400*x22 - 12898574008320*x23 + 375208348569600*x24 - 8004444650238400*x25 + 33554432*x5 + 33554432*x25*x6 + 33554432*x24*x7 + 33554432*x23*x8 + 33554432*x22*x9",
      "-32017778600837575 + 13207333672893360*x19 + 8388608*x13*x19 - 343940986188800*x20 + 8388608*x12*x20 + 6909950361600*x21 + 8388608*x11*x21 - 134951731200*x22 + 8388608*x10*x22 + 1344831488000*x23 - 51591159459840*x24 + 1500833372001600*x25 + 8388608*x6 + 8388608*x25*x7 + 8388608*x24*x8 + 8388608*x23*x9",
      "6003333487658325 - 6003333487658325*x19 + 2097152*x14*x19 + 206364588830400*x20 + 2097152*x13*x20 - 5374098329600*x21 + 2097152*x12*x21 + 109648281600*x22 + 2097152*x11*x22 - 109648281600*x23 + 2097152*x10*x23 + 5374098329600*x24 - 206364588830400*x25 + 2097152*x7 + 2097152*x25*x8 + 2097152*x24*x9",
      "-13207333672893360 + 32017778600837575*x19 + 8388608*x15*x19 - 1500833372001600*x20 + 8388608*x14*x20 + 51591159459840*x21 + 8388608*x13*x21 - 1344831488000*x22 + 8388608*x12*x22 + 134951731200*x23 + 8388608*x11*x23 - 6909950361600*x24 + 8388608*x10*x24 + 343940986188800*x25 + 8388608*x8 + 8388608*x25*x9",
      "22012222789356800 - 118219490218475625*x19 + 33554432*x16*x19 + 8004444650238400*x20 + 33554432*x15*x20 - 375208348569600*x21 + 33554432*x14*x21 + 12898574008320*x22 + 33554432*x13*x22 - 419849830400*x23 + 33554432*x12*x23 + 6916276224000*x24 + 33554432*x11*x24 - 442209938227200*x25 + 33554432*x10*x25 + 33554432*x9",
      "-28301429325312000 + 134217728*x10 + 270215977642229775*x19 + 134217728*x17*x19 - 29554872554625600*x20 + 134217728*x16*x20 + 2001111164416000*x21 + 134217728*x15*x21 - 93802443571200*x22 + 134217728*x14*x22 + 3274828677120*x23 + 134217728*x13*x23 - 5458047795200*x24 + 134217728*x12*x24 + 442211519692800*x25 + 134217728*x11*x25",
      "-5 + 2*x18",
      "28301429720678400 + 536870912*x11 - 288230376151711745*x19 + 536870912*x18*x19 + 67553994410558400*x20 + 536870912*x17*x20 - 7388718139084800*x21 + 536870912*x16*x21 + 500277909913600*x22 + 536870912*x15*x22 - 23473422336000*x23 + 536870912*x14*x23 + 4030558371840*x24 + 536870912*x13*x24 - 343961973555200*x25 + 536870912*x12*x25",
      "-343941063065600 + 33554432*x12 - 1125899906842625*x20 + 33554432*x18*x20 + 263882790667200*x21 + 33554432*x17*x21 - 28862180659200*x22 + 33554432*x16*x22 + 1954329395200*x23 + 33554432*x15*x23 - 114504499200*x24 + 33554432*x14*x24 + 3227595571200*x25 + 33554432*x13*x25",
      "3224458997760 + 2097152*x13 - 4398046511105*x21 + 2097152*x18*x21 + 1030792152000*x22 + 2097152*x17*x22 - 112743321600*x23 + 2097152*x16*x23 + 7752908800*x24 + 2097152*x15*x24 - 23258726400*x25 + 2097152*x14*x25",
      "-22902297600 + 131072*x14 - 17179869185*x22 + 131072*x18*x22 + 4026532800*x23 + 131072*x17*x23 - 440832000*x24 + 131072*x16*x24 + 149094400*x25 + 131072*x15*x25",
      "119392000 + 8192*x15 - 67108865*x23 + 8192*x18*x23 + 15729600*x24 + 8192*x17*x24 - 2150400*x25 + 8192*x16*x25",
      "-436800 + 512*x16 - 262145*x24 + 512*x18*x24 + 62400*x25 + 512*x17*x25",
      "1200 + 32*x17 - 1025*x25 + 32*x18*x25",
      "-16384 + 16384*x1 + 268435457*x1*x19 + 16384*x1*x19^2 + 67108868*x1*x20 + 69632*x1*x19*x20 + 16384*x1*x20^2 + 16777232*x1*x21 + 263168*x1*x19*x21 + 69632*x1*x20*x21 + 16384*x1*x21^2 + 4194368*x1*x22 + 1048832*x1*x19*x22 + 263168*x1*x20*x22 + 69632*x1*x21*x22 + 16384*x1*x22^2 + 1048832*x1*x23 + 4194368*x1*x19*x23 + 1048832*x1*x20*x23 + 263168*x1*x21*x23 + 69632*x1*x22*x23 + 16384*x1*x23^2 + 263168*x1*x24 + 16777232*x1*x19*x24 + 4194368*x1*x20*x24 + 1048832*x1*x21*x24 + 263168*x1*x22*x24 + 69632*x1*x23*x24 + 16384*x1*x24^2 + 69632*x1*x25 + 67108868*x1*x19*x25 + 16777232*x1*x20*x25 + 4194368*x1*x21*x25 + 1048832*x1*x22*x25 + 263168*x1*x23*x25 + 69632*x1*x24*x25 + 16384*x1*x25^2",
      "-1 + x19*x2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_xxz_16_8(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 27
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "x20*(-2 + x3)",
    "1088*x20 - 257*x21 + 16*x21*x3 + 16*x20*x4",
    "-493440*x20 + 17408*x21 - 65537*x22 + 256*x22*x3 + 256*x21*x4 + 256*x20*x5",
    "146836480*x20 - 983040*x21 + 4195328*x22 - 16777217*x23 + 4096*x23*x3 + 4096*x22*x4 + 4096*x21*x5 + 4096*x20*x6",
    "-30534999040*x20 + 155975680*x21 - 126320640*x22 + 1073742848*x23 - 4294967297*x24 + 65536*x24*x3 + 65536*x23*x4 + 65536*x22*x5 + 65536*x21*x6 + 65536*x20*x7",
    "4690108760064*x20 - 30653808640*x21 + 2495610880*x22 - 32212746240*x23 + 274877907968*x24 - 1099511627777*x25 + 1048576*x25*x3 + 1048576*x24*x4 + 1048576*x23*x5 + 1048576*x22*x6 + 1048576*x21*x7 + 1048576*x20*x8",
    "-550305602502656*x20 + 4691249332224*x21 - 61069066240*x22 + 601442222080*x23 - 8246337699840*x24 + 70368744178688*x25 - 281474976710657*x26 + 16777216*x26*x3 + 16777216*x25*x4 + 16777216*x24*x5 + 16777216*x23*x6 + 16777216*x22*x7 + 16777216*x21*x8 + 16777216*x20*x9",
    "50313652274462720*x20 + 268435456*x10*x20 - 550313966698496*x21 + 4983235805184*x22 - 7847375011840*x23 + 153931774689280*x24 - 2111062325821440*x25 + 18014398509483008*x26 - 72057594037927937*x27 + 268435456*x27*x3 + 268435456*x26*x4 + 268435456*x25*x5 + 268435456*x24*x6 + 268435456*x23*x7 + 268435456*x22*x8 + 268435456*x21*x9",
    "-18446744073709551617 - 3622582951109591040*x20 + 4294967296*x11*x20 + 50313700069867520*x21 + 4294967296*x10*x21 - 552455200833536*x22 + 79731772882944*x23 - 2001141697085440*x24 + 39406496886292480*x25 - 540431955284951040*x26 + 4611686018427388928*x27 + 4294967296*x3 + 4294967296*x27*x4 + 4294967296*x26*x5 + 4294967296*x25*x6 + 4294967296*x24*x7 + 4294967296*x23*x8 + 4294967296*x22*x9",
    "1152921504606846977 + 201254608351047680*x20 + 67108864*x12*x20 - 3537678873231360*x21 + 67108864*x11*x21 + 49146421575680*x22 + 67108864*x10*x22 - 1074815565824*x23 + 18764997328896*x24 - 500277820456960*x25 + 9851624185016320*x26 - 135107988821115360*x27 + 67108864*x4 + 67108864*x27*x5 + 67108864*x26*x6 + 67108864*x25*x7 + 67108864*x24*x8 + 67108864*x23*x9",
    "-1080863910568919055 - 281756451687622912*x20 + 33554432*x13*x20 + 6289206534307840*x21 + 33554432*x12*x21 - 110554145095680*x22 + 33554432*x11*x22 + 1631416483840*x23 + 33554432*x10*x23 - 4316056256512*x24 + 150083480322048*x25 - 4002222326036480*x26 + 78812993478988160*x27 + 33554432*x5 + 33554432*x27*x6 + 33554432*x26*x7 + 33554432*x25*x8 + 33554432*x24*x9",
    "157625986957967395 + 76842668642013456*x20 + 4194304*x14*x20 - 2201222279320064*x21 + 4194304*x13*x21 + 49134472724480*x22 + 4194304*x12*x22 - 867064872960*x23 + 4194304*x11*x23 + 203927060480*x24 + 4194304*x10*x24 - 8598655729664*x25 + 300166675501056*x26 - 8004444650216560*x27 + 4194304*x6 + 4194304*x27*x7 + 4194304*x26*x8 + 4194304*x25*x9",
    "-128071114403348935 - 128071114403348935*x20 + 4194304*x15*x20 + 4802666790195456*x21 + 4194304*x14*x21 - 137576400625664*x22 + 4194304*x13*x22 + 3071651348480*x23 + 4194304*x12*x23 - 107961384960*x24 + 4194304*x11*x24 + 3071651348480*x25 + 4194304*x10*x25 - 137576400625664*x26 + 4802666790195456*x27 + 4194304*x7 + 4194304*x27*x8 + 4194304*x26*x9",
    "76842668642013456 + 157625986957967395*x20 + 4194304*x16*x20 - 8004444650216560*x21 + 4194304*x15*x21 + 300166675501056*x22 + 4194304*x14*x22 - 8598655729664*x23 + 4194304*x13*x23 + 203927060480*x24 + 4194304*x12*x24 - 867064872960*x25 + 4194304*x11*x25 + 49134472724480*x26 + 4194304*x10*x26 - 2201222279320064*x27 + 4194304*x8 + 4194304*x27*x9",
    "-281756451687622912 - 1080863910568919055*x20 + 33554432*x17*x20 + 78812993478988160*x21 + 33554432*x16*x21 - 4002222326036480*x22 + 33554432*x15*x22 + 150083480322048*x23 + 33554432*x14*x23 - 4316056256512*x24 + 33554432*x13*x24 + 1631416483840*x25 + 33554432*x12*x25 - 110554145095680*x26 + 33554432*x11*x26 + 6289206534307840*x27 + 33554432*x10*x27 + 33554432*x9",
    "201254608351047680 + 67108864*x10 + 1152921504606846977*x20 + 67108864*x18*x20 - 135107988821115360*x21 + 67108864*x17*x21 + 9851624185016320*x22 + 67108864*x16*x22 - 500277820456960*x23 + 67108864*x15*x23 + 18764997328896*x24 + 67108864*x14*x24 - 1074815565824*x25 + 67108864*x13*x25 + 49146421575680*x26 + 67108864*x12*x26 - 3537678873231360*x27 + 67108864*x11*x27",
    "-2 + x19",
    "-3622582951109591040 + 4294967296*x11 - 18446744073709551617*x20 + 4294967296*x19*x20 + 4611686018427388928*x21 + 4294967296*x18*x21 - 540431955284951040*x22 + 4294967296*x17*x22 + 39406496886292480*x23 + 4294967296*x16*x23 - 2001141697085440*x24 + 4294967296*x15*x24 + 79731772882944*x25 + 4294967296*x14*x25 - 552455200833536*x26 + 4294967296*x13*x26 + 50313700069867520*x27 + 4294967296*x12*x27",
    "50313652274462720 + 268435456*x12 - 72057594037927937*x21 + 268435456*x19*x21 + 18014398509483008*x22 + 268435456*x18*x22 - 2111062325821440*x23 + 268435456*x17*x23 + 153931774689280*x24 + 268435456*x16*x24 - 7847375011840*x25 + 268435456*x15*x25 + 4983235805184*x26 + 268435456*x14*x26 - 550313966698496*x27 + 268435456*x13*x27",
    "-550305602502656 + 16777216*x13 - 281474976710657*x22 + 16777216*x19*x22 + 70368744178688*x23 + 16777216*x18*x23 - 8246337699840*x24 + 16777216*x17*x24 + 601442222080*x25 + 16777216*x16*x25 - 61069066240*x26 + 16777216*x15*x26 + 4691249332224*x27 + 16777216*x14*x27",
    "4690108760064 + 1048576*x14 - 1099511627777*x23 + 1048576*x19*x23 + 274877907968*x24 + 1048576*x18*x24 - 32212746240*x25 + 1048576*x17*x25 + 2495610880*x26 + 1048576*x16*x26 - 30653808640*x27 + 1048576*x15*x27",
    "-30534999040 + 65536*x15 - 4294967297*x24 + 65536*x19*x24 + 1073742848*x25 + 65536*x18*x25 - 126320640*x26 + 65536*x17*x26 + 155975680*x27 + 65536*x16*x27",
    "146836480 + 4096*x16 - 16777217*x25 + 4096*x19*x25 + 4195328*x26 + 4096*x18*x26 - 983040*x27 + 4096*x17*x27",
    "-493440 + 256*x17 - 65537*x26 + 256*x19*x26 + 17408*x27 + 256*x18*x27",
    "1088 + 16*x18 - 257*x27 + 16*x19*x27",
    "-65536 + 65536*x1 + 4294967297*x1*x20 + 65536*x1*x20^2 + 1073741828*x1*x21 + 278528*x1*x20*x21 + 65536*x1*x21^2 + 268435472*x1*x22 + 1052672*x1*x20*x22 + 278528*x1*x21*x22 + 65536*x1*x22^2 + 67108928*x1*x23 + 4195328*x1*x20*x23 + 1052672*x1*x21*x23 + 278528*x1*x22*x23 + 65536*x1*x23^2 + 16777472*x1*x24 + 16777472*x1*x20*x24 + 4195328*x1*x21*x24 + 1052672*x1*x22*x24 + 278528*x1*x23*x24 + 65536*x1*x24^2 + 4195328*x1*x25 + 67108928*x1*x20*x25 + 16777472*x1*x21*x25 + 4195328*x1*x22*x25 + 1052672*x1*x23*x25 + 278528*x1*x24*x25 + 65536*x1*x25^2 + 1052672*x1*x26 + 268435472*x1*x20*x26 + 67108928*x1*x21*x26 + 16777472*x1*x22*x26 + 4195328*x1*x23*x26 + 1052672*x1*x24*x26 + 278528*x1*x25*x26 + 65536*x1*x26^2 + 278528*x1*x27 + 1073741828*x1*x20*x27 + 268435472*x1*x21*x27 + 67108928*x1*x22*x27 + 16777472*x1*x23*x27 + 4195328*x1*x24*x27 + 1052672*x1*x25*x27 + 278528*x1*x26*x27 + 65536*x1*x27^2",
    "-1 + x2*x20"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end


function zhang_gb_1(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 5
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "10*x5",
    "1000*x5+41813*x4*x5+80*x5^3",
    "1900*x5+400*x2*x5+41013*x4*x5+60*x4^2*x5+41853*x3*x5^2+400*x5^3",
    "41463*x5+200*x2*x5+60*x3^2*x5+510*x4*x5+41973*x2*x4*x5+41843*x4^2*x5+18*x4^3*x5+41813*x1*x5^2+20*x3*x5^2+41953*x3*x4*x5^2+41885*x5^3+72*x2*x5^3+60*x4*x5^3",
    "100*x3*x5+200*x5^2+41913*x4*x5^2+32*x5^4",
    "41013*x1*x5+500*x3*x5+41993*x3*x4*x5+760*x5^2+360*x2*x5^2+41313*x4*x5^2+36*x4^2*x5^2+41917*x3*x5^3+240*x5^4",
    "3200*x3+9187*x2*x3+31174*x1*x4+35200*x3*x4+3613*x3*x4^2+41600*x5+5574*x2*x5+40506*x3^2*x5+2013*x4*x5+29812*x2*x4*x5+2973*x4^2*x5+35840*x4^3*x5+29812*x1*x5^2+11066*x3*x5^2+12201*x3*x4*x5^2+13440*x5^3+39907*x2*x5^3+15587*x4*x5^3+7226*x4^2*x5^3+32826*x3*x5^4+29213*x5^5+38400*x4*x5^5+36893*x5^7",
    "39263+40413*x2+21987*x2^2+4748*x1*x3+29987*x3^2+12400*x4+33961*x2*x4+22359*x3^2*x4+28480*x4^2+37492*x2*x4^2+24506*x4^3+23040*x4^4+15587*x1*x5+35267*x3*x5+29358*x2*x3*x5+21224*x1*x4*x5+24837*x3*x4*x5+28242*x3*x4^2*x5+21440*x5^2+31092*x2*x5^2+8105*x3^2*x5^2+31892*x4*x5^2+21557*x2*x4*x5^2+26130*x4^2*x5^2+9844*x4^3*x5^2+28102*x1*x5^3+140*x3*x5^3+16616*x3*x4*x5^3+3299*x5^4+40535*x2*x5^4+32145*x4*x5^4+908*x4^2*x5^4+25827*x3*x5^5+28160*x5^6+26426*x4*x5^6+6144*x5^8",
    "41177*x1+1024*x1*x2+10240*x1*x2^2+42012*x3+21504*x1^2*x3+11520*x1*x3^2+41149*x1*x4+16640*x1*x2*x4+26653*x1*x3^2*x4+7808*x1*x4^2+25629*x1*x2*x4^2+33053*x1*x4^3+3072*x1*x4^4+x5+38429*x1^2*x5+9856*x1*x3*x5+7197*x1*x2*x3*x5+3101*x1^2*x4*x5+34874*x1*x3*x4*x5+39936*x1*x3*x4^2*x5+2496*x1*x5^2+26141*x1*x2*x5^2+21504*x1*x3^2*x5^2+23197*x1*x4*x5^2+4067*x1*x2*x4*x5^2+39168*x1*x4^2*x5^2+19485*x1*x4^3*x5^2+18432*x1^2*x5^3+23808*x1*x3*x5^3+34874*x1*x3*x4*x5^3+5504*x1*x5^4+27677*x1*x2*x5^4+16669*x1*x4*x5^4+25600*x1*x4^2*x5^4+11264*x1*x3*x5^5+4096*x1*x5^6+32797*x1*x4*x5^6+1024*x1*x5^8",
    "41998+7680*x1^2+41157*x2+1024*x2^2+10240*x2^3+37661*x1*x3+37888*x1*x2*x3+11520*x2*x3^2+17*x4+18432*x1^2*x4+41149*x2*x4+16640*x2^2*x4+20480*x1*x3*x4+26653*x2*x3^2*x4+7808*x2*x4^2+25629*x2^2*x4^2+29725*x1*x3*x4^2+33053*x2*x4^3+3072*x2*x4^4+39517*x1*x5+8192*x1*x2*x5+9856*x2*x3*x5+7197*x2^2*x3*x5+28701*x1*x3^2*x5+13312*x1*x4*x5+16442*x1*x2*x4*x5+34874*x2*x3*x4*x5+19997*x1*x4^2*x5+39936*x2*x3*x4^2*x5+10240*x1*x4^3*x5+24605*x1^2*x5^2+2496*x2*x5^2+26141*x2^2*x5^2+22301*x1*x3*x5^2+21504*x2*x3^2*x5^2+23197*x2*x4*x5^2+4067*x2^2*x4*x5^2+33792*x1*x3*x4*x5^2+39168*x2*x4^2*x5^2+19485*x2*x4^3*x5^2+36509*x1*x5^3+31744*x1*x2*x5^3+23808*x2*x3*x5^3+21248*x1*x4*x5^3+34874*x2*x3*x4*x5^3+23581*x1*x4^2*x5^3+5504*x2*x5^4+27677*x2^2*x5^4+31773*x1*x3*x5^4+16669*x2*x4*x5^4+25600*x2*x4^2*x5^4+37917*x1*x5^5+11264*x2*x3*x5^5+8192*x1*x4*x5^5+4096*x2*x5^6+32797*x2*x4*x5^6+40989*x1*x5^7+1024*x2*x5^8",
    "41317*x3+38685*x2*x3+26624*x2^2*x3+27648*x1*x3^2+11520*x3^3+34205*x1*x4+31744*x1*x2*x4+41149*x3*x4+37120*x2*x3*x4+26653*x3^3*x4+8960*x1*x4^2+7808*x3*x4^2+13341*x2*x3*x4^2+38941*x1*x4^3+33053*x3*x4^3+3072*x3*x4^4+41907*x5+16384*x1^2*x5+39517*x2*x5+11776*x2^2*x5+12032*x1*x3*x5+9856*x3^2*x5+35898*x2*x3^2*x5+13312*x2*x4*x5+13341*x2^2*x4*x5+24634*x1*x3*x4*x5+34874*x3^2*x4*x5+19997*x2*x4^2*x5+39936*x3^2*x4^2*x5+10240*x2*x4^3*x5+5504*x1*x5^2+12317*x1*x2*x5^2+2496*x3*x5^2+6429*x2*x3*x5^2+21504*x3^3*x5^2+24861*x1*x4*x5^2+23197*x3*x4*x5^2+37859*x2*x3*x4*x5^2+12288*x1*x4^2*x5^2+39168*x3*x4^2*x5^2+19485*x3*x4^3*x5^2+36509*x2*x5^3+13312*x2^2*x5^3+27648*x1*x3*x5^3+23808*x3^2*x5^3+21248*x2*x4*x5^3+34874*x3^2*x4*x5^3+23581*x2*x4^2*x5^3+4096*x1*x5^4+5504*x3*x5^4+17437*x2*x3*x5^4+34845*x1*x4*x5^4+16669*x3*x4*x5^4+25600*x3*x4^2*x5^4+37917*x2*x5^5+11264*x3^2*x5^5+8192*x2*x4*x5^5+1024*x1*x5^6+4096*x3*x5^6+32797*x3*x4*x5^6+40989*x2*x5^7+1024*x3*x5^8",
    "21694+400*x2+26013*x2^2+40826*x1*x3+23853*x3^2+39453*x2*x3^2+38638*x4+1853*x2*x4+6400*x2^2*x4+11520*x1*x3*x4+31360*x3^2*x4+36133*x4^2+6627*x2*x4^2+33565*x3^2*x4^2+17728*x4^3+28957*x2*x4^3+30301*x4^4+2304*x4^5+20800*x1*x5+29213*x1*x2*x5+29573*x3*x5+37347*x2*x3*x5+3328*x3^3*x5+39907*x1*x4*x5+10470*x3*x4*x5+21021*x2*x3*x4*x5+12829*x1*x4^2*x5+16023*x3*x4^2*x5+27392*x3*x4^3*x5+39341*x5^2+41536*x2*x5^2+4608*x2^2*x5^2+4352*x1*x3*x5^2+39802*x3^2*x5^2+31672*x4*x5^2+41524*x2*x4*x5^2+7680*x3^2*x4*x5^2+37543*x4^2*x5^2+36096*x2*x4^2*x5^2+33315*x4^3*x5^2+25117*x4^4*x5^2+38586*x1*x5^3+33754*x3*x5^3+37917*x2*x3*x5^3+13824*x1*x4*x5^3+40646*x3*x4*x5^3+9757*x3*x4^2*x5^3+30813*x5^4+37760*x2*x5^4+2560*x3^2*x5^4+17219*x4*x5^4+31005*x2*x4*x5^4+6906*x4^2*x5^4+19200*x4^3*x5^4+15453*x3*x5^5+6400*x3*x4*x5^5+32413*x5^6+25280*x4*x5^6+35101*x4^2*x5^6+256*x3*x5^7+39453*x5^8+768*x4*x5^8",
    "250+26653*x1^2+960*x2+34333*x2^2+38173*x1*x3+37661*x3^2+22528*x2*x3^2+40697*x4+35229*x2*x4+23552*x2^2*x4+7139*x1*x3*x4+32000*x3^2*x4+41149*x4^2+25600*x2*x4^2+14365*x3^2*x4^2+7808*x4^3+22557*x2*x4^3+33053*x4^4+3072*x4^5+36509*x1*x5+27648*x1*x2*x5+39517*x3*x5+27392*x2*x3*x5+28701*x3^3*x5+9472*x1*x4*x5+23168*x3*x4*x5+58*x2*x3*x4*x5+37946*x1*x4^2*x5+12858*x3*x4^2*x5+8163*x3*x4^3*x5+5504*x2*x5^2+29725*x2^2*x5^2+16413*x1*x3*x5^2+22301*x3^2*x5^2+2496*x4*x5^2+8989*x2*x4*x5^2+13283*x3^2*x4*x5^2+23197*x4^2*x5^2+16355*x2*x4^2*x5^2+39168*x4^3*x5^2+19485*x4^4*x5^2+37917*x1*x5^3+36509*x3*x5^3+22528*x2*x3*x5^3+24576*x1*x4*x5^3+3043*x3*x4*x5^3+16442*x3*x4^2*x5^3+4096*x2*x5^4+31773*x3^2*x5^4+5504*x4*x5^4+20509*x2*x4*x5^4+16669*x4^2*x5^4+25600*x4^3*x5^4+40989*x1*x5^5+37917*x3*x5^5+19456*x3*x4*x5^5+1024*x2*x5^6+4096*x4*x5^6+32797*x4^2*x5^6+40989*x3*x5^7+1024*x4*x5^8",
    "7040*x1+16413*x1*x2+40573*x3+22813*x2*x3+6144*x3^3+40733*x1*x4+29853*x3*x4+38912*x2*x3*x4+21504*x1*x4^2+29440*x3*x4^2+26653*x3*x4^3+41697*x5+37533*x2*x5+21504*x2^2*x5+3043*x1*x3*x5+27136*x3^2*x5+38653*x4*x5+41472*x2*x4*x5+34874*x3^2*x4*x5+21120*x4^2*x5+31802*x2*x4^2*x5+11037*x4^3*x5+13312*x4^4*x5+512*x1*x5^2+15360*x3*x5^2+28730*x2*x3*x5^2+22586*x1*x4*x5^2+40023*x3*x4*x5^2+1990*x3*x4^2*x5^2+2496*x5^3+22045*x2*x5^3+30720*x3^2*x5^3+17693*x4*x5^3+23523*x2*x4*x5^3+18403*x4^2*x5^3+1053*x4^3*x5^3+19456*x1*x5^4+27904*x3*x5^4+17466*x3*x4*x5^4+5504*x5^5+26653*x2*x5^5+12573*x4*x5^5+33792*x4^2*x5^5+12288*x3*x5^6+4096*x5^7+31773*x4*x5^7+1024*x5^9",
    "800*x3+12800*x2*x3+28800*x1*x4+8800*x3*x4+32413*x3*x4^2+23153*x5+3840*x2*x5+35840*x2^2*x5+30720*x1*x3*x5+25600*x3^2*x5+1587*x4*x5+39680*x2*x4*x5+2077*x3^2*x4*x5+18557*x4^2*x5+27194*x2*x4^2*x5+31773*x4^3*x5+9216*x4^4*x5+30493*x1*x5^2+19456*x3*x5^2+30295*x2*x3*x5^2+9303*x1*x4*x5^2+1751*x3*x4*x5^2+32710*x3*x4^2*x5^2+29501*x5^3+34874*x2*x5^3+16355*x3^2*x5^3+24669*x4*x5^3+18345*x2*x4*x5^3+11206*x4^2*x5^3+16442*x4^3*x5^3+13283*x1*x5^4+25315*x3*x5^4+23668*x3*x4*x5^4+9728*x5^5+39994*x2*x5^5+15546*x4*x5^5+34787*x4^2*x5^5+33280*x3*x5^6+11520*x5^7+14365*x4*x5^7+3072*x5^9"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function zhang_gb_2(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 8
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "x$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.Fp(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps  =
    "32+32*x7+41965*x8^2",
    "2688+2560*x7+41885*x7^2+38037*x8^2+248*x7*x8^2+41929*x8^4",
    "19838+35741*x3+1891*x5+560*x6^2+34179*x7+35741*x3*x7+547*x5*x7+560*x6^2*x7+26101*x7^2+40669*x5*x7^2+11760*x7^3+2352*x4*x8+14573*x6*x8+2352*x4*x7*x8+14573*x6*x7*x8+3356*x8^2+9408*x3*x8^2+18170*x5*x8^2+41173*x6^2*x8^2+32608*x7*x8^2+2016*x5*x7*x8^2+24373*x7^2*x8^2+38485*x4*x8^3+41160*x6*x8^3+13350*x8^4",
    "19163+23291*x5+15486*x7+23291*x5*x7+19817*x7^2+23494*x7^3+1198*x6*x8+1198*x6*x7*x8+17503*x8^2+28083*x5*x8^2+9750*x7*x8^2+6772*x7^2*x8^2+40216*x6*x8^3+25158*x8^4",
    "20274+4222*x1+37791*x3+3419*x5+31840*x5^2+4426*x4*x6+19883*x6^2+40426*x7+4222*x1*x7+28939*x3*x7+14518*x5*x7+31840*x5^2*x7+4426*x4*x6*x7+19883*x6^2*x7+2312*x7^2+33161*x3*x7^2+11099*x5*x7^2+24173*x7^3+30982*x2*x8+33093*x4*x8+13618*x6*x8+30982*x2*x7*x8+33093*x4*x7*x8+13618*x6*x7*x8+23792*x8^2+35680*x1*x8^2+6333*x3*x8^2+15878*x5*x8^2+36266*x5^2*x8^2+35374*x4*x6*x8^2+33195*x6^2*x8^2+23975*x7*x8^2+13278*x3*x7*x8^2+4358*x5*x7*x8^2+26760*x7^2*x8^2+37553*x2*x8^3+13380*x4*x8^3+21586*x6*x8^3+23728*x8^4",
    "21637+40445*x3+498*x5+8761*x5^2+41173*x4*x6+3080*x6^2+23208*x7+40445*x3*x7+3298*x5*x7+8761*x5^2*x7+41173*x4*x6*x7+3200*x6^2*x7+16269*x7^2+2512*x5*x7^2+120*x6^2*x7^2+17218*x7^3+41725*x5*x7^3+2520*x7^4+2744*x2*x8+35741*x4*x8+32928*x6*x8+41957*x5*x6*x8+2744*x2*x7*x8+36497*x4*x7*x8+26068*x6*x7*x8+41957*x5*x6*x7*x8+756*x4*x7^2*x8+35153*x6*x7^2*x8+11113*x8^2+1372*x3*x8^2+3369*x5*x8^2+7865*x5^2*x8^2+1260*x4*x6*x8^2+37393*x6^2*x8^2+21935*x7*x8^2+41033*x3*x7*x8^2+41929*x5*x7*x8^2+41833*x6^2*x7*x8^2+689*x7^2*x8^2+432*x5*x7^2*x8^2+38233*x7^3*x8^2+37897*x2*x8^3+9408*x4*x8^3+34634*x6*x8^3+84*x5*x6*x8^3+40879*x4*x7*x8^3+10290*x6*x7*x8^3+8170*x8^4+1470*x3*x8^4+35839*x5*x8^4+7909*x7*x8^4",
    "36583+6965*x5+26880*x6^2+35691*x7+34642*x5*x7+26880*x6^2*x7+10464*x7^2+27677*x5*x7^2+22876*x7^3+11520*x7^4+10653*x4*x8+20707*x6*x8+10653*x4*x7*x8+29120*x6*x7*x8+8413*x6*x7^2*x8+25246*x8^2+38783*x5*x8^2+1693*x6^2*x8^2+38547*x7*x8^2+7715*x5*x7*x8^2+3074*x7^2*x8^2+24733*x7^3*x8^2+5027*x4*x8^3+31959*x6*x8^3+8387*x6*x7*x8^3+37368*x8^4+41690*x5*x8^4+11851*x7*x8^4",
    "32*x6+32*x6*x7+336*x8+296*x7*x8+41973*x7^2*x8+41965*x6*x8^2+41523*x8^3+74*x7*x8^3+41992*x8^5",
    "36525*x2+29008*x4+41901*x4*x5+29413*x6+56*x3*x6+2408*x5*x6+40*x6^3+36917*x2*x7+25816*x4*x7+41901*x4*x5*x7+21741*x6*x7+56*x3*x6*x7+2288*x5*x6*x7+40*x6^3*x7+392*x2*x7^2+38929*x4*x7^2+34761*x6*x7^2+41893*x5*x6*x7^2+108*x4*x7^3+420*x6*x7^3+39466*x8+1176*x3*x8+17068*x5*x8+16906*x5^2*x8+41957*x4*x6*x8+40893*x6^2*x8+12351*x7*x8+1036*x3*x7*x8+17208*x5*x7*x8+16906*x5^2*x7*x8+41957*x4*x6*x7*x8+40893*x6^2*x7*x8+11986*x7^2*x8+41873*x3*x7^2*x8+140*x5*x7^2*x8+39101*x7^3*x8+8232*x2*x8^2+41298*x4*x8^2+168*x4*x5*x8^2+29484*x6*x8^2+41929*x3*x6*x8^2+38401*x5*x6*x8^2+41953*x6^3*x8^2+41425*x2*x7*x8^2+5572*x4*x7*x8^2+22092*x6*x7*x8^2+180*x5*x6*x7*x8^2+41851*x4*x7^2*x8^2+41383*x6*x7^2*x8^2+28424*x8^3+40249*x3*x8^3+16411*x5*x8^3+16654*x5^2*x8^3+84*x4*x6*x8^3+1680*x6^2*x8^3+23263*x7*x8^3+210*x3*x7*x8^3+41803*x5*x7*x8^3+4368*x7^2*x8^3+40837*x4*x8^4+26137*x6*x8^4+15611*x8^5",
    "10976*x2+14573*x4+6918*x6+41901*x5*x6+10976*x2*x7+15077*x4*x7+4958*x6*x7+41901*x5*x6*x7+504*x4*x7^2+40053*x6*x7^2+38949*x8+36917*x3*x8+30184*x5*x8+280*x6^2*x8+2377*x7*x8+36917*x3*x7*x8+29512*x5*x7*x8+280*x6^2*x7*x8+11321*x7^2*x8+41341*x5*x7^2*x8+5880*x7^3*x8+25549*x2*x8^2+323*x4*x8^2+17916*x6*x8^2+168*x5*x6*x8^2+420*x4*x7*x8^2+31233*x6*x7*x8^2+146*x8^3+7644*x3*x8^3+38750*x5*x8^3+41593*x6^2*x8^3+8395*x7*x8^3+1008*x5*x7*x8^3+33193*x7^2*x8^3+40249*x4*x8^4+20580*x6*x8^4+6675*x8^5",
    "1198*x4+32429*x6+1198*x4*x7+14509*x6*x7+24093*x6*x7^2+15294*x8+15727*x5*x8+32066*x7*x8+15727*x5*x7*x8+15079*x7^2*x8+40320*x7^3*x8+40216*x4*x8^2+4322*x6*x8^2+16826*x6*x7*x8^2+33789*x8^3+39429*x5*x8^3+31572*x7*x8^3+23546*x7^2*x8^3+15081*x6*x8^4+40944*x8^5",
    "40199*x2+41857*x4+15253*x3*x4+2765*x2*x5+27571*x4*x5+27444*x6+36839*x1*x6+4120*x3*x6+22028*x5*x6+19624*x5^2*x6+22300*x4*x6^2+2349*x6^3+32583*x2*x7+22814*x4*x7+9689*x4*x5*x7+72*x6*x7+31492*x3*x6*x7+36687*x5*x6*x7+15321*x6^3*x7+35850*x2*x7^2+18146*x4*x7^2+12280*x6*x7^2+15839*x5*x6*x7^2+19679*x4*x7^3+34864*x6*x7^3+31118*x6*x7^4+12521*x8+13380*x1*x8+38460*x3*x8+28990*x4^2*x8+11187*x5*x8+26671*x3*x5*x8+30515*x5^2*x8+27474*x2*x6*x8+32998*x4*x6*x8+22711*x6^2*x8+18018*x5*x6^2*x8+13348*x7*x8+13071*x1*x7*x8+34368*x3*x7*x8+14941*x5*x7*x8+7794*x5^2*x7*x8+30669*x4*x6*x7*x8+32661*x6^2*x7*x8+17494*x7^2*x8+14454*x3*x7^2*x8+25748*x5*x7^2*x8+34215*x6^2*x7^2*x8+12666*x7^3*x8+2995*x5*x7^3*x8+27134*x7^4*x8+4256*x7^5*x8+17558*x2*x8^2+312*x4*x8^2+3198*x4*x5*x8^2+14179*x6*x8^2+25485*x3*x6*x8^2+40279*x5*x6*x8^2+2587*x6^3*x8^2+3705*x2*x7*x8^2+16847*x4*x7*x8^2+31886*x6*x7*x8^2+40103*x5*x6*x7*x8^2+17089*x4*x7^2*x8^2+17052*x6*x7^2*x8^2+11442*x6*x7^3*x8^2+34268*x8^3+16531*x1*x8^3+7849*x3*x8^3+11715*x5*x8^3+28130*x5^2*x8^3+40373*x4*x6*x8^3+35053*x6^2*x8^3+11299*x7*x8^3+18255*x3*x7*x8^3+2771*x5*x7*x8^3+22337*x6^2*x7*x8^3+30265*x7^2*x8^3+39769*x5*x7^2*x8^3+33062*x7^3*x8^3+9753*x7^4*x8^3+23393*x2*x8^4+27972*x4*x8^4+27994*x6*x8^4+25332*x5*x6*x8^4+7288*x4*x7*x8^4+20637*x6*x7*x8^4+20696*x6*x7^2*x8^4+10344*x8^5+26046*x3*x8^5+27027*x5*x8^5+36037*x6^2*x8^5+8191*x7*x8^5+9456*x5*x7*x8^5+11181*x7^2*x8^5+7492*x7^3*x8^5+13618*x4*x8^6+833*x6*x8^6+31665*x6*x7*x8^6+10875*x8^7+9901*x5*x8^7+1363*x7*x8^7+29551*x7^2*x8^7+26760*x6*x8^8+39902*x8^9+39596*x7*x8^9+2230*x8^11",
    "42006*x2+28658*x4+13550*x3*x4+34461*x2*x5+1472*x4*x5+41166*x6+27474*x1*x6+19193*x3*x6+39594*x5*x6+11165*x5^2*x6+29933*x4*x6^2+12618*x6^3+5345*x2*x7+17739*x4*x7+13244*x3*x4*x7+17207*x2*x5*x7+26289*x4*x5*x7+19854*x6*x7+26454*x1*x6*x7+23798*x3*x6*x7+20717*x5*x6*x7+19792*x5^2*x6*x7+30188*x4*x6^2*x7+4157*x6^3*x7+5486*x2*x7^2+6097*x4*x7^2+24556*x4*x5*x7^2+17777*x6*x7^2+29749*x3*x6*x7^2+27733*x5*x6*x7^2+3142*x6^3*x7^2+41118*x2*x7^3+23382*x4*x7^3+25315*x6*x7^3+24204*x5*x6*x7^3+608*x4*x7^4+3850*x6*x7^4+6335*x6*x7^5+18549*x8+27399*x1*x8+26035*x3*x8+4669*x4^2*x8+10887*x5*x8+32447*x3*x5*x8+28740*x5^2*x8+28677*x2*x6*x8+4634*x4*x6*x8+7032*x6^2*x8+40497*x5*x6^2*x8+18975*x7*x8+9562*x1*x7*x8+35413*x3*x7*x8+26007*x4^2*x7*x8+5538*x5*x7*x8+41635*x3*x5*x7*x8+40273*x5^2*x7*x8+29952*x2*x6*x7*x8+41919*x4*x6*x7*x8+34896*x6^2*x7*x8+22937*x5*x6^2*x7*x8+6974*x7^2*x8+8752*x1*x7^2*x8+32114*x3*x7^2*x8+31525*x5*x7^2*x8+37715*x5^2*x7^2*x8+1114*x4*x6*x7^2*x8+12103*x6^2*x7^2*x8+41538*x7^3*x8+29900*x3*x7^3*x8+10463*x5*x7^3*x8+20171*x6^2*x7^3*x8+19650*x7^4*x8+16826*x5*x7^4*x8+6590*x7^5*x8+456*x7^6*x8+36768*x2*x8^2+21548*x4*x8^2+29850*x3*x4*x8^2+892*x2*x5*x8^2+10370*x4*x5*x8^2+24329*x6*x8^2+5152*x3*x6*x8^2+27513*x5*x6*x8^2+9477*x5^2*x6*x8^2+39327*x4*x6^2*x8^2+41706*x6^3*x8^2+19303*x2*x7*x8^2+3985*x4*x7*x8^2+30336*x4*x5*x7*x8^2+15777*x6*x7*x8^2+36691*x3*x6*x7*x8^2+29829*x5*x6*x7*x8^2+28786*x6^3*x7*x8^2+26808*x2*x7^2*x8^2+40276*x4*x7^2*x8^2+983*x6*x7^2*x8^2+14800*x5*x6*x7^2*x8^2+21337*x4*x7^3*x8^2+8531*x6*x7^3*x8^2+40238*x6*x7^4*x8^2+37066*x8^3+28686*x1*x8^3+15566*x3*x8^3+12163*x4^2*x8^3+5818*x5*x8^3+32612*x3*x5*x8^3+16809*x5^2*x8^3+27757*x4*x6*x8^3+23840*x6^2*x8^3+33854*x7*x8^3+17002*x1*x7*x8^3+10819*x3*x7*x8^3+35835*x5*x7*x8^3+12214*x5^2*x7*x8^3+2332*x4*x6*x7*x8^3+41320*x6^2*x7*x8^3+4524*x7^2*x8^3+37453*x3*x7^2*x8^3+31694*x5*x7^2*x8^3+33903*x6^2*x7^2*x8^3+11139*x7^3*x8^3+23767*x5*x7^3*x8^3+16859*x7^4*x8^3+20551*x7^5*x8^3+29597*x2*x8^4+25635*x4*x8^4+20958*x6*x8^4+10348*x5*x6*x8^4+15559*x2*x7*x8^4+25251*x4*x7*x8^4+38402*x6*x7*x8^4+8716*x5*x6*x7*x8^4+36792*x4*x7^2*x8^4+1849*x6*x7^2*x8^4+20223*x6*x7^3*x8^4+13462*x8^5+30462*x3*x8^5+39739*x5*x8^5+7470*x6^2*x8^5+35795*x7*x8^5+29799*x3*x7*x8^5+1579*x5*x7*x8^5+29369*x6^2*x7*x8^5+1906*x7^2*x8^5+7015*x5*x7^2*x8^5+11339*x7^3*x8^5+30812*x7^4*x8^5+3984*x4*x8^6+9462*x6*x8^6+4460*x4*x7*x8^6+2521*x6*x7*x8^6+10895*x6*x7^2*x8^6+17916*x8^7+40140*x5*x8^7+17467*x7*x8^7+14565*x5*x7*x8^7+17224*x7^2*x8^7+31675*x7^3*x8^7+8563*x6*x8^8+8869*x6*x7*x8^8+13142*x8^9+5796*x7*x8^9+22248*x7^2*x8^9+18219*x8^11+39251*x7*x8^11",
    "34676+19386*x1+22850*x3+16383*x3^2+38227*x2*x4+1881*x4^2+28296*x5+18058*x1*x5+4208*x3*x5+35408*x5^2+12815*x5^3+10847*x2*x6+15542*x4*x6+36198*x4*x5*x6+349*x6^2+25167*x3*x6^2+29525*x5*x6^2+8852*x6^4+31703*x7+40978*x1*x7+7759*x3*x7+39543*x4^2*x7+31549*x5*x7+26597*x3*x5*x7+33059*x5^2*x7+28919*x2*x6*x7+13629*x4*x6*x7+5468*x6^2*x7+31050*x5*x6^2*x7+4269*x7^2+33951*x1*x7^2+8859*x3*x7^2+14909*x5*x7^2+19951*x5^2*x7^2+37260*x4*x6*x7^2+24513*x6^2*x7^2+15131*x7^3+19951*x3*x7^3+25194*x5*x7^3+8784*x6^2*x7^3+29089*x7^4+14708*x5*x7^4+29307*x7^5+14599*x7^6+9309*x2*x8+17869*x4*x8+12587*x3*x4*x8+14034*x2*x5*x8+10684*x4*x5*x8+8465*x6*x8+11896*x1*x6*x8+1226*x3*x6*x8+24151*x5*x6*x8+35922*x5^2*x6*x8+5197*x4*x6^2*x8+41034*x6^3*x8+20663*x2*x7*x8+1678*x4*x7*x8+2005*x4*x5*x7*x8+32343*x6*x7*x8+29041*x3*x6*x7*x8+17308*x5*x6*x7*x8+13142*x6^3*x7*x8+221*x2*x7^2*x8+28748*x4*x7^2*x8+4661*x6*x7^2*x8+5339*x5*x6*x7^2*x8+4256*x4*x7^3*x8+9738*x6*x7^3*x8+34063*x6*x7^4*x8+10015*x8^2+16938*x1*x8^2+3750*x3*x8^2+25938*x4^2*x8^2+18637*x5*x8^2+11870*x3*x5*x8^2+4407*x5^2*x8^2+1319*x2*x6*x8^2+1723*x4*x6*x8^2+34821*x6^2*x8^2+23230*x5*x6^2*x8^2+23829*x7*x8^2+23568*x1*x7*x8^2+32939*x3*x7*x8^2+32055*x5*x7*x8^2+11273*x5^2*x7*x8^2+8342*x4*x6*x7*x8^2+21595*x6^2*x7*x8^2+39491*x7^2*x8^2+21773*x3*x7^2*x8^2+35028*x5*x7^2*x8^2+32556*x6^2*x7^2*x8^2+14512*x7^3*x8^2+6996*x5*x7^3*x8^2+2238*x7^4*x8^2+6760*x7^5*x8^2+36842*x2*x8^3+39575*x4*x8^3+11467*x4*x5*x8^3+17178*x6*x8^3+17466*x3*x6*x8^3+26642*x5*x6*x8^3+35493*x6^3*x8^3+35783*x2*x7*x8^3+33196*x4*x7*x8^3+13916*x6*x7*x8^3+40548*x5*x6*x7*x8^3+18146*x4*x7^2*x8^3+18953*x6*x7^2*x8^3+14811*x6*x7^3*x8^3+22339*x8^4+26403*x1*x8^4+22275*x3*x8^4+9735*x5*x8^4+12265*x5^2*x8^4+40770*x4*x6*x8^4+16265*x6^2*x8^4+7412*x7*x8^4+1787*x3*x7*x8^4+1999*x5*x7*x8^4+1686*x6^2*x7*x8^4+20834*x7^2*x8^4+17109*x5*x7^2*x8^4+37835*x7^3*x8^4+13001*x7^4*x8^4+39010*x2*x8^5+19738*x4*x8^5+23477*x6*x8^5+13469*x5*x6*x8^5+24912*x4*x7*x8^5+25754*x6*x7*x8^5+30804*x6*x7^2*x8^5+36784*x8^6+5902*x3*x8^6+27736*x5*x8^6+36282*x6^2*x8^6+38119*x7*x8^6+1244*x5*x7*x8^6+8789*x7^2*x8^6+32855*x7^3*x8^6+6244*x4*x8^7+16593*x6*x8^7+36566*x6*x7*x8^7+15535*x8^8+22954*x5*x8^8+5703*x7*x8^8+153*x7^2*x8^8+24360*x6*x8^9+16383*x8^10+1956*x7*x8^10+21341*x8^12",
    "2065+20843*x1+10912*x3+37221*x2*x4+12812*x4^2+11930*x5+6782*x1*x5+25058*x3*x5+39720*x5^2+14278*x5^3+41690*x2*x6+18041*x4*x6+5524*x3*x4*x6+5301*x2*x5*x6+18285*x4*x5*x6+6111*x6^2+4409*x1*x6^2+6470*x3*x6^2+19030*x5*x6^2+18356*x5^2*x6^2+9401*x4*x6^3+29301*x6^4+10583*x7+24520*x1*x7+3941*x3*x7+37221*x2*x4*x7+37214*x4^2*x7+66*x5*x7+6782*x1*x5*x7+29270*x3*x5*x7+40880*x5^2*x7+14278*x5^3*x7+19258*x2*x6*x7+17293*x4*x6*x7+25468*x4*x5*x6*x7+36555*x6^2*x7+39969*x3*x6^2*x7+20042*x5*x6^2*x7+14528*x6^4*x7+3786*x7^2+3677*x1*x7^2+40200*x3*x7^2+24402*x4^2*x7^2+38984*x5*x7^2+4212*x3*x5*x7^2+1160*x5^2*x7^2+6853*x2*x6*x7^2+35177*x4*x6*x7^2+34153*x6^2*x7^2+4034*x5*x6^2*x7^2+7082*x7^3+5158*x3*x7^3+8835*x5*x7^3+28110*x4*x6*x7^3+24630*x6^2*x7^3+11814*x7^4+8058*x6^2*x7^4+7897*x2*x8+31000*x4*x8+13395*x3*x4*x8+32114*x2*x5*x8+9485*x4*x5*x8+733*x6*x8+19653*x1*x6*x8+3665*x3*x6*x8+8020*x4^2*x6*x8+18844*x5*x6*x8+22233*x3*x5*x6*x8+41387*x5^2*x6*x8+4992*x2*x6^2*x8+19750*x4*x6^2*x8+37422*x6^3*x8+10825*x5*x6^3*x8+3097*x2*x7*x8+39725*x4*x7*x8+19717*x3*x4*x7*x8+4975*x2*x5*x7*x8+41163*x4*x5*x7*x8+13025*x6*x7*x8+15463*x1*x6*x7*x8+19295*x3*x6*x7*x8+31220*x5*x6*x7*x8+13288*x5^2*x6*x7*x8+14190*x4*x6^2*x7*x8+16817*x6^3*x7*x8+22544*x2*x7^2*x8+19982*x4*x7^2*x8+32101*x6*x7^2*x8+32992*x3*x6*x7^2*x8+17836*x5*x6*x7^2*x8+10364*x6^3*x7^2*x8+27122*x4*x7^3*x8+27988*x6*x7^3*x8+30813*x5*x6*x7^3*x8+36510*x6*x7^4*x8+76*x6*x7^5*x8+7278*x8^2+29009*x1*x8^2+32437*x3*x8^2+7188*x2*x4*x8^2+36646*x4^2*x8^2+26428*x5*x8^2+31840*x1*x5*x8^2+9449*x3*x5*x8^2+468*x5^2*x8^2+20596*x5^3*x8^2+24057*x2*x6*x8^2+5124*x4*x6*x8^2+15006*x4*x5*x6*x8^2+12734*x6^2*x8^2+41126*x3*x6^2*x8^2+37845*x5*x6^2*x8^2+18802*x6^4*x8^2+4544*x7*x8^2+16732*x1*x7*x8^2+1925*x3*x7*x8^2+5410*x4^2*x7*x8^2+12890*x5*x7*x8^2+35695*x3*x5*x7*x8^2+8029*x5^2*x7*x8^2+4468*x2*x6*x7*x8^2+263*x4*x6*x7*x8^2+19667*x6^2*x7*x8^2+16471*x5*x6^2*x7*x8^2+11010*x7^2*x8^2+39687*x3*x7^2*x8^2+31237*x5*x7^2*x8^2+38567*x4*x6*x7^2*x8^2+14652*x6^2*x7^2*x8^2+31074*x7^3*x8^2+13974*x5*x7^3*x8^2+34715*x6^2*x7^3*x8^2+14141*x7^4*x8^2+41348*x7^5*x8^2+3632*x2*x8^3+32704*x4*x8^3+33444*x3*x4*x8^3+13544*x2*x5*x8^3+39861*x4*x5*x8^3+26764*x6*x8^3+16838*x1*x6*x8^3+27299*x3*x6*x8^3+2987*x5*x6*x8^3+16040*x5^2*x6*x8^3+14393*x4*x6^2*x8^3+6322*x6^3*x8^3+10447*x2*x7*x8^3+26603*x4*x7*x8^3+27223*x6*x7*x8^3+41253*x3*x6*x7*x8^3+4238*x5*x6*x7*x8^3+26657*x6^3*x7*x8^3+9146*x4*x7^2*x8^3+25336*x6*x7^2*x8^3+38972*x5*x6*x7^2*x8^3+38940*x6*x7^3*x8^3+38436*x6*x7^4*x8^3+4581*x8^4+41726*x1*x8^4+15020*x3*x8^4+7181*x5*x8^4+27702*x5^2*x8^4+37604*x2*x6*x8^4+2326*x4*x6*x8^4+24821*x6^2*x8^4+15457*x5*x6^2*x8^4+39688*x7*x8^4+6650*x3*x7*x8^4+12137*x5*x7*x8^4+6132*x4*x6*x7*x8^4+19948*x6^2*x7*x8^4+3136*x7^2*x8^4+37112*x5*x7^2*x8^4+24377*x6^2*x7^2*x8^4+23718*x7^3*x8^4+41802*x7^4*x8^4+7069*x2*x8^5+4157*x4*x8^5+9892*x6*x8^5+25973*x3*x6*x8^5+17531*x5*x6*x8^5+11897*x6^3*x8^5+30371*x4*x7*x8^5+25243*x6*x7*x8^5+36180*x5*x6*x7*x8^5+3718*x6*x7^2*x8^5+33144*x6*x7^3*x8^5+13830*x8^6+14311*x3*x8^6+10219*x5*x8^6+28752*x4*x6*x8^6+37710*x6^2*x8^6+28917*x7*x8^6+19529*x5*x7*x8^6+8818*x6^2*x7*x8^6+25824*x7^2*x8^6+4081*x7^3*x8^6+498*x4*x8^7+30636*x6*x8^7+23434*x5*x6*x8^7+10644*x6*x7*x8^7+40290*x6*x7^2*x8^7+23246*x8^8+26024*x5*x8^8+36489*x6^2*x8^8+14229*x7*x8^8+4573*x7^2*x8^8+8535*x6*x8^9+3708*x6*x7*x8^9+12146*x8^10+9568*x7*x8^10+13544*x6*x8^11+7529*x8^12",
    "2090+39902*x1+31636*x3+7737*x4^2+816*x5+40692*x3*x5+28735*x5^2+26522*x2*x6+30982*x4*x6+7720*x6^2+26892*x7+22198*x1*x7+29457*x3*x7+7737*x4^2*x7+41338*x5*x7+40692*x3*x5*x7+16099*x5^2*x7+26522*x2*x6*x7+20559*x4*x6*x7+17822*x6^2*x7+31498*x7^2+24309*x1*x7^2+18667*x3*x7^2+41485*x5*x7^2+29377*x5^2*x7^2+31590*x4*x6*x7^2+10102*x6^2*x7^2+24332*x7^3+20846*x3*x7^3+963*x5*x7^3+17636*x7^4+36345*x2*x8+30091*x4*x8+31978*x3*x4*x8+27295*x2*x5*x8+24104*x4*x5*x8+30788*x6*x8+8563*x1*x6*x8+11495*x3*x6*x8+9367*x5*x6*x8+7359*x5^2*x6*x8+29369*x4*x6^2*x8+27139*x6^3*x8+36817*x2*x7*x8+21537*x4*x7*x8+6895*x4*x5*x7*x8+15127*x6*x7*x8+753*x3*x6*x7*x8+30619*x5*x6*x7*x8+10997*x6^3*x7*x8+27275*x2*x7^2*x8+31650*x4*x7^2*x8+20215*x6*x7^2*x8+688*x5*x6*x7^2*x8+2128*x4*x7^3*x8+13074*x6*x7^3*x8+1166*x6*x7^4*x8+28196*x8^2+39166*x1*x8^2+12267*x3*x8^2+9769*x4^2*x8^2+31214*x5*x8^2+27738*x3*x5*x8^2+18646*x5^2*x8^2+23036*x2*x6*x8^2+5564*x4*x6*x8^2+34946*x6^2*x8^2+17260*x5*x6^2*x8^2+2636*x7*x8^2+15175*x1*x7*x8^2+3136*x3*x7*x8^2+39389*x5*x7*x8^2+3911*x5^2*x7*x8^2+40540*x4*x6*x7*x8^2+24601*x6^2*x7*x8^2+14147*x7^2*x8^2+31368*x3*x7^2*x8^2+22021*x5*x7^2*x8^2+7579*x6^2*x7^2*x8^2+24490*x7^3*x8^2+16878*x5*x7^3*x8^2+41685*x7^4*x8^2+1596*x7^5*x8^2+13369*x2*x8^3+4248*x4*x8^3+35694*x4*x5*x8^3+22584*x6*x8^3+20890*x3*x6*x8^3+39703*x5*x6*x8^3+16725*x6^3*x8^3+16707*x2*x7*x8^3+18405*x4*x7*x8^3+20799*x6*x7*x8^3+9787*x5*x6*x7*x8^3+11660*x4*x7^2*x8^3+27401*x6*x7^2*x8^3+14794*x6*x7^3*x8^3+26495*x8^4+17494*x1*x8^4+13770*x3*x8^4+1416*x5*x8^4+736*x5^2*x8^4+8162*x4*x6*x8^4+37531*x6^2*x8^4+35035*x7*x8^4+26053*x3*x7*x8^4+38092*x5*x7*x8^4+13628*x6^2*x7*x8^4+26084*x7^2*x8^4+20165*x5*x7^2*x8^4+1895*x7^3*x8^4+8909*x7^4*x8^4+33450*x2*x8^5+15231*x4*x8^5+40887*x6*x8^5+30506*x5*x6*x8^5+2733*x4*x7*x8^5+33997*x6*x7*x8^5+7761*x6*x7^2*x8^5+8821*x8^6+41277*x3*x8^6+25890*x5*x8^6+39772*x6^2*x8^6+39833*x7*x8^6+3546*x5*x7*x8^6+30451*x7^2*x8^6+23816*x7^3*x8^6+15610*x4*x8^7+5564*x6*x8^7+17126*x6*x7*x8^7+19833*x8^8+29971*x5*x8^8+16266*x7*x8^8+5830*x7^2*x8^8+10035*x6*x8^9+4460*x8^10+35855*x7*x8^10+32346*x8^12",
    "5876*x2+11596*x2*x3+30066*x4+28871*x1*x4+36196*x3*x4+39490*x2*x5+41834*x4*x5+35306*x4*x5^2+10800*x6+2196*x1*x6+3206*x3*x6+18717*x4^2*x6+27674*x5*x6+9557*x3*x5*x6+26284*x5^2*x6+28633*x2*x6^2+39545*x4*x6^2+15621*x6^3+2281*x5*x6^3+34334*x2*x7+11504*x4*x7+9986*x3*x4*x7+21000*x2*x5*x7+26538*x4*x5*x7+1781*x6*x7+35051*x1*x6*x7+17383*x3*x6*x7+36119*x5*x6*x7+18131*x5^2*x6*x7+7426*x4*x6^2*x7+7494*x6^3*x7+31825*x2*x7^2+39904*x4*x7^2+33639*x4*x5*x7^2+4172*x6*x7^2+29487*x3*x6*x7^2+1095*x5*x6*x7^2+15338*x6^3*x7^2+10086*x2*x7^3+8443*x4*x7^3+29613*x6*x7^3+32426*x5*x6*x7^3+24973*x4*x7^4+38711*x6*x7^4+7073*x6*x7^5+17269*x8+3785*x1*x8+22597*x3*x8+31755*x3^2*x8+19267*x2*x4*x8+7330*x4^2*x8+18621*x5*x8+41758*x1*x5*x8+29442*x3*x5*x8+17630*x5^2*x8+32131*x5^3*x8+23969*x2*x6*x8+35369*x4*x6*x8+30515*x4*x5*x6*x8+4555*x6^2*x8+10102*x3*x6^2*x8+20184*x5*x6^2*x8+34208*x6^4*x8+37519*x7*x8+21330*x1*x7*x8+41940*x3*x7*x8+2511*x4^2*x7*x8+35614*x5*x7*x8+9825*x3*x5*x7*x8+4607*x5^2*x7*x8+22810*x2*x6*x7*x8+3924*x4*x6*x7*x8+31481*x6^2*x7*x8+18621*x5*x6^2*x7*x8+32225*x7^2*x8+7132*x1*x7^2*x8+13144*x3*x7^2*x8+4474*x5*x7^2*x8+7518*x5^2*x7^2*x8+7437*x4*x6*x7^2*x8+28627*x6^2*x7^2*x8+41048*x7^3*x8+4018*x3*x7^3*x8+11472*x5*x7^3*x8+34956*x6^2*x7^3*x8+5293*x7^4*x8+1472*x5*x7^4*x8+9575*x7^5*x8+22045*x7^6*x8+745*x2*x8^2+12362*x4*x8^2+23466*x3*x4*x8^2+11354*x2*x5*x8^2+5277*x4*x5*x8^2+34439*x6*x8^2+408*x1*x6*x8^2+29500*x3*x6*x8^2+7561*x5*x6*x8^2+20933*x5^2*x6*x8^2+14320*x4*x6^2*x8^2+37824*x6^3*x8^2+24972*x2*x7*x8^2+3397*x4*x7*x8^2+300*x4*x5*x7*x8^2+8577*x6*x7*x8^2+8862*x3*x6*x7*x8^2+4288*x5*x6*x7*x8^2+27185*x6^3*x7*x8^2+933*x2*x7^2*x8^2+32624*x4*x7^2*x8^2+1349*x6*x7^2*x8^2+9159*x5*x6*x7^2*x8^2+11864*x4*x7^3*x8^2+11520*x6*x7^3*x8^2+26102*x6*x7^4*x8^2+25414*x8^3+15325*x1*x8^3+16710*x3*x8^3+25960*x4^2*x8^3+19062*x5*x8^3+7354*x3*x5*x8^3+940*x5^2*x8^3+29708*x2*x6*x8^3+9227*x4*x6*x8^3+36826*x6^2*x8^3+8280*x5*x6^2*x8^3+26699*x7*x8^3+20520*x1*x7*x8^3+29609*x3*x7*x8^3+692*x5*x7*x8^3+38610*x5^2*x7*x8^3+8501*x4*x6*x7*x8^3+26856*x6^2*x7*x8^3+16950*x7^2*x8^3+3331*x3*x7^2*x8^3+2995*x5*x7^2*x8^3+19926*x6^2*x7^2*x8^3+10884*x7^3*x8^3+14663*x5*x7^3*x8^3+18432*x7^4*x8^3+2372*x7^5*x8^3+37250*x2*x8^4+20134*x4*x8^4+18490*x4*x5*x8^4+15961*x6*x8^4+8162*x3*x6*x8^4+20847*x5*x6*x8^4+26782*x6^3*x8^4+13822*x2*x7*x8^4+40832*x4*x7*x8^4+4832*x6*x7*x8^4+27895*x5*x6*x7*x8^4+1074*x4*x7^2*x8^4+10044*x6*x7^2*x8^4+35320*x6*x7^3*x8^4+18317*x8^5+8422*x1*x8^5+8961*x3*x8^5+38726*x5*x8^5+29380*x5^2*x8^5+26663*x4*x6*x8^5+4872*x6^2*x8^5+25564*x7*x8^5+40491*x3*x7*x8^5+4315*x5*x7*x8^5+1258*x6^2*x7*x8^5+16781*x7^2*x8^5+25566*x5*x7^2*x8^5+32496*x7^3*x8^5+23643*x7^4*x8^5+29748*x2*x8^6+27311*x4*x8^6+51*x6*x8^6+9277*x5*x6*x8^6+32270*x4*x7*x8^6+26587*x6*x7*x8^6+41130*x6*x7^2*x8^6+19625*x8^7+20371*x3*x8^7+8995*x5*x8^7+9862*x6^2*x8^7+28694*x7*x8^7+39590*x5*x7*x8^7+11170*x7^2*x8^7+6187*x7^3*x8^7+5902*x4*x8^8+20276*x6*x8^8+30343*x6*x7*x8^8+31591*x8^9+12883*x5*x8^9+872*x7*x8^9+32357*x7^2*x8^9+14874*x6*x8^10+38668*x8^11+31282*x7*x8^11+25840*x8^13",
    "15247*x2+15092*x2*x3+41158*x4+23781*x1*x4+17024*x3*x4+10945*x3^2*x4+32652*x2*x4^2+6028*x4^3+22829*x2*x5+24103*x2*x3*x5+5323*x4*x5+23514*x1*x4*x5+10115*x3*x4*x5+7362*x2*x5^2+19351*x4*x5^2+40322*x4*x5^3+9465*x6+15916*x1*x6+3359*x3*x6+29850*x1*x3*x6+32710*x3^2*x6+18896*x2*x4*x6+3294*x4^2*x6+14052*x5*x6+20471*x1*x5*x6+17011*x3*x5*x6+36342*x4^2*x5*x6+13041*x5^2*x6+24179*x3*x5^2*x6+549*x5^3*x6+9492*x2*x6^2+2250*x4*x6^2+6492*x3*x4*x6^2+35820*x2*x5*x6^2+34814*x4*x5*x6^2+9848*x6^3+8781*x3*x6^3+17734*x5*x6^3+7835*x5^2*x6^3+30720*x4*x6^4+14452*x6^5+9987*x2*x7+38551*x2*x3*x7+20394*x4*x7+1368*x1*x4*x7+11493*x3*x4*x7+15988*x4^3*x7+12417*x2*x5*x7+13570*x4*x5*x7+12355*x3*x4*x5*x7+40920*x2*x5^2*x7+13321*x4*x5^2*x7+31417*x6*x7+11893*x1*x6*x7+11010*x3*x6*x7+33406*x3^2*x6*x7+6521*x2*x4*x6*x7+30539*x4^2*x6*x7+22338*x5*x6*x7+11436*x1*x5*x6*x7+5035*x3*x5*x6*x7+12781*x5^2*x6*x7+6155*x5^3*x6*x7+40373*x2*x6^2*x7+14437*x4*x6^2*x7+19892*x4*x5*x6^2*x7+38500*x6^3*x7+18258*x3*x6^3*x7+39386*x5*x6^3*x7+39548*x2*x7^2+38497*x2*x3*x7^2+19037*x4*x7^2+14626*x1*x4*x7^2+13463*x3*x4*x7^2+36174*x2*x5*x7^2+4690*x4*x5*x7^2+9314*x4*x5^2*x7^2+26334*x6*x7^2+37742*x1*x6*x7^2+15266*x3*x6*x7^2+17089*x4^2*x6*x7^2+37213*x5*x6*x7^2+13381*x3*x5*x6*x7^2+33096*x5^2*x6*x7^2+21169*x4*x6^2*x7^2+7375*x6^3*x7^2+35588*x5*x6^3*x7^2+7547*x2*x7^3+23937*x4*x7^3+7786*x3*x4*x7^3+35010*x2*x5*x7^3+32231*x4*x5*x7^3+36550*x6*x7^3+38739*x3*x6*x7^3+18754*x5*x6*x7^3+19802*x5^2*x6*x7^3+32971*x4*x6^2*x7^3+35322*x6^3*x7^3+35015*x2*x7^4+27396*x4*x7^4+26981*x4*x5*x7^4+38260*x6*x7^4+17611*x3*x6*x7^4+34552*x5*x6*x7^4+34751*x4*x7^5+859*x6*x7^5+39579*x5*x6*x7^5+21504*x4*x7^6+30689*x6*x7^6+27266*x8+3562*x1*x8+17313*x3*x8+27880*x1*x3*x8+22713*x3^2*x8+29589*x2*x4*x8+4086*x4^2*x8+6183*x3*x4^2*x8+9733*x5*x8+18196*x1*x5*x8+1215*x3*x5*x8+28469*x3^2*x5*x8+14702*x2*x4*x5*x8+38998*x4^2*x5*x8+12199*x5^2*x8+25946*x1*x5^2*x8+1408*x3*x5^2*x8+24434*x5^3*x8+3768*x5^4*x8+4028*x2*x6*x8+25707*x2*x3*x6*x8+2496*x4*x6*x8+28199*x1*x4*x6*x8+16423*x3*x4*x6*x8+9966*x2*x5*x6*x8+16094*x4*x5*x6*x8+9325*x4*x5^2*x6*x8+9955*x6^2*x8+27057*x1*x6^2*x8+28010*x3*x6^2*x8+1729*x4^2*x6^2*x8+28861*x5*x6^2*x8+33262*x3*x5*x6^2*x8+31876*x5^2*x6^2*x8+20703*x4*x6^3*x8+14270*x6^4*x8+24962*x5*x6^4*x8+24417*x7*x8+11862*x1*x7*x8+27177*x3*x7*x8+39358*x1*x3*x7*x8+13171*x3^2*x7*x8+33886*x2*x4*x7*x8+29578*x4^2*x7*x8+14365*x5*x7*x8+24459*x1*x5*x7*x8+41662*x3*x5*x7*x8+16105*x4^2*x5*x7*x8+41797*x5^2*x7*x8+39485*x3*x5^2*x7*x8+25468*x5^3*x7*x8+1653*x2*x6*x7*x8+40059*x4*x6*x7*x8+11842*x3*x4*x6*x7*x8+24397*x2*x5*x6*x7*x8+10904*x4*x5*x6*x7*x8+10613*x6^2*x7*x8+36654*x3*x6^2*x7*x8+5015*x5*x6^2*x7*x8+12244*x5^2*x6^2*x7*x8+19833*x4*x6^3*x7*x8+28103*x6^4*x7*x8+33953*x7^2*x8+22215*x1*x7^2*x8+28499*x3*x7^2*x8+28507*x3^2*x7^2*x8+33183*x2*x4*x7^2*x8+34672*x4^2*x7^2*x8+34922*x5*x7^2*x8+631*x1*x5*x7^2*x8+1697*x3*x5*x7^2*x8+37189*x5^2*x7^2*x8+5948*x5^3*x7^2*x8+6191*x2*x6*x7^2*x8+9324*x4*x6*x7^2*x8+10254*x4*x5*x6*x7^2*x8+19163*x6^2*x7^2*x8+9439*x3*x6^2*x7^2*x8+37686*x5*x6^2*x7^2*x8+18561*x7^3*x8+38858*x1*x7^3*x8+2585*x3*x7^3*x8+15853*x4^2*x7^3*x8+3020*x5*x7^3*x8+38060*x3*x5*x7^3*x8+20698*x5^2*x7^3*x8+16472*x4*x6*x7^3*x8+37782*x6^2*x7^3*x8+33178*x5*x6^2*x7^3*x8+6406*x7^4*x8+35370*x3*x7^4*x8+10339*x5*x7^4*x8+18840*x5^2*x7^4*x8+35405*x4*x6*x7^4*x8+35202*x6^2*x7^4*x8+4176*x7^5*x8+33618*x3*x7^5*x8+11709*x5*x7^5*x8+38796*x7^6*x8+23967*x5*x7^6*x8+6204*x7^7*x8+19416*x2*x8^2+4010*x2*x3*x8^2+34578*x4*x8^2+26479*x1*x4*x8^2+23486*x3*x4*x8^2+2898*x4^3*x8^2+34275*x2*x5*x8^2+10899*x4*x5*x8^2+41328*x3*x4*x5*x8^2+7460*x2*x5^2*x8^2+4410*x4*x5^2*x8^2+25917*x6*x8^2+8842*x1*x6*x8^2+11680*x3*x6*x8^2+37723*x3^2*x6*x8^2+35260*x2*x4*x6*x8^2+106*x4^2*x6*x8^2+14262*x5*x6*x8^2+2534*x1*x5*x6*x8^2+27238*x3*x5*x6*x8^2+1485*x5^2*x6*x8^2+17241*x5^3*x6*x8^2+33765*x2*x6^2*x8^2+38430*x4*x6^2*x8^2+40001*x4*x5*x6^2*x8^2+41760*x6^3*x8^2+27088*x3*x6^3*x8^2+30801*x5*x6^3*x8^2+11657*x2*x7*x8^2+17252*x2*x3*x7*x8^2+3433*x4*x7*x8^2+37530*x1*x4*x7*x8^2+16624*x3*x4*x7*x8^2+27120*x2*x5*x7*x8^2+7185*x4*x5*x7*x8^2+13625*x4*x5^2*x7*x8^2+23596*x6*x7*x8^2+9745*x1*x6*x7*x8^2+17665*x3*x6*x7*x8^2+397*x4^2*x6*x7*x8^2+10791*x5*x6*x7*x8^2+35651*x3*x5*x6*x7*x8^2+23259*x5^2*x6*x7*x8^2+21777*x4*x6^2*x7*x8^2+35531*x6^3*x7*x8^2+5617*x5*x6^3*x7*x8^2+13619*x2*x7^2*x8^2+39918*x4*x7^2*x8^2+12087*x3*x4*x7^2*x8^2+16099*x2*x5*x7^2*x8^2+29455*x4*x5*x7^2*x8^2+6405*x6*x7^2*x8^2+13629*x3*x6*x7^2*x8^2+2443*x5*x6*x7^2*x8^2+27198*x5^2*x6*x7^2*x8^2+26256*x4*x6^2*x7^2*x8^2+8687*x6^3*x7^2*x8^2+3531*x2*x7^3*x8^2+13910*x4*x7^3*x8^2+25479*x4*x5*x7^3*x8^2+1948*x6*x7^3*x8^2+24478*x3*x6*x7^3*x8^2+41690*x5*x6*x7^3*x8^2+31263*x4*x7^4*x8^2+13922*x6*x7^4*x8^2+17991*x5*x6*x7^4*x8^2+25378*x4*x7^5*x8^2+35233*x6*x7^5*x8^2+4196*x8^3+1540*x1*x8^3+13582*x3*x8^3+18489*x1*x3*x8^3+40795*x3^2*x8^3+15524*x2*x4*x8^3+40847*x4^2*x8^3+39611*x5*x8^3+2000*x1*x5*x8^3+25206*x3*x5*x8^3+40795*x4^2*x5*x8^3+2256*x5^2*x8^3+19367*x3*x5^2*x8^3+4121*x5^3*x8^3+8389*x2*x6*x8^3+9373*x4*x6*x8^3+36788*x3*x4*x6*x8^3+24853*x2*x5*x6*x8^3+2049*x4*x5*x6*x8^3+15568*x6^2*x8^3+23097*x3*x6^2*x8^3+31487*x5*x6^2*x8^3+21412*x5^2*x6^2*x8^3+40670*x4*x6^3*x8^3+6715*x6^4*x8^3+16483*x7*x8^3+35296*x1*x7*x8^3+5360*x3*x7*x8^3+41937*x3^2*x7*x8^3+1923*x2*x4*x7*x8^3+14652*x4^2*x7*x8^3+10753*x5*x7*x8^3+24166*x1*x5*x7*x8^3+7995*x3*x5*x7*x8^3+11472*x5^2*x7*x8^3+22755*x5^3*x7*x8^3+34172*x2*x6*x7*x8^3+18550*x4*x6*x7*x8^3+7892*x4*x5*x6*x7*x8^3+14035*x6^2*x7*x8^3+6867*x3*x6^2*x7*x8^3+12912*x5*x6^2*x7*x8^3+1219*x7^2*x8^3+5209*x1*x7^2*x8^3+11360*x3*x7^2*x8^3+36641*x4^2*x7^2*x8^3+22791*x5*x7^2*x8^3+36009*x3*x5*x7^2*x8^3+7012*x5^2*x7^2*x8^3+29693*x4*x6*x7^2*x8^3+13233*x6^2*x7^2*x8^3+28321*x5*x6^2*x7^2*x8^3+11357*x7^3*x8^3+36511*x3*x7^3*x8^3+40548*x5*x7^3*x8^3+21775*x5^2*x7^3*x8^3+38778*x4*x6*x7^3*x8^3+609*x6^2*x7^3*x8^3+28855*x7^4*x8^3+37454*x3*x7^4*x8^3+8062*x5*x7^4*x8^3+38934*x7^5*x8^3+7451*x5*x7^5*x8^3+4758*x7^6*x8^3+13283*x2*x8^4+12163*x2*x3*x8^4+19998*x4*x8^4+3391*x1*x4*x8^4+39454*x3*x4*x8^4+3534*x2*x5*x8^4+13497*x4*x5*x8^4+12049*x4*x5^2*x8^4+5265*x6*x8^4+25058*x1*x6*x8^4+14333*x3*x6*x8^4+29087*x4^2*x6*x8^4+2322*x5*x6*x8^4+14773*x3*x5*x6*x8^4+14203*x5^2*x6*x8^4+41937*x4*x6^2*x8^4+21583*x6^3*x8^4+10972*x5*x6^3*x8^4+29822*x2*x7*x8^4+29147*x4*x7*x8^4+31124*x3*x4*x7*x8^4+14659*x2*x5*x7*x8^4+41314*x4*x5*x7*x8^4+18427*x6*x7*x8^4+38751*x3*x6*x7*x8^4+38557*x5*x6*x7*x8^4+10313*x5^2*x6*x7*x8^4+30663*x4*x6^2*x7*x8^4+1890*x6^3*x7*x8^4+10731*x2*x7^2*x8^4+19949*x4*x7^2*x8^4+18937*x4*x5*x7^2*x8^4+17637*x6*x7^2*x8^4+6639*x3*x6*x7^2*x8^4+18114*x5*x6*x7^2*x8^4+9567*x4*x7^3*x8^4+13649*x6*x7^3*x8^4+18553*x5*x6*x7^3*x8^4+30449*x4*x7^4*x8^4+7068*x6*x7^4*x8^4+24397*x8^5+25106*x1*x8^5+29456*x3*x8^5+40409*x3^2*x8^5+7960*x2*x4*x8^5+26073*x4^2*x8^5+39945*x5*x8^5+5807*x1*x5*x8^5+9208*x3*x5*x8^5+31371*x5^2*x8^5+13098*x5^3*x8^5+2213*x2*x6*x8^5+30442*x4*x6*x8^5+30524*x4*x5*x6*x8^5+4006*x6^2*x8^5+5391*x3*x6^2*x8^5+4058*x5*x6^2*x8^5+24581*x7*x8^5+12978*x1*x7*x8^5+37883*x3*x7*x8^5+18220*x4^2*x7*x8^5+20428*x5*x7*x8^5+21221*x3*x5*x7*x8^5+38625*x5^2*x7*x8^5+798*x4*x6*x7*x8^5+41184*x6^2*x7*x8^5+35511*x5*x6^2*x7*x8^5+1931*x7^2*x8^5+18763*x3*x7^2*x8^5+19496*x5*x7^2*x8^5+24180*x5^2*x7^2*x8^5+25647*x4*x6*x7^2*x8^5+30314*x6^2*x7^2*x8^5+34958*x7^3*x8^5+11717*x3*x7^3*x8^5+34900*x5*x7^3*x8^5+11963*x7^4*x8^5+39457*x5*x7^4*x8^5+12780*x7^5*x8^5+15097*x2*x8^6+5917*x4*x8^6+22113*x3*x4*x8^6+2762*x2*x5*x8^6+3920*x4*x5*x8^6+15910*x6*x8^6+28276*x3*x6*x8^6+20812*x5*x6*x8^6+39920*x5^2*x6*x8^6+1188*x4*x6^2*x8^6+36073*x6^3*x8^6+28203*x2*x7*x8^6+12500*x4*x7*x8^6+21005*x4*x5*x7*x8^6+29544*x6*x7*x8^6+17687*x3*x6*x7*x8^6+14020*x5*x6*x7*x8^6+25087*x4*x7^2*x8^6+11650*x6*x7^2*x8^6+32109*x5*x6*x7^2*x8^6+13158*x4*x7^3*x8^6+25743*x6*x7^3*x8^6+13814*x8^7+26484*x3*x8^7+32652*x4^2*x8^7+41034*x5*x8^7+27890*x3*x5*x8^7+14580*x5^2*x8^7+18094*x4*x6*x8^7+32429*x6^2*x8^7+5524*x5*x6^2*x8^7+33863*x7*x8^7+25992*x3*x7*x8^7+25061*x5*x7*x8^7+30127*x5^2*x7*x8^7+7951*x4*x6*x7*x8^7+16651*x6^2*x7*x8^7+33964*x7^2*x8^7+4029*x3*x7^2*x8^7+41365*x5*x7^2*x8^7+30135*x7^3*x8^7+22755*x5*x7^3*x8^7+12264*x7^4*x8^7+892*x4*x8^8+24875*x4*x5*x8^8+865*x6*x8^8+33058*x3*x6*x8^8+7938*x5*x6*x8^8+10958*x4*x7*x8^8+16812*x6*x7*x8^8+25256*x5*x6*x7*x8^8+10858*x4*x7^2*x8^8+29495*x6*x7^2*x8^8+21366*x8^9+38033*x3*x8^9+22814*x5*x8^9+8917*x5^2*x8^9+15273*x4*x6*x8^9+7661*x6^2*x8^9+23191*x7*x8^9+17176*x3*x7*x8^9+33000*x5*x7*x8^9+33598*x7^2*x8^9+18488*x5*x7^2*x8^9+33599*x7^3*x8^9+36835*x4*x8^10+38139*x6*x8^10+39327*x5*x6*x8^10+36468*x4*x7*x8^10+41155*x6*x7*x8^10+27324*x8^11+9757*x3*x8^11+1188*x5*x8^11+8869*x7*x8^11+22113*x5*x7*x8^11+15474*x7^2*x8^11+10752*x4*x8^12+30266*x6*x8^12+26063*x8^13+22499*x5*x8^13+13544*x7*x8^13",
    "1540*x2+28182*x2*x3+35513*x4+24071*x1*x4+34696*x3*x4+8511*x2*x5+21906*x4*x5+17687*x3*x4*x5+3534*x2*x5^2+20339*x4*x5^2+13373*x6+12548*x1*x6+5554*x3*x6+22113*x3^2*x6+9584*x2*x4*x6+25166*x4^2*x6+22323*x5*x6+28003*x1*x5*x6+25005*x3*x5*x6+24938*x5^2*x6+8183*x5^3*x6+11759*x2*x6^2+41743*x4*x6^2+3632*x4*x5*x6^2+24809*x6^3+28507*x3*x6^3+35421*x5*x6^3+28904*x6^5+16600*x2*x7+5844*x2*x3*x7+6269*x4*x7+30982*x1*x4*x7+33500*x3*x4*x7+39433*x2*x5*x7+10433*x4*x5*x7+15278*x4*x5^2*x7+30229*x6*x7+11967*x1*x6*x7+3916*x3*x6*x7+21*x4^2*x6*x7+30589*x5*x6*x7+33613*x3*x5*x6*x7+40355*x5^2*x6*x7+9947*x2*x6^2*x7+41172*x4*x6^2*x7+29208*x6^3*x7+26815*x5*x6^3*x7+41749*x2*x7^2+24690*x4*x7^2+27554*x3*x4*x7^2+36759*x2*x5*x7^2+12748*x4*x5*x7^2+9341*x6*x7^2+25280*x1*x6*x7^2+10005*x3*x6*x7^2+38107*x5*x6*x7^2+31260*x5^2*x6*x7^2+18910*x4*x6^2*x7^2+30050*x6^3*x7^2+26347*x2*x7^3+14377*x4*x7^3+41812*x4*x5*x7^3+29629*x6*x7^3+18875*x3*x6*x7^3+36468*x5*x6*x7^3+36058*x6^3*x7^3+20994*x2*x7^4+18612*x4*x7^4+9479*x6*x7^4+13469*x5*x6*x7^4+34335*x4*x7^5+31614*x6*x7^5+528*x6*x7^6+4968*x8+10242*x1*x8+15170*x3*x8+19518*x3^2*x8+33220*x2*x4*x8+16388*x4^2*x8+40980*x5*x8+23566*x1*x5*x8+15681*x3*x5*x8+19351*x4^2*x5*x8+28263*x5^2*x8+14822*x3*x5^2*x8+34466*x5^3*x8+9009*x2*x6*x8+7408*x4*x6*x8+30216*x3*x4*x6*x8+30742*x2*x5*x6*x8+4040*x4*x5*x6*x8+36513*x6^2*x8+12101*x1*x6^2*x8+10855*x3*x6^2*x8+10205*x5*x6^2*x8+32313*x5^2*x6^2*x8+24723*x4*x6^3*x8+17885*x6^4*x8+892*x7*x8+10932*x1*x7*x8+2316*x3*x7*x8+5710*x3^2*x7*x8+39646*x2*x4*x7*x8+35096*x4^2*x7*x8+28215*x5*x7*x8+15141*x1*x5*x7*x8+5671*x3*x5*x7*x8+10750*x5^2*x7*x8+37370*x5^3*x7*x8+15460*x2*x6*x7*x8+29773*x4*x6*x7*x8+28288*x4*x5*x6*x7*x8+3106*x6^2*x7*x8+21352*x3*x6^2*x7*x8+39729*x5*x6^2*x7*x8+8048*x6^4*x7*x8+31644*x7^2*x8+15645*x1*x7^2*x8+17039*x3*x7^2*x8+14041*x4^2*x7^2*x8+13499*x5*x7^2*x8+20160*x3*x5*x7^2*x8+4580*x5^2*x7^2*x8+34125*x2*x6*x7^2*x8+16672*x4*x6*x7^2*x8+30467*x6^2*x7^2*x8+10959*x5*x6^2*x7^2*x8+39586*x7^3*x8+9465*x1*x7^3*x8+33692*x3*x7^3*x8+24067*x5*x7^3*x8+25736*x5^2*x7^3*x8+40962*x4*x6*x7^3*x8+28197*x6^2*x7^3*x8+39813*x7^4*x8+41531*x3*x7^4*x8+292*x5*x7^4*x8+17581*x6^2*x7^4*x8+25041*x7^5*x8+2564*x5*x7^5*x8+22165*x7^6*x8+23401*x7^7*x8+40562*x2*x8^2+6965*x2*x3*x8^2+41971*x4*x8^2+24326*x1*x4*x8^2+11136*x3*x4*x8^2+20884*x2*x5*x8^2+32732*x4*x5*x8^2+38908*x4*x5^2*x8^2+27979*x6*x8^2+4772*x1*x6*x8^2+35986*x3*x6*x8^2+38778*x4^2*x6*x8^2+12705*x5*x6*x8^2+9107*x3*x5*x6*x8^2+22703*x5^2*x6*x8^2+25517*x2*x6^2*x8^2+22952*x4*x6^2*x8^2+3841*x6^3*x8^2+20623*x5*x6^3*x8^2+15985*x2*x7*x8^2+37604*x4*x7*x8^2+10885*x3*x4*x7*x8^2+13992*x2*x5*x7*x8^2+9911*x4*x5*x7*x8^2+9345*x6*x7*x8^2+40827*x1*x6*x7*x8^2+31022*x3*x6*x7*x8^2+30345*x5*x6*x7*x8^2+23094*x5^2*x6*x7*x8^2+41002*x4*x6^2*x7*x8^2+28103*x6^3*x7*x8^2+39473*x2*x7^2*x8^2+1432*x4*x7^2*x8^2+35388*x4*x5*x7^2*x8^2+36043*x6*x7^2*x8^2+28632*x3*x6*x7^2*x8^2+22750*x5*x6*x7^2*x8^2+31760*x6^3*x7^2*x8^2+31420*x2*x7^3*x8^2+21147*x4*x7^3*x8^2+8338*x6*x7^3*x8^2+4260*x5*x6*x7^3*x8^2+35996*x4*x7^4*x8^2+14001*x6*x7^4*x8^2+16085*x6*x7^5*x8^2+30858*x8^3+26750*x1*x8^3+8060*x3*x8^3+25291*x3^2*x8^3+17910*x2*x4*x8^3+38513*x4^2*x8^3+20531*x5*x8^3+6582*x1*x5*x8^3+35144*x3*x5*x8^3+4834*x5^2*x8^3+38702*x5^3*x8^3+6344*x2*x6*x8^3+11733*x4*x6*x8^3+6050*x4*x5*x6*x8^3+1955*x6^2*x8^3+24630*x3*x6^2*x8^3+24154*x5*x6^2*x8^3+13430*x6^4*x8^3+41047*x7*x8^3+12142*x1*x7*x8^3+27555*x3*x7*x8^3+18425*x4^2*x7*x8^3+33206*x5*x7*x8^3+41869*x3*x5*x7*x8^3+25764*x5^2*x7*x8^3+17461*x2*x6*x7*x8^3+35489*x4*x6*x7*x8^3+41815*x6^2*x7*x8^3+9723*x5*x6^2*x7*x8^3+21858*x7^2*x8^3+26386*x1*x7^2*x8^3+14202*x3*x7^2*x8^3+34926*x5*x7^2*x8^3+17198*x5^2*x7^2*x8^3+35368*x4*x6*x7^2*x8^3+40514*x6^2*x7^2*x8^3+20886*x7^3*x8^3+19534*x3*x7^3*x8^3+18638*x5*x7^3*x8^3+37035*x6^2*x7^3*x8^3+30514*x7^4*x8^3+16145*x5*x7^4*x8^3+19040*x7^5*x8^3+27739*x7^6*x8^3+26871*x2*x8^4+5124*x4*x8^4+11065*x2*x5*x8^4+7493*x4*x5*x8^4+37532*x6*x8^4+8103*x1*x6*x8^4+32890*x3*x6*x8^4+16139*x5*x6*x8^4+13810*x5^2*x6*x8^4+3221*x4*x6^2*x8^4+30274*x6^3*x8^4+31601*x2*x7*x8^4+19061*x4*x7*x8^4+22029*x4*x5*x7*x8^4+32938*x6*x7*x8^4+40347*x3*x6*x7*x8^4+7435*x5*x6*x7*x8^4+26002*x6^3*x7*x8^4+9820*x2*x7^2*x8^4+12661*x4*x7^2*x8^4+37470*x6*x7^2*x8^4+30168*x5*x6*x7^2*x8^4+9868*x4*x7^3*x8^4+8799*x6*x7^3*x8^4+15818*x6*x7^4*x8^4+35374*x8^5+19926*x1*x8^5+29713*x3*x8^5+14231*x5*x8^5+3311*x3*x5*x8^5+41417*x5^2*x8^5+4426*x2*x6*x8^5+15396*x4*x6*x8^5+17399*x6^2*x8^5+2762*x5*x6^2*x8^5+29803*x7*x8^5+3079*x1*x7*x8^5+26817*x3*x7*x8^5+18193*x5*x7*x8^5+10525*x5^2*x7*x8^5+15828*x4*x6*x7*x8^5+19973*x6^2*x7*x8^5+20080*x7^2*x8^5+11967*x3*x7^2*x8^5+8184*x5*x7^2*x8^5+24117*x6^2*x7^2*x8^5+16100*x7^3*x8^5+6679*x5*x7^3*x8^5+41315*x7^4*x8^5+3673*x7^5*x8^5+17959*x2*x8^6+12834*x4*x8^6+19168*x4*x5*x8^6+40743*x6*x8^6+17687*x3*x6*x8^6+36224*x5*x6*x8^6+30133*x6^3*x8^6+41430*x2*x7*x8^6+28192*x4*x7*x8^6+834*x6*x7*x8^6+9543*x5*x6*x7*x8^6+31560*x4*x7^2*x8^6+18112*x6*x7^2*x8^6+13951*x6*x7^3*x8^6+26042*x8^7+37709*x3*x8^7+35182*x5*x8^7+29627*x5^2*x8^7+9584*x4*x6*x8^7+17473*x6^2*x8^7+19394*x7*x8^7+5082*x3*x7*x8^7+38398*x5*x7*x8^7+3350*x6^2*x7*x8^7+34208*x7^2*x8^7+16622*x5*x7^2*x8^7+1931*x7^3*x8^7+5221*x7^4*x8^7+29877*x4*x8^8+32776*x6*x8^8+20123*x5*x6*x8^8+9710*x4*x7*x8^8+10781*x6*x7*x8^8+18182*x6*x7^2*x8^8+8486*x8^9+35198*x5*x8^9+15322*x6^2*x8^9+11466*x7*x8^9+10188*x5*x7*x8^9+3338*x7^2*x8^9+25242*x7^3*x8^9+38089*x6*x8^10+15160*x6*x7*x8^10+19785*x8^11+37038*x5*x8^11+9914*x7*x8^11+37604*x7^2*x8^11+18519*x6*x8^12+41331*x8^13+1381*x7*x8^13",
    "20351+15262*x1+16382*x3+38622*x1*x3+30582*x3^2+20229*x2*x4+7409*x4^2+29850*x3*x4^2+20732*x5+5427*x1*x5+30262*x3*x5+1767*x2*x4*x5+888*x4^2*x5+13132*x5^2+34874*x3*x5^2+39300*x5^3+17347*x2*x6+12832*x2*x3*x6+26664*x4*x6+26539*x1*x4*x6+37274*x3*x4*x6+14920*x2*x5*x6+239*x4*x5*x6+16643*x4*x5^2*x6+37714*x6^2+38961*x1*x6^2+12891*x3*x6^2+15474*x4^2*x6^2+3756*x5*x6^2+27691*x3*x5*x6^2+30828*x5^2*x6^2+11048*x2*x6^3+31031*x4*x6^3+25923*x6^4+39175*x5*x6^4+33368*x7+25787*x1*x7+15564*x3*x7+38622*x1*x3*x7+9468*x3^2*x7+20701*x2*x4*x7+25434*x4^2*x7+29259*x5*x7+19757*x1*x5*x7+6062*x3*x5*x7+31291*x4^2*x5*x7+37886*x5^2*x7+34874*x3*x5^2*x7+6791*x5^3*x7+22931*x2*x6*x7+26784*x4*x6*x7+13018*x3*x4*x6*x7+36548*x2*x5*x6*x7+28116*x4*x5*x6*x7+21831*x6^2*x7+15167*x1*x6^2*x7+23061*x3*x6^2*x7+35420*x5*x6^2*x7+30775*x5^2*x6^2*x7+12092*x4*x6^3*x7+40081*x6^4*x7+15569*x7^2+38009*x1*x7^2+23334*x3*x7^2+39907*x3^2*x7^2+26577*x2*x4*x7^2+18046*x4^2*x7^2+21124*x5*x7^2+6577*x3*x5*x7^2+27165*x5^2*x7^2+28749*x2*x6*x7^2+19029*x4*x6*x7^2+37044*x4*x5*x6*x7^2+36752*x6^2*x7^2+22875*x3*x6^2*x7^2+34567*x5*x6^2*x7^2+9888*x6^4*x7^2+1739*x7^3+21792*x1*x7^3+40225*x3*x7^3+9370*x4^2*x7^3+12542*x5*x7^3+34276*x5^2*x7^3+6998*x2*x6*x7^3+7923*x4*x6*x7^3+1090*x6^2*x7^3+14984*x5*x6^2*x7^3+36228*x7^4+34276*x3*x7^4+36872*x5*x7^4+14131*x4*x6*x7^4+29771*x6^2*x7^4+37198*x7^5+5158*x5*x7^5+29843*x6^2*x7^5+41973*x7^6+37038*x7^7+3268*x2*x8+12721*x2*x3*x8+26658*x4*x8+12358*x1*x4*x8+11896*x3*x4*x8+30682*x4^3*x8+21384*x2*x5*x8+24860*x4*x5*x8+7411*x3*x4*x5*x8+7668*x4*x5^2*x8+9767*x6*x8+1239*x1*x6*x8+22769*x3*x6*x8+26196*x3^2*x6*x8+4855*x2*x4*x6*x8+29824*x4^2*x6*x8+14086*x5*x6*x8+3691*x1*x5*x6*x8+23594*x3*x5*x6*x8+22190*x5^2*x6*x8+18840*x5^3*x6*x8+29166*x2*x6^2*x8+5233*x4*x6^2*x8+41775*x4*x5*x6^2*x8+11866*x6^3*x8+13852*x3*x6^3*x8+30675*x5*x6^3*x8+40784*x6^5*x8+30018*x2*x7*x8+18519*x2*x3*x7*x8+23857*x4*x7*x8+2034*x1*x4*x7*x8+33948*x3*x4*x7*x8+2152*x2*x5*x7*x8+26995*x4*x5*x7*x8+32438*x4*x5^2*x7*x8+6068*x6*x7*x8+38700*x1*x6*x7*x8+1848*x3*x6*x7*x8+37419*x4^2*x6*x7*x8+39996*x5*x6*x7*x8+22729*x3*x5*x6*x7*x8+988*x5^2*x6*x7*x8+37959*x2*x6^2*x7*x8+39246*x4*x6^2*x7*x8+40025*x6^3*x7*x8+19207*x5*x6^3*x7*x8+26615*x2*x7^2*x8+4545*x4*x7^2*x8+39006*x3*x4*x7^2*x8+15250*x4*x5*x7^2*x8+21559*x6*x7^2*x8+3155*x1*x6*x7^2*x8+11267*x3*x6*x7^2*x8+14476*x5*x6*x7^2*x8+29740*x5^2*x6*x7^2*x8+27939*x4*x6^2*x7^2*x8+23081*x6^3*x7^2*x8+39314*x2*x7^3*x8+6333*x4*x7^3*x8+10271*x4*x5*x7^3*x8+24121*x6*x7^3*x8+27848*x3*x6*x7^3*x8+39580*x5*x6*x7^3*x8+39851*x6^3*x7^3*x8+28099*x4*x7^4*x8+13629*x6*x7^4*x8+10174*x5*x6*x7^4*x8+28034*x4*x7^5*x8+36603*x6*x7^5*x8+35809*x6*x7^6*x8+38204*x8^2+10689*x1*x8^2+7275*x3*x8^2+26093*x1*x3*x8^2+21495*x3^2*x8^2+8628*x2*x4*x8^2+39399*x4^2*x8^2+32844*x5*x8^2+24136*x1*x5*x8^2+20439*x3*x5*x8^2+33819*x4^2*x5*x8^2+16205*x5^2*x8^2+31715*x3*x5^2*x8^2+19904*x5^3*x8^2+33525*x2*x6*x8^2+33159*x4*x6*x8^2+10565*x3*x4*x6*x8^2+37300*x2*x5*x6*x8^2+20806*x4*x5*x6*x8^2+36125*x6^2*x8^2+12670*x1*x6^2*x8^2+26949*x3*x6^2*x8^2+4827*x5*x6^2*x8^2+2179*x5^2*x6^2*x8^2+21258*x4*x6^3*x8^2+34221*x6^4*x8^2+27381*x7*x8^2+26003*x1*x7*x8^2+38336*x3*x7*x8^2+3159*x3^2*x7*x8^2+35072*x2*x4*x7*x8^2+10519*x4^2*x7*x8^2+40651*x5*x7*x8^2+27664*x3*x5*x7*x8^2+18587*x5^2*x7*x8^2+39285*x2*x6*x7*x8^2+28282*x4*x6*x7*x8^2+13384*x4*x5*x6*x7*x8^2+30756*x6^2*x7*x8^2+22974*x3*x6^2*x7*x8^2+12152*x5*x6^2*x7*x8^2+28085*x6^4*x7*x8^2+3773*x7^2*x8^2+22745*x1*x7^2*x8^2+11040*x3*x7^2*x8^2+26860*x4^2*x7^2*x8^2+6535*x5*x7^2*x8^2+35470*x5^2*x7^2*x8^2+38482*x2*x6*x7^2*x8^2+27051*x4*x6*x7^2*x8^2+41917*x6^2*x7^2*x8^2+9951*x5*x6^2*x7^2*x8^2+2365*x7^3*x8^2+16852*x3*x7^3*x8^2+11166*x5*x7^3*x8^2+9566*x4*x6*x7^3*x8^2+795*x6^2*x7^3*x8^2+30777*x7^4*x8^2+20089*x5*x7^4*x8^2+5929*x6^2*x7^4*x8^2+3183*x7^5*x8^2+41726*x7^6*x8^2+30501*x2*x8^3+35241*x2*x3*x8^3+32706*x4*x8^3+3291*x1*x4*x8^3+37331*x3*x4*x8^3+23234*x2*x5*x8^3+2359*x4*x5*x8^3+19351*x4*x5^2*x8^3+25667*x6*x8^3+14138*x1*x6*x8^3+18850*x3*x6*x8^3+38948*x4^2*x6*x8^3+27703*x5*x6*x8^3+4789*x3*x5*x6*x8^3+16683*x5^2*x6*x8^3+40239*x2*x6^2*x8^3+32912*x4*x6^2*x8^3+28265*x6^3*x8^3+23034*x5*x6^3*x8^3+18981*x2*x7*x8^3+38387*x4*x7*x8^3+13751*x3*x4*x7*x8^3+29164*x4*x5*x7*x8^3+35804*x6*x7*x8^3+36804*x1*x6*x7*x8^3+40987*x3*x6*x7*x8^3+32771*x5*x6*x7*x8^3+29749*x5^2*x6*x7*x8^3+30777*x4*x6^2*x7*x8^3+16946*x6^3*x7*x8^3+5487*x2*x7^2*x8^3+4224*x4*x7^2*x8^3+26995*x4*x5*x7^2*x8^3+3405*x6*x7^2*x8^3+34520*x3*x6*x7^2*x8^3+16498*x5*x6*x7^2*x8^3+15566*x6^3*x7^2*x8^3+24443*x4*x7^3*x8^3+37561*x6*x7^3*x8^3+24849*x5*x6*x7^3*x8^3+12812*x4*x7^4*x8^3+22957*x6*x7^4*x8^3+37255*x6*x7^5*x8^3+7029*x8^4+29898*x1*x8^4+8360*x3*x8^4+26539*x2*x4*x8^4+31273*x4^2*x8^4+29329*x5*x8^4+8490*x3*x5*x8^4+27909*x5^2*x8^4+37825*x2*x6*x8^4+31215*x4*x6*x8^4+25137*x4*x5*x6*x8^4+29655*x6^2*x8^4+3117*x3*x6^2*x8^4+3470*x5*x6^2*x8^4+12847*x6^4*x8^4+22192*x7*x8^4+2553*x1*x7*x8^4+16267*x3*x7*x8^4+2044*x4^2*x7*x8^4+38222*x5*x7*x8^4+33336*x5^2*x7*x8^4+31282*x2*x6*x7*x8^4+17144*x4*x6*x7*x8^4+31361*x6^2*x7*x8^4+9552*x5*x6^2*x7*x8^4+39598*x7^2*x8^4+41434*x3*x7^2*x8^4+8644*x5*x7^2*x8^4+11415*x4*x6*x7^2*x8^4+28608*x6^2*x7^2*x8^4+14528*x7^3*x8^4+35387*x5*x7^3*x8^4+8739*x6^2*x7^3*x8^4+582*x7^4*x8^4+22907*x7^5*x8^4+37449*x2*x8^5+24435*x4*x8^5+22662*x3*x4*x8^5+40574*x4*x5*x8^5+5379*x6*x8^5+29035*x1*x6*x8^5+36281*x3*x6*x8^5+30073*x5*x6*x8^5+23477*x5^2*x6*x8^5+27962*x4*x6^2*x8^5+4321*x6^3*x8^5+37530*x2*x7*x8^5+18772*x4*x7*x8^5+12060*x4*x5*x7*x8^5+16264*x6*x7*x8^5+3989*x3*x6*x7*x8^5+36386*x5*x6*x7*x8^5+9503*x6^3*x7*x8^5+10658*x4*x7^2*x8^5+34982*x6*x7^2*x8^5+36874*x5*x6*x7^2*x8^5+11048*x4*x7^3*x8^5+35703*x6*x7^3*x8^5+29233*x6*x7^4*x8^5+15087*x8^6+6820*x1*x8^6+12486*x3*x8^6+9584*x4^2*x8^6+3290*x5*x8^6+3713*x5^2*x8^6+13810*x2*x6*x8^6+31489*x4*x6*x8^6+1034*x6^2*x8^6+31548*x5*x6^2*x8^6+14154*x7*x8^6+31777*x3*x7*x8^6+12031*x5*x7*x8^6+41468*x4*x6*x7*x8^6+18308*x6^2*x7*x8^6+27648*x7^2*x8^6+15015*x5*x7^2*x8^6+34506*x6^2*x7^2*x8^6+7679*x7^3*x8^6+41906*x7^4*x8^6+29369*x2*x8^7+34624*x4*x8^7+35820*x4*x5*x8^7+30307*x6*x8^7+1694*x3*x6*x8^7+2206*x5*x6*x8^7+27620*x6^3*x8^7+222*x4*x7*x8^7+28388*x6*x7*x8^7+24596*x5*x6*x7*x8^7+13430*x4*x7^2*x8^7+2038*x6*x7^2*x8^7+29749*x6*x7^3*x8^7+7431*x8^8+30155*x3*x8^8+38768*x5*x8^8+29404*x4*x6*x8^8+18828*x6^2*x8^8+3418*x7*x8^8+33690*x5*x7*x8^8+241*x6^2*x7*x8^8+1384*x7^2*x8^8+19281*x7^3*x8^8+20094*x4*x8^9+35822*x6*x8^9+2572*x5*x6*x8^9+1236*x4*x7*x8^9+22825*x6*x7*x8^9+8414*x6*x7^2*x8^9+20292*x8^10+24009*x5*x8^10+28583*x6^2*x8^10+38921*x7*x8^10+38565*x7^2*x8^10+18519*x4*x8^11+27671*x6*x8^11+26539*x6*x7*x8^11+26496*x8^12+798*x7*x8^12+28469*x6*x8^13+10782*x8^14",
    "18566+28648*x1+30014*x3+18991*x3^2+30531*x2*x4+21879*x4^2+22454*x5+13319*x1*x5+11695*x3*x5+4901*x5^2+15491*x5^3+27212*x2*x6+26276*x4*x6+5524*x3*x4*x6+5301*x2*x5*x6+7153*x4*x5*x6+41616*x6^2+4409*x1*x6^2+35425*x3*x6^2+8422*x5*x6^2+18356*x5^2*x6^2+9401*x4*x6^3+18236*x6^4+32272*x7+16749*x1*x7+21791*x3*x7+12386*x3^2*x7+1115*x2*x4*x7+1356*x4^2*x7+40195*x5*x7+3105*x1*x5*x7+15075*x3*x5*x7+34403*x5^2*x7+39800*x5^3*x7+6212*x2*x6*x7+32617*x4*x6*x7+27*x4*x5*x6*x7+226*x6^2*x7+14849*x3*x6^2*x7+15801*x5*x6^2*x7+4105*x6^4*x7+6837*x7^2+27604*x1*x7^2+24348*x3*x7^2+27278*x4^2*x7^2+38265*x5*x7^2+5355*x3*x5*x7^2+2708*x5^2*x7^2+40104*x2*x6*x7^2+40973*x4*x6*x7^2+27518*x6^2*x7^2+36587*x5*x6^2*x7^2+24808*x7^3+3142*x1*x7^3+1334*x3*x7^3+2682*x5*x7^3+11065*x5^2*x7^3+16758*x4*x6*x7^3+10525*x6^2*x7^3+17089*x7^4+11065*x3*x7^4+25126*x5*x7^4+33634*x6^2*x7^4+40583*x7^5+20632*x5*x7^5+13993*x7^6+22113*x7^7+8324*x2*x8+5798*x2*x3*x8+20621*x4*x8+35442*x1*x4*x8+26706*x3*x4*x8+24204*x2*x5*x8+13735*x4*x5*x8+17653*x4*x5^2*x8+35245*x6*x8+2634*x1*x6*x8+14508*x3*x6*x8+38385*x4^2*x6*x8+34930*x5*x6*x8+6005*x3*x5*x6*x8+23196*x5^2*x6*x8+40315*x2*x6^2*x8+31259*x4*x6^2*x8+8749*x6^3*x8+32972*x5*x6^3*x8+3499*x2*x7*x8+27747*x4*x7*x8+3432*x3*x4*x7*x8+2523*x2*x5*x7*x8+20806*x4*x5*x7*x8+36898*x6*x7*x8+1984*x1*x6*x7*x8+35190*x3*x6*x7*x8+33627*x5*x6*x7*x8+21003*x5^2*x6*x7*x8+23784*x4*x6^2*x7*x8+22079*x6^3*x7*x8+13240*x2*x7^2*x8+5416*x4*x7^2*x8+21255*x4*x5*x7^2*x8+8928*x6*x7^2*x8+28275*x3*x6*x7^2*x8+32223*x5*x6*x7^2*x8+481*x6^3*x7^2*x8+24069*x2*x7^3*x8+39724*x4*x7^3*x8+23273*x6*x7^3*x8+19446*x5*x6*x7^3*x8+34177*x4*x7^4*x8+32550*x6*x7^4*x8+11154*x6*x7^5*x8+7027*x8^2+2052*x1*x8^2+38465*x3*x8^2+3380*x3^2*x8^2+15149*x2*x4*x8^2+3104*x4^2*x8^2+1092*x5*x8^2+24516*x1*x5*x8^2+16224*x3*x5*x8^2+8678*x5^2*x8^2+5841*x5^3*x8^2+36313*x2*x6*x8^2+18057*x4*x6*x8^2+3429*x4*x5*x6*x8^2+38081*x6^2*x8^2+10708*x3*x6^2*x8^2+3575*x5*x6^2*x8^2+10199*x6^4*x8^2+39260*x7*x8^2+21288*x1*x7*x8^2+3729*x3*x7*x8^2+36992*x4^2*x7*x8^2+387*x5*x7*x8^2+34321*x3*x5*x7*x8^2+8241*x5^2*x7*x8^2+36145*x2*x6*x7*x8^2+41442*x4*x6*x7*x8^2+1664*x6^2*x7*x8^2+1217*x5*x6^2*x7*x8^2+5397*x7^2*x8^2+33353*x1*x7^2*x8^2+1644*x3*x7^2*x8^2+30700*x5*x7^2*x8^2+6416*x5^2*x7^2*x8^2+12021*x4*x6*x7^2*x8^2+28851*x6^2*x7^2*x8^2+29174*x7^3*x8^2+33776*x3*x7^3*x8^2+13946*x5*x7^3*x8^2+19666*x6^2*x7^3*x8^2+32534*x7^4*x8^2+16316*x5*x7^4*x8^2+21296*x7^5*x8^2+33790*x7^6*x8^2+6564*x2*x8^3+14174*x4*x8^3+31903*x3*x4*x8^3+28313*x2*x5*x8^3+20170*x4*x5*x8^3+24641*x6*x8^3+21502*x1*x6*x8^3+32211*x3*x6*x8^3+20279*x5*x6*x8^3+31293*x5^2*x6*x8^3+7293*x4*x6^2*x8^3+37145*x6^3*x8^3+37305*x2*x7*x8^3+28687*x4*x7*x8^3+27070*x4*x5*x7*x8^3+1816*x6*x7*x8^3+6500*x3*x6*x7*x8^3+28018*x5*x6*x7*x8^3+24894*x6^3*x7*x8^3+24402*x2*x7^2*x8^3+39559*x4*x7^2*x8^3+29000*x6*x7^2*x8^3+24097*x5*x6*x7^2*x8^3+18784*x4*x7^3*x8^3+20919*x6*x7^3*x8^3+41287*x6*x7^4*x8^3+36937*x8^4+30769*x1*x8^4+25125*x3*x8^4+14983*x4^2*x8^4+23961*x5*x8^4+33523*x3*x5*x8^4+13368*x5^2*x8^4+25186*x2*x6*x8^4+19697*x4*x6*x8^4+40218*x6^2*x8^4+8643*x5*x6^2*x8^4+35303*x7*x8^4+37962*x1*x7*x8^4+21457*x3*x7*x8^4+1644*x5*x7*x8^4+40208*x5^2*x7*x8^4+32212*x4*x6*x7*x8^4+24392*x6^2*x7*x8^4+38909*x7^2*x8^4+29520*x3*x7^2*x8^4+12249*x5*x7^2*x8^4+41170*x6^2*x7^2*x8^4+5081*x7^3*x8^4+2951*x5*x7^3*x8^4+15693*x7^4*x8^4+9124*x7^5*x8^4+11908*x2*x8^5+10716*x4*x8^5+27858*x4*x5*x8^5+32792*x6*x8^5+5779*x3*x6*x8^5+18534*x5*x6*x8^5+17800*x6^3*x8^5+26613*x2*x7*x8^5+20095*x4*x7*x8^5+984*x6*x7*x8^5+12345*x5*x6*x7*x8^5+36455*x4*x7^2*x8^5+14491*x6*x7^2*x8^5+34736*x6*x7^3*x8^5+11931*x8^6+35193*x1*x8^6+37503*x3*x8^6+12501*x5*x8^6+38300*x5^2*x8^6+14670*x4*x6*x8^6+10351*x6^2*x8^6+25403*x7*x8^6+14645*x3*x7*x8^6+36100*x5*x7*x8^6+27819*x6^2*x7*x8^6+8368*x7^2*x8^6+6234*x5*x7^2*x8^6+27926*x7^3*x8^6+14415*x7^4*x8^6+12644*x2*x8^7+30267*x4*x8^7+38453*x6*x8^7+34205*x5*x6*x8^7+27950*x4*x7*x8^7+1204*x6*x7*x8^7+5805*x6*x7^2*x8^7+33943*x8^8+11858*x3*x8^8+40471*x5*x8^8+19764*x6^2*x8^8+8611*x7*x8^8+29321*x5*x7*x8^8+14623*x7^2*x8^8+26001*x7^3*x8^8+36661*x4*x8^9+8048*x6*x8^9+24670*x6*x7*x8^9+17484*x8^10+18004*x5*x8^10+21253*x7*x8^10+28620*x7^2*x8^10+3560*x6*x8^11+25407*x8^12+7771*x7*x8^12+31231*x8^14",
    "18688+36867*x1+3108*x2^2+2479*x3+20911*x1*x3+30093*x3^2+16286*x2*x4+2590*x4^2+22568*x5+35945*x1*x5+6031*x3*x5+37203*x4^2*x5+14954*x5^2+36833*x3*x5^2+9515*x5^3+41102*x2*x6+27663*x4*x6+3336*x3*x4*x6+29507*x2*x5*x6+15669*x4*x5*x6+14919*x6^2+19992*x1*x6^2+15774*x3*x6^2+21811*x5*x6^2+6771*x5^2*x6^2+39790*x4*x6^3+39420*x6^4+6753*x7+21457*x1*x7+25139*x3*x7+22249*x3^2*x7+29396*x2*x4*x7+30173*x4^2*x7+10938*x5*x7+26177*x1*x5*x7+19517*x3*x5*x7+30324*x5^2*x7+18617*x5^3*x7+40946*x2*x6*x7+13694*x4*x6*x7+29193*x4*x5*x6*x7+38484*x6^2*x7+16613*x3*x6^2*x7+9824*x5*x6^2*x7+23692*x6^4*x7+24127*x7^2+4366*x1*x7^2+33489*x3*x7^2+28758*x4^2*x7^2+34441*x5*x7^2+16761*x3*x5*x7^2+39226*x5^2*x7^2+20424*x2*x6*x7^2+29073*x4*x6*x7^2+10853*x6^2*x7^2+15151*x5*x6^2*x7^2+34837*x7^3+22724*x1*x7^3+1067*x3*x7^3+27545*x5*x7^3+32763*x5^2*x7^3+8300*x4*x6*x7^3+30740*x6^2*x7^3+34602*x7^4+22212*x3*x7^4+8522*x5*x7^4+24611*x6^2*x7^4+33762*x7^5+4440*x5*x7^5+3515*x7^6+27429*x7^7+36227*x2*x8+29322*x2*x3*x8+1583*x4*x8+26843*x1*x4*x8+11408*x3*x4*x8+31357*x2*x5*x8+8118*x4*x5*x8+14615*x4*x5^2*x8+41116*x6*x8+38196*x1*x6*x8+29829*x3*x6*x8+36269*x4^2*x6*x8+2148*x5*x6*x8+32967*x3*x5*x6*x8+5680*x5^2*x6*x8+41042*x2*x6^2*x8+26150*x4*x6^2*x8+30128*x6^3*x8+24031*x5*x6^3*x8+18282*x2*x7*x8+39973*x4*x7*x8+34188*x3*x4*x7*x8+39997*x2*x5*x7*x8+19913*x4*x5*x7*x8+40396*x6*x7*x8+9158*x1*x6*x7*x8+41866*x3*x6*x7*x8+41850*x5*x6*x7*x8+28452*x5^2*x6*x7*x8+24974*x4*x6^2*x7*x8+21872*x6^3*x7*x8+33747*x2*x7^2*x8+25136*x4*x7^2*x8+23642*x4*x5*x7^2*x8+8771*x6*x7^2*x8+14984*x3*x6*x7^2*x8+40555*x5*x6*x7^2*x8+1092*x6^3*x7^2*x8+13523*x2*x7^3*x8+10544*x4*x7^3*x8+21165*x6*x7^3*x8+5884*x5*x6*x7^3*x8+24975*x4*x7^4*x8+19574*x6*x7^4*x8+17038*x6*x7^5*x8+23241*x8^2+866*x1*x8^2+37061*x3*x8^2+30053*x3^2*x8^2+40783*x2*x4*x8^2+11800*x4^2*x8^2+10272*x5*x8^2+24716*x1*x5*x8^2+35557*x3*x5*x8^2+22658*x5^2*x8^2+32541*x5^3*x8^2+2433*x2*x6*x8^2+7420*x4*x6*x8^2+24012*x4*x5*x6*x8^2+11377*x6^2*x8^2+7825*x3*x6^2*x8^2+17851*x5*x6^2*x8^2+10915*x6^4*x8^2+1302*x7*x8^2+13554*x1*x7*x8^2+8429*x3*x7*x8^2+10045*x4^2*x7*x8^2+20289*x5*x7*x8^2+14910*x3*x5*x7*x8^2+20515*x5^2*x7*x8^2+41827*x2*x6*x7*x8^2+14563*x4*x6*x7*x8^2+11788*x6^2*x7*x8^2+10121*x5*x6^2*x7*x8^2+5991*x7^2*x8^2+30080*x1*x7^2*x8^2+17475*x3*x7^2*x8^2+8196*x5*x7^2*x8^2+28472*x5^2*x7^2*x8^2+24366*x4*x6*x7^2*x8^2+23745*x6^2*x7^2*x8^2+41380*x7^3*x8^2+17187*x3*x7^3*x8^2+33413*x5*x7^3*x8^2+40402*x6^2*x7^3*x8^2+13685*x7^4*x8^2+17056*x5*x7^4*x8^2+33416*x7^5*x8^2+35122*x7^6*x8^2+19304*x2*x8^3+22957*x4*x8^3+4378*x3*x4*x8^3+14411*x2*x5*x8^3+6949*x4*x5*x8^3+30572*x6*x8^3+34773*x1*x6*x8^3+25381*x3*x6*x8^3+22485*x5*x6*x8^3+5162*x5^2*x6*x8^3+22188*x4*x6^2*x8^3+23662*x6^3*x8^3+18857*x2*x7*x8^3+16229*x4*x7*x8^3+18834*x4*x5*x7*x8^3+31969*x6*x7*x8^3+19753*x3*x6*x7*x8^3+39810*x5*x6*x7*x8^3+11327*x6^3*x7*x8^3+31062*x2*x7^2*x8^3+23053*x4*x7^2*x8^3+25083*x6*x7^2*x8^3+22141*x5*x6*x7^2*x8^3+38910*x4*x7^3*x8^3+9436*x6*x7^3*x8^3+26219*x6*x7^4*x8^3+4229*x8^4+5180*x1*x8^4+1418*x3*x8^4+13690*x4^2*x8^4+24279*x5*x8^4+29600*x3*x5*x8^4+3867*x5^2*x8^4+36075*x2*x6*x8^4+28093*x4*x6*x8^4+38214*x6^2*x8^4+15206*x5*x6^2*x8^4+11609*x7*x8^4+4237*x1*x7*x8^4+40312*x3*x7*x8^4+32417*x5*x7*x8^4+12616*x5^2*x7*x8^4+15427*x4*x6*x7*x8^4+23639*x6^2*x7*x8^4+34813*x7^2*x8^4+35574*x3*x7^2*x8^4+10498*x5*x7^2*x8^4+34329*x6^2*x7^2*x8^4+15335*x7^3*x8^4+30656*x5*x7^3*x8^4+30826*x7^4*x8^4+28082*x7^5*x8^4+30719*x2*x8^5+38574*x4*x8^5+10563*x4*x5*x8^5+40897*x6*x8^5+5938*x3*x6*x8^5+5012*x5*x6*x8^5+9426*x6^3*x8^5+39145*x2*x7*x8^5+35031*x4*x7*x8^5+16682*x6*x7*x8^5+23349*x5*x6*x7*x8^5+23200*x4*x7^2*x8^5+21533*x6*x7^2*x8^5+21050*x6*x7^3*x8^5+13376*x8^6+18512*x1*x8^6+38837*x3*x8^6+27373*x5*x8^6+16835*x5^2*x8^6+29042*x4*x6*x8^6+4743*x6^2*x8^6+13165*x7*x8^6+14899*x3*x7*x8^6+9486*x5*x7*x8^6+35253*x6^2*x7*x8^6+16719*x7^2*x8^6+683*x5*x7^2*x8^6+2347*x7^3*x8^6+40867*x7^4*x8^6+28647*x2*x8^7+13539*x4*x8^7+15905*x6*x8^7+5457*x5*x6*x8^7+869*x4*x7*x8^7+5221*x6*x7*x8^7+21147*x6*x7^2*x8^7+34449*x8^8+35797*x3*x8^8+20109*x5*x8^8+18981*x6^2*x8^8+36669*x7*x8^8+40182*x5*x7*x8^8+17280*x7^2*x8^8+25751*x7^3*x8^8+19172*x4*x8^9+36451*x6*x8^9+29630*x6*x7*x8^9+23225*x8^10+37573*x5*x8^10+33324*x7*x8^10+41967*x7^2*x8^10+24984*x6*x8^11+29908*x8^12+24284*x7*x8^12+259*x8^14",
    "9752*x2+37160*x1*x2+4332*x2*x3+41820*x4+24102*x1*x4+30658*x3*x4+8237*x4^3+3263*x2*x5+4629*x4*x5+13702*x3*x4*x5+33947*x2*x5^2+33358*x4*x5^2+24257*x6+38527*x1*x6+35173*x3*x6+34391*x3^2*x6+32655*x2*x4*x6+41427*x4^2*x6+5124*x5*x6+8374*x1*x5*x6+29328*x3*x5*x6+19618*x5^2*x6+6364*x5^3*x6+6185*x2*x6^2+11803*x4*x6^2+9375*x4*x5*x6^2+40627*x6^3+17820*x3*x6^3+15500*x5*x6^3+19804*x6^5+7489*x2*x7+11038*x2*x3*x7+26135*x4*x7+22477*x1*x4*x7+20775*x3*x4*x7+29396*x2*x5*x7+11101*x4*x5*x7+20128*x4*x5^2*x7+6103*x6*x7+41230*x1*x6*x7+34978*x3*x6*x7+10337*x4^2*x6*x7+42003*x5*x6*x7+2239*x3*x5*x6*x7+22737*x5^2*x6*x7+15369*x2*x6^2*x7+20480*x4*x6^2*x7+12990*x6^3*x7+31289*x5*x6^3*x7+8774*x2*x7^2+1478*x4*x7^2+22866*x3*x4*x7^2+25900*x2*x5*x7^2+17150*x4*x5*x7^2+28082*x6*x7^2+31746*x1*x6*x7^2+31404*x3*x6*x7^2+7903*x5*x6*x7^2+3977*x5^2*x6*x7^2+23115*x4*x6^2*x7^2+4649*x6^3*x7^2+38122*x2*x7^3+21242*x4*x7^3+28884*x4*x5*x7^3+5243*x6*x7^3+11821*x3*x6*x7^3+11962*x5*x6*x7^3+40709*x6^3*x7^3+5001*x2*x7^4+39432*x4*x7^4+17632*x6*x7^4+2578*x5*x6*x7^4+6660*x4*x7^5+41668*x6*x7^5+36315*x6*x7^6+28108*x8+21428*x1*x8+4352*x2^2*x8+27372*x3*x8+857*x1*x3*x8+5637*x3^2*x8+13410*x2*x4*x8+33081*x4^2*x8+41985*x5*x8+19280*x1*x5*x8+16840*x3*x5*x8+37564*x4^2*x5*x8+1630*x5^2*x8+38452*x3*x5^2*x8+36528*x5^3*x8+16492*x2*x6*x8+19095*x4*x6*x8+26997*x3*x4*x6*x8+8552*x2*x5*x6*x8+4256*x4*x5*x6*x8+1838*x6^2*x8+38190*x1*x6^2*x8+31077*x3*x6^2*x8+31121*x5*x6^2*x8+25564*x5^2*x6^2*x8+11702*x4*x6^3*x8+41166*x6^4*x8+37770*x7*x8+28917*x1*x7*x8+22869*x3*x7*x8+27837*x3^2*x7*x8+35453*x2*x4*x7*x8+38332*x4^2*x7*x8+26285*x5*x7*x8+27149*x1*x5*x7*x8+27584*x3*x5*x7*x8+11293*x5^2*x7*x8+30603*x5^3*x7*x8+15881*x2*x6*x7*x8+19479*x4*x6*x7*x8+15263*x4*x5*x6*x7*x8+17922*x6^2*x7*x8+13645*x3*x6^2*x7*x8+13569*x5*x6^2*x7*x8+22661*x6^4*x7*x8+27311*x7^2*x8+36597*x1*x7^2*x8+17575*x3*x7^2*x8+34815*x4^2*x7^2*x8+31986*x5*x7^2*x8+33782*x3*x5*x7^2*x8+31412*x5^2*x7^2*x8+36869*x2*x6*x7^2*x8+33453*x4*x6*x7^2*x8+25870*x6^2*x7^2*x8+25416*x5*x6^2*x7^2*x8+11526*x7^3*x8+10889*x1*x7^3*x8+3044*x3*x7^3*x8+6831*x5*x7^3*x8+3030*x5^2*x7^3*x8+8223*x4*x6*x7^3*x8+23728*x6^2*x7^3*x8+35368*x7^4*x8+8777*x3*x7^4*x8+10130*x5*x7^4*x8+23631*x6^2*x7^4*x8+23039*x7^5*x8+9638*x5*x7^5*x8+32187*x7^6*x8+20773*x7^7*x8+29348*x2*x8^2+10034*x2*x3*x8^2+12458*x4*x8^2+38045*x1*x4*x8^2+21369*x3*x4*x8^2+30238*x2*x5*x8^2+32503*x4*x5*x8^2+8461*x4*x5^2*x8^2+22823*x6*x8^2+32080*x1*x6*x8^2+32457*x3*x6*x8^2+36413*x4^2*x6*x8^2+5689*x5*x6*x8^2+38162*x3*x5*x6*x8^2+39822*x5^2*x6*x8^2+35481*x2*x6^2*x8^2+30867*x4*x6^2*x8^2+30377*x6^3*x8^2+15101*x5*x6^3*x8^2+3796*x2*x7*x8^2+2340*x4*x7*x8^2+41226*x3*x4*x7*x8^2+18122*x2*x5*x7*x8^2+10065*x4*x5*x7*x8^2+17092*x6*x7*x8^2+35433*x1*x6*x7*x8^2+41861*x3*x6*x7*x8^2+5774*x5*x6*x7*x8^2+6953*x5^2*x6*x7*x8^2+3119*x4*x6^2*x7*x8^2+8476*x6^3*x7*x8^2+4759*x2*x7^2*x8^2+25245*x4*x7^2*x8^2+6301*x4*x5*x7^2*x8^2+16996*x6*x7^2*x8^2+11902*x3*x6*x7^2*x8^2+107*x5*x6*x7^2*x8^2+12599*x6^3*x7^2*x8^2+35229*x2*x7^3*x8^2+27075*x4*x7^3*x8^2+598*x6*x7^3*x8^2+36307*x5*x6*x7^3*x8^2+31636*x4*x7^4*x8^2+4954*x6*x7^4*x8^2+7815*x6*x7^5*x8^2+2897*x8^3+29889*x1*x8^3+1343*x3*x8^3+35997*x3^2*x8^3+29949*x2*x4*x8^3+39878*x4^2*x8^3+14979*x5*x8^3+14149*x1*x5*x8^3+31208*x3*x5*x8^3+25183*x5^2*x8^3+34641*x5^3*x8^3+34325*x2*x6*x8^3+12414*x4*x6*x8^3+25486*x4*x5*x6*x8^3+23194*x6^2*x8^3+25484*x3*x6^2*x8^3+12298*x5*x6^2*x8^3+26799*x6^4*x8^3+30780*x7*x8^3+9210*x1*x7*x8^3+38055*x3*x7*x8^3+2720*x4^2*x7*x8^3+26462*x5*x7*x8^3+3217*x3*x5*x7*x8^3+41284*x5^2*x7*x8^3+17203*x2*x6*x7*x8^3+36165*x4*x6*x7*x8^3+15690*x6^2*x7*x8^3+40641*x5*x6^2*x7*x8^3+22607*x7^2*x8^3+33675*x1*x7^2*x8^3+24946*x3*x7^2*x8^3+18691*x5*x7^2*x8^3+21849*x5^2*x7^2*x8^3+25797*x4*x6*x7^2*x8^3+41466*x6^2*x7^2*x8^3+2323*x7^3*x8^3+22624*x3*x7^3*x8^3+26946*x5*x7^3*x8^3+31060*x6^2*x7^3*x8^3+38092*x7^4*x8^3+19553*x5*x7^4*x8^3+8312*x7^5*x8^3+32225*x7^6*x8^3+29879*x2*x8^4+4533*x4*x8^4+5248*x3*x4*x8^4+31584*x2*x5*x8^4+28407*x4*x5*x8^4+41658*x6*x8^4+119*x1*x6*x8^4+11226*x3*x6*x8^4+5456*x5*x6*x8^4+23205*x5^2*x6*x8^4+12055*x4*x6^2*x8^4+26823*x6^3*x8^4+21544*x2*x7*x8^4+38890*x4*x7*x8^4+28553*x4*x5*x7*x8^4+24389*x6*x7*x8^4+20692*x3*x6*x7*x8^4+37160*x5*x6*x7*x8^4+4756*x6^3*x7*x8^4+23954*x2*x7^2*x8^4+21048*x4*x7^2*x8^4+9369*x6*x7^2*x8^4+17686*x5*x6*x7^2*x8^4+41950*x4*x7^3*x8^4+37441*x6*x7^3*x8^4+16563*x6*x7^4*x8^4+19551*x8^5+35296*x1*x8^5+8564*x3*x8^5+31838*x4^2*x8^5+176*x5*x8^5+20738*x3*x5*x8^5+40195*x5^2*x8^5+33778*x2*x6*x8^5+34299*x4*x6*x8^5+37888*x6^2*x8^5+39003*x5*x6^2*x8^5+21021*x7*x8^5+24202*x1*x7*x8^5+18779*x3*x7*x8^5+37803*x5*x7*x8^5+41075*x5^2*x7*x8^5+20451*x4*x6*x7*x8^5+25101*x6^2*x7*x8^5+5502*x7^2*x8^5+38173*x3*x7^2*x8^5+19645*x5*x7^2*x8^5+34886*x6^2*x7^2*x8^5+24683*x7^3*x8^5+26228*x5*x7^3*x8^5+39873*x7^4*x8^5+2998*x7^5*x8^5+28406*x2*x8^6+1702*x4*x8^6+7579*x4*x5*x8^6+40584*x6*x8^6+39162*x3*x6*x8^6+34029*x5*x6*x8^6+5856*x6^3*x8^6+39179*x2*x7*x8^6+10666*x4*x7*x8^6+4052*x6*x7*x8^6+4693*x5*x6*x7*x8^6+41554*x4*x7^2*x8^6+12447*x6*x7^2*x8^6+33756*x6*x7^3*x8^6+17271*x8^7+3367*x1*x8^7+14554*x3*x8^7+5438*x5*x8^7+25703*x5^2*x8^7+9361*x4*x6*x8^7+4296*x6^2*x8^7+12349*x7*x8^7+14586*x3*x7*x8^7+25877*x5*x7*x8^7+31605*x6^2*x7*x8^7+24413*x7^2*x8^7+510*x5*x7^2*x8^7+15935*x7^3*x8^7+18175*x7^4*x8^7+31238*x2*x8^8+8605*x4*x8^8+11562*x6*x8^8+1952*x5*x6*x8^8+24716*x4*x7*x8^8+83*x6*x7*x8^8+18355*x6*x7^2*x8^8+1814*x8^9+2516*x3*x8^9+2291*x5*x8^9+25111*x6^2*x8^9+23860*x7*x8^9+21350*x5*x7*x8^9+6115*x7^2*x8^9+7893*x7^3*x8^9+34546*x4*x8^10+18105*x6*x8^10+36367*x6*x7*x8^10+3825*x8^11+12492*x5*x8^11+17097*x7*x8^11+815*x7^2*x8^11+37558*x6*x8^12+20359*x8^13+12233*x7*x8^13+26161*x8^15",
    "42012*x2+7774*x1*x2+2749*x1^2*x2+15527*x1*x2*x3+x4+36844*x1*x4+31161*x1^2*x4+40228*x1*x3*x4+16955*x1*x4^3+26129*x1*x2*x5+29573*x1*x4*x5+7638*x1*x3*x4*x5+35766*x1*x2*x5^2+34445*x1*x4*x5^2+42012*x6+23531*x1*x6+24310*x1^2*x6+20150*x1*x3*x6+35766*x1*x3^2*x6+19453*x1*x2*x4*x6+29305*x1*x4^2*x6+5085*x1*x5*x6+31268*x1^2*x5*x6+29733*x1*x3*x5*x6+2855*x1*x5^2*x6+29877*x1*x5^3*x6+18597*x1*x2*x6^2+35516*x1*x4*x6^2+20704*x1*x4*x5*x6^2+28431*x1*x6^3+2963*x1*x3*x6^3+14029*x1*x5*x6^3+25272*x1*x6^5+15403*x1*x2*x7+31268*x1*x2*x3*x7+32450*x1*x4*x7+11136*x1^2*x4*x7+37836*x1*x3*x4*x7+13564*x1*x2*x5*x7+1784*x1*x4*x5*x7+35803*x1*x4*x5^2*x7+41253*x1*x6*x7+27165*x1^2*x6*x7+1784*x1*x3*x6*x7+8889*x1*x4^2*x6*x7+35195*x1*x5*x6*x7+5963*x1*x3*x5*x6*x7+35519*x1*x5^2*x6*x7+27272*x1*x2*x6^2*x7+8926*x1*x4*x6^2*x7+7390*x1*x6^3*x7+23165*x1*x5*x6^3*x7+13028*x1*x2*x7^2+10619*x1*x4*x7^2+12173*x1*x3*x4*x7^2+358*x1*x2*x5*x7^2+2358*x1*x4*x5*x7^2+7774*x1*x6*x7^2+18741*x1^2*x6*x7^2+40087*x1*x3*x6*x7^2+3*x1*x5*x6*x7^2+25556*x1*x5^2*x6*x7^2+37371*x1*x4*x6^2*x7^2+27519*x1*x6^3*x7^2+28449*x1*x2*x7^3+1964*x1*x4*x7^3+4782*x1*x4*x5*x7^3+5230*x1*x6*x7^3+6531*x1*x3*x6*x7^3+7778*x1*x5*x6*x7^3+32626*x1*x6^3*x7^3+34017*x1*x2*x7^4+5996*x1*x4*x7^4+39156*x1*x6*x7^4+32091*x1*x5*x6*x7^4+41692*x1*x4*x7^5+12280*x1*x6*x7^5+30519*x1*x6*x7^6+x8+16283*x1*x8+17151*x1^2*x8+32482*x1*x2^2*x8+12577*x1*x3*x8+12885*x1^2*x3*x8+37087*x1*x3^2*x8+36766*x1*x2*x4*x8+28199*x1*x4^2*x8+10338*x1*x5*x8+18634*x1^2*x5*x8+33089*x1*x3*x5*x8+39087*x1*x4^2*x5*x8+15224*x1*x5^2*x8+12173*x1*x3*x5^2*x8+9103*x1*x5^3*x8+570*x1*x2*x6*x8+25843*x1*x4*x6*x8+12531*x1*x3*x4*x6*x8+30914*x1*x2*x5*x6*x8+1432*x1*x4*x5*x6*x8+34900*x1*x6^2*x8+33840*x1^2*x6^2*x8+38445*x1*x3*x6^2*x8+38232*x1*x5*x6^2*x8+37371*x1*x5^2*x6^2*x8+4782*x1*x4*x6^3*x8+21309*x1*x6^4*x8+25820*x1*x7*x8+18986*x1^2*x7*x8+35337*x1*x3*x7*x8+30556*x1*x3^2*x7*x8+7284*x1*x2*x4*x7*x8+9568*x1*x4^2*x7*x8+40097*x1*x5*x7*x8+13852*x1^2*x5*x7*x8+21741*x1*x3*x5*x7*x8+16065*x1*x5^2*x7*x8+4782*x1*x5^3*x7*x8+41371*x1*x2*x6*x7*x8+4216*x1*x4*x6*x7*x8+33939*x1*x4*x5*x6*x7*x8+29789*x1*x6^2*x7*x8+1210*x1*x3*x6^2*x7*x8+29902*x1*x5*x6^2*x7*x8+32091*x1*x6^4*x7*x8+1774*x1*x7^2*x8+35729*x1^2*x7^2*x8+21954*x1*x3*x7^2*x8+605*x1*x4^2*x7^2*x8+1804*x1*x5*x7^2*x8+24840*x1*x3*x5*x7^2*x8+28087*x1*x5^2*x7^2*x8+11704*x1*x2*x6*x7^2*x8+36507*x1*x4*x6*x7^2*x8+32439*x1*x6^2*x7^2*x8+7432*x1*x5*x6^2*x7^2*x8+30112*x1*x7^3*x8+15276*x1^2*x7^3*x8+12634*x1*x3*x7^3*x8+9169*x1*x5*x7^3*x8+38803*x1*x5^2*x7^3*x8+10214*x1*x4*x6*x7^3*x8+5292*x1*x6^2*x7^3*x8+11582*x1*x7^4*x8+15029*x1*x3*x7^4*x8+19708*x1*x5*x7^4*x8+4173*x1*x6^2*x7^4*x8+11067*x1*x7^5*x8+38692*x1*x5*x7^5*x8+11243*x1*x7^6*x8+1428*x1*x7^7*x8+24718*x1*x2*x8^2+22025*x1*x2*x3*x8^2+40816*x1*x4*x8^2+10210*x1^2*x4*x8^2+39087*x1*x3*x4*x8^2+33482*x1*x2*x5*x8^2+18170*x1*x4*x5*x8^2+605*x1*x4*x5^2*x8^2+10788*x1*x6*x8^2+34087*x1^2*x6*x8^2+18170*x1*x3*x6*x8^2+12420*x1*x4^2*x6*x8^2+15903*x1*x5*x6*x8^2+6457*x1*x3*x5*x6*x8^2+31371*x1*x5^2*x6*x8^2+17667*x1*x2*x6^2*x8^2+531*x1*x4*x6^2*x8^2+27340*x1*x6^3*x8^2+38803*x1*x5*x6^3*x8^2+23775*x1*x2*x7*x8^2+15832*x1*x4*x7*x8^2+11704*x1*x3*x4*x7*x8^2+16951*x1*x2*x5*x7*x8^2+27334*x1*x4*x5*x7*x8^2+8958*x1*x6*x7*x8^2+27445*x1^2*x6*x7*x8^2+2457*x1*x3*x6*x7*x8^2+630*x1*x5*x6*x7*x8^2+15321*x1*x5^2*x6*x7*x8^2+40272*x1*x4*x6^2*x7*x8^2+13823*x1*x6^3*x7*x8^2+15741*x1*x2*x7^2*x8^2+30550*x1*x4*x7^2*x8^2+23210*x1*x4*x5*x7^2*x8^2+41294*x1*x6*x7^2*x8^2+31099*x1*x3*x6*x7^2*x8^2+17802*x1*x5*x6*x7^2*x8^2+25408*x1*x6^3*x7^2*x8^2+29630*x1*x2*x7^3*x8^2+7432*x1*x4*x7^3*x8^2+28035*x1*x6*x7^3*x8^2+914*x1*x5*x6*x7^3*x8^2+38297*x1*x4*x7^4*x8^2+8803*x1*x6*x7^4*x8^2+9642*x1*x6*x7^5*x8^2+3616*x1*x8^3+11460*x1^2*x8^3+5230*x1*x3*x8^3+17704*x1*x3^2*x8^3+15276*x1*x2*x4*x8^3+41762*x1*x4^2*x8^3+11718*x1*x5*x8^3+38906*x1^2*x5*x8^3+25770*x1*x3*x5*x8^3+31410*x1*x5^2*x8^3+7247*x1*x5^3*x8^3+40692*x1*x2*x6*x8^3+25412*x1*x4*x6*x8^3+18103*x1*x4*x5*x6*x8^3+32374*x1*x6^2*x8^3+4679*x1*x3*x6^2*x8^3+14465*x1*x5*x6^2*x8^3+35087*x1*x6^4*x8^3+30211*x1*x7*x8^3+20634*x1^2*x7*x8^3+12955*x1*x3*x7*x8^3+4679*x1*x4^2*x7*x8^3+4031*x1*x5*x7*x8^3+25992*x1*x3*x5*x7*x8^3+6576*x1*x5^2*x7*x8^3+33881*x1*x2*x6*x7*x8^3+31926*x1*x4*x6*x7*x8^3+29426*x1*x6^2*x7*x8^3+35038*x1*x5*x6^2*x7*x8^3+2282*x1*x7^2*x8^3+37519*x1^2*x7^2*x8^3+35807*x1*x3*x7^2*x8^3+39562*x1*x5*x7^2*x8^3+34581*x1*x5^2*x7^2*x8^3+19260*x1*x4*x6*x7^2*x8^3+34026*x1*x6^2*x7^2*x8^3+9713*x1*x7^3*x8^3+40544*x1*x3*x7^3*x8^3+38462*x1*x5*x7^3*x8^3+6333*x1*x6^2*x7^3*x8^3+7952*x1*x7^4*x8^3+32276*x1*x5*x7^4*x8^3+18889*x1*x7^5*x8^3+5638*x1*x7^6*x8^3+13135*x1*x2*x8^4+6835*x1*x4*x8^4+39980*x1*x3*x4*x8^4+6284*x1*x2*x5*x8^4+29309*x1*x4*x5*x8^4+28267*x1*x6*x8^4+22918*x1^2*x6*x8^4+22169*x1*x3*x6*x8^4+41483*x1*x5*x6*x8^4+4815*x1*x5^2*x6*x8^4+13346*x1*x4*x6^2*x8^4+22412*x1*x6^3*x8^4+41585*x1*x2*x7*x8^4+9285*x1*x4*x7*x8^4+1741*x1*x4*x5*x7*x8^4+3057*x1*x6*x7*x8^4+35865*x1*x3*x6*x7*x8^4+32100*x1*x5*x6*x7*x8^4+32276*x1*x6^3*x7*x8^4+31050*x1*x2*x7^2*x8^4+13803*x1*x4*x7^2*x8^4+763*x1*x6*x7^2*x8^4+37111*x1*x5*x6*x7^2*x8^4+14572*x1*x4*x7^3*x8^4+19271*x1*x6*x7^3*x8^4+26079*x1*x6*x7^4*x8^4+4366*x1*x8^5+5782*x1^2*x8^5+7211*x1*x3*x8^5+9494*x1*x4^2*x8^5+32394*x1*x5*x8^5+30803*x1*x3*x5*x8^5+11420*x1*x5^2*x8^5+24235*x1*x2*x6*x8^5+34013*x1*x4*x6*x8^5+37547*x1*x6^2*x8^5+12284*x1*x5*x6^2*x8^5+9619*x1*x7*x8^5+41297*x1^2*x7*x8^5+13704*x1*x3*x7*x8^5+35402*x1*x5*x7*x8^5+33951*x1*x5^2*x7*x8^5+27210*x1*x4*x6*x7*x8^5+33679*x1*x6^2*x7*x8^5+23394*x1*x7^2*x8^5+36593*x1*x3*x7^2*x8^5+29716*x1*x5*x7^2*x8^5+3445*x1*x6^2*x7^2*x8^5+34707*x1*x7^3*x8^5+28544*x1*x5*x7^3*x8^5+19120*x1*x7^4*x8^5+790*x1*x7^5*x8^5+1749*x1*x2*x8^6+19203*x1*x4*x8^6+32984*x1*x4*x5*x8^6+31107*x1*x6*x8^6+19420*x1*x3*x6*x8^6+6074*x1*x5*x6*x8^6+32766*x1*x6^3*x8^6+34305*x1*x2*x7*x8^6+40733*x1*x4*x7*x8^6+39882*x1*x6*x7*x8^6+40787*x1*x5*x6*x7*x8^6+11630*x1*x4*x7^2*x8^6+39561*x1*x6*x7^2*x8^6+33284*x1*x6*x7^3*x8^6+27098*x1*x8^7+23095*x1^2*x8^7+29663*x1*x3*x8^7+29057*x1*x5*x8^7+19667*x1*x5^2*x8^7+41083*x1*x4*x6*x8^7+17844*x1*x6^2*x8^7+36107*x1*x7*x8^7+4317*x1*x3*x7*x8^7+25194*x1*x5*x7*x8^7+9395*x1*x6^2*x7*x8^7+40400*x1*x7^2*x8^7+22531*x1*x5*x7^2*x8^7+6864*x1*x7^3*x8^7+32013*x1*x7^4*x8^7+12136*x1*x2*x8^8+4247*x1*x4*x8^8+39370*x1*x6*x8^8+19420*x1*x5*x6*x8^8+25988*x1*x4*x7*x8^8+222*x1*x6*x7*x8^8+10593*x1*x6*x7^2*x8^8+446*x1*x8^9+41692*x1*x3*x8^9+39301*x1*x5*x8^9+18025*x1*x6^2*x8^9+10853*x1*x7*x8^9+27733*x1*x5*x7*x8^9+5457*x1*x7^2*x8^9+21206*x1*x7^3*x8^9+25486*x1*x4*x8^10+38050*x1*x6*x8^10+17671*x1*x6*x7*x8^10+12386*x1*x8^11+38408*x1*x5*x8^11+22453*x1*x7*x8^11+16383*x1*x7^2*x8^11+18704*x1*x6*x8^12+15206*x1*x8^13+13243*x1*x7*x8^13+13457*x1*x8^15",
    "41987+8535*x1+24416*x1^2+7774*x2^2+14243*x1*x2^2+32*x3+2338*x1*x3+28021*x1^2*x3+15527*x2^2*x3+10066*x1*x3^2+36844*x2*x4+27984*x1*x2*x4+40228*x2*x3*x4+13100*x1*x4^2+16955*x2*x4^3+41983*x5+27309*x1*x5+5889*x1^2*x5+26129*x2^2*x5+16848*x1*x3*x5+29573*x2*x4*x5+7638*x2*x3*x4*x5+15527*x1*x4^2*x5+34624*x1*x5^2+35766*x2^2*x5^2+10494*x1*x3*x5^2+34445*x2*x4*x5^2+33910*x1*x5^3+23531*x2*x6+36411*x1*x2*x6+20150*x2*x3*x6+35766*x2*x3^2*x6+8531*x1*x4*x6+19453*x2^2*x4*x6+10922*x1*x3*x4*x6+29305*x2*x4^2*x6+5085*x2*x5*x6+22058*x1*x2*x5*x6+29733*x2*x3*x5*x6+25128*x1*x4*x5*x6+2855*x2*x5^2*x6+29877*x2*x5^3*x6+38112*x1*x6^2+17276*x1^2*x6^2+18597*x2^2*x6^2+13992*x1*x3*x6^2+35516*x2*x4*x6^2+16883*x1*x5*x6^2+20704*x2*x4*x5*x6^2+21346*x1*x5^2*x6^2+28431*x2*x6^3+2963*x2*x3*x6^3+33268*x1*x4*x6^3+14029*x2*x5*x6^3+29984*x1*x6^4+25272*x2*x6^5+28*x7+12577*x1*x7+2893*x1^2*x7+15403*x2^2*x7+3784*x1*x3*x7+31268*x2^2*x3*x7+32375*x1*x3^2*x7+32450*x2*x4*x7+23807*x1*x2*x4*x7+37836*x2*x3*x4*x7+37622*x1*x4^2*x7+28056*x1*x5*x7+24486*x1^2*x5*x7+13564*x2^2*x5*x7+4354*x1*x3*x5*x7+1784*x2*x4*x5*x7+24272*x1*x5^2*x7+35803*x2*x4*x5^2*x7+33268*x1*x5^3*x7+41253*x2*x6*x7+38980*x1*x2*x6*x7+1784*x2*x3*x6*x7+29840*x1*x4*x6*x7+8889*x2*x4^2*x6*x7+35195*x2*x5*x6*x7+5963*x2*x3*x5*x6*x7+19741*x1*x4*x5*x6*x7+35519*x2*x5^2*x6*x7+17633*x1*x6^2*x7+27272*x2^2*x6^2*x7+19062*x1*x3*x6^2*x7+8926*x2*x4*x6^2*x7+17136*x1*x5*x6^2*x7+7390*x2*x6^3*x7+23165*x2*x5*x6^3*x7+38943*x1*x6^4*x7+1296*x1*x7^2+893*x1^2*x7^2+13028*x2^2*x7^2+22309*x1*x3*x7^2+10619*x2*x4*x7^2+12173*x2*x3*x4*x7^2+9531*x1*x4^2*x7^2+12957*x1*x5*x7^2+358*x2^2*x5*x7^2+34161*x1*x3*x5*x7^2+2358*x2*x4*x5*x7^2+5284*x1*x5^2*x7^2+7774*x2*x6*x7^2+14173*x1*x2*x6*x7^2+40087*x2*x3*x6*x7^2+25988*x1*x4*x6*x7^2+3*x2*x5*x6*x7^2+25556*x2*x5^2*x6*x7^2+41979*x1*x6^2*x7^2+37371*x2*x4*x6^2*x7^2+35408*x1*x5*x6^2*x7^2+27519*x2*x6^3*x7^2+22943*x1*x7^3+9638*x1^2*x7^3+28449*x2^2*x7^3+33054*x1*x3*x7^3+1964*x2*x4*x7^3+20597*x1*x5*x7^3+4782*x2*x4*x5*x7^3+15741*x1*x5^2*x7^3+5230*x2*x6*x7^3+6531*x2*x3*x6*x7^3+11350*x1*x4*x6*x7^3+7778*x2*x5*x6*x7^3+2140*x1*x6^2*x7^3+32626*x2*x6^3*x7^3+39229*x1*x7^4+34017*x2^2*x7^4+8745*x1*x3*x7^4+5996*x2*x4*x7^4+31268*x1*x5*x7^4+39156*x2*x6*x7^4+32091*x2*x5*x6*x7^4+32947*x1*x6^2*x7^4+3712*x1*x7^5+41692*x2*x4*x7^5+35017*x1*x5*x7^5+12280*x2*x6*x7^5+21667*x1*x7^6+30519*x2*x6*x7^6+21881*x1*x7^7+16283*x2*x8+34892*x1*x2*x8+32482*x2^3*x8+12577*x2*x3*x8+27305*x1*x2*x3*x8+37087*x2*x3^2*x8+28295*x1*x4*x8+36301*x1^2*x4*x8+36766*x2^2*x4*x8+27556*x1*x3*x4*x8+28199*x2*x4^2*x8+10338*x2*x5*x8+21918*x1*x2*x5*x8+33089*x2*x3*x5*x8+19132*x1*x4*x5*x8+39087*x2*x4^2*x5*x8+15224*x2*x5^2*x8+12173*x2*x3*x5^2*x8+19062*x1*x4*x5^2*x8+9103*x2*x5^3*x8+35591*x1*x6*x8+16885*x1^2*x6*x8+570*x2^2*x6*x8+19132*x1*x3*x6*x8+25843*x2*x4*x6*x8+12531*x2*x3*x4*x6*x8+34161*x1*x4^2*x6*x8+30519*x1*x5*x6*x8+30914*x2^2*x5*x6*x8+14494*x1*x3*x5*x6*x8+1432*x2*x4*x5*x6*x8+8926*x1*x5^2*x6*x8+34900*x2*x6^2*x8+2358*x1*x2*x6^2*x8+38445*x2*x3*x6^2*x8+24346*x1*x4*x6^2*x8+38232*x2*x5*x6^2*x8+37371*x2*x5^2*x6^2*x8+40729*x1*x6^3*x8+4782*x2*x4*x6^3*x8+31482*x1*x5*x6^3*x8+21309*x2*x6^4*x8+25820*x2*x7*x8+20377*x1*x2*x7*x8+35337*x2*x3*x7*x8+30556*x2*x3^2*x7*x8+16562*x1*x4*x7*x8+7284*x2^2*x4*x7*x8+32877*x1*x3*x4*x7*x8+9568*x2*x4^2*x7*x8+40097*x2*x5*x7*x8+23099*x1*x2*x5*x7*x8+21741*x2*x3*x5*x7*x8+35556*x1*x4*x5*x7*x8+16065*x2*x5^2*x7*x8+4782*x2*x5^3*x7*x8+23858*x1*x6*x7*x8+4000*x1^2*x6*x7*x8+41371*x2^2*x6*x7*x8+26988*x1*x3*x6*x7*x8+4216*x2*x4*x6*x7*x8+31988*x1*x5*x6*x7*x8+33939*x2*x4*x5*x6*x7*x8+34050*x1*x5^2*x6*x7*x8+29789*x2*x6^2*x7*x8+1210*x2*x3*x6^2*x7*x8+15667*x1*x4*x6^2*x7*x8+29902*x2*x5*x6^2*x7*x8+34478*x1*x6^3*x7*x8+32091*x2*x6^4*x7*x8+1774*x2*x7^2*x8+10457*x1*x2*x7^2*x8+21954*x2*x3*x7^2*x8+21883*x1*x4*x7^2*x8+605*x2*x4^2*x7^2*x8+1804*x2*x5*x7^2*x8+24840*x2*x3*x5*x7^2*x8+39297*x1*x4*x5*x7^2*x8+28087*x2*x5^2*x7^2*x8+22704*x1*x6*x7^2*x8+11704*x2^2*x6*x7^2*x8+2531*x1*x3*x6*x7^2*x8+36507*x2*x4*x6*x7^2*x8+3667*x1*x5*x6*x7^2*x8+32439*x2*x6^2*x7^2*x8+7432*x2*x5*x6^2*x7^2*x8+14066*x1*x6^3*x7^2*x8+30112*x2*x7^3*x8+33622*x1*x2*x7^3*x8+12634*x2*x3*x7^3*x8+3424*x1*x4*x7^3*x8+9169*x2*x5*x7^3*x8+38803*x2*x5^2*x7^3*x8+23268*x1*x6*x7^3*x8+10214*x2*x4*x6*x7^3*x8+2753*x1*x5*x6*x7^3*x8+5292*x2*x6^2*x7^3*x8+11582*x2*x7^4*x8+15029*x2*x3*x7^4*x8+40515*x1*x4*x7^4*x8+19708*x2*x5*x7^4*x8+3074*x1*x6*x7^4*x8+4173*x2*x6^2*x7^4*x8+11067*x2*x7^5*x8+38692*x2*x5*x7^5*x8+6531*x1*x6*x7^5*x8+11243*x2*x7^6*x8+1428*x2*x7^7*x8+38397*x1*x8^2+18167*x1^2*x8^2+24718*x2^2*x8^2+36337*x1*x3*x8^2+22025*x2^2*x3*x8^2+27914*x1*x3^2*x8^2+40816*x2*x4*x8^2+39124*x1*x2*x4*x8^2+39087*x2*x3*x4*x8^2+12494*x1*x4^2*x8^2+3197*x1*x5*x8^2+32198*x1^2*x5*x8^2+33482*x2^2*x5*x8^2+5284*x1*x3*x5*x8^2+18170*x2*x4*x5*x8^2+16028*x1*x5^2*x8^2+605*x2*x4*x5^2*x8^2+27556*x1*x5^3*x8^2+10788*x2*x6*x8^2+7173*x1*x2*x6*x8^2+18170*x2*x3*x6*x8^2+18099*x1*x4*x6*x8^2+12420*x2*x4^2*x6*x8^2+15903*x2*x5*x6*x8^2+6457*x2*x3*x5*x6*x8^2+20914*x1*x4*x5*x6*x8^2+31371*x2*x5^2*x6*x8^2+39408*x1*x6^2*x8^2+17667*x2^2*x6^2*x8^2+34087*x1*x3*x6^2*x8^2+531*x2*x4*x6^2*x8^2+26124*x1*x5*x6^2*x8^2+27340*x2*x6^3*x8^2+38803*x2*x5*x6^3*x8^2+16099*x1*x6^4*x8^2+7436*x1*x7*x8^2+9136*x1^2*x7*x8^2+23775*x2^2*x7*x8^2+37945*x1*x3*x7*x8^2+15832*x2*x4*x7*x8^2+11704*x2*x3*x4*x7*x8^2+34087*x1*x4^2*x7*x8^2+8818*x1*x5*x7*x8^2+16951*x2^2*x5*x7*x8^2+7778*x1*x3*x5*x7*x8^2+27334*x2*x4*x5*x7*x8^2+39260*x1*x5^2*x7*x8^2+8958*x2*x6*x7*x8^2+22087*x1*x2*x6*x7*x8^2+2457*x2*x3*x6*x7*x8^2+16840*x1*x4*x6*x7*x8^2+630*x2*x5*x6*x7*x8^2+15321*x2*x5^2*x6*x7*x8^2+457*x1*x6^2*x7*x8^2+40272*x2*x4*x6^2*x7*x8^2+8074*x1*x5*x6^2*x7*x8^2+13823*x2*x6^3*x7*x8^2+17929*x1*x7^2*x8^2+14383*x1^2*x7^2*x8^2+15741*x2^2*x7^2*x8^2+30124*x1*x3*x7^2*x8^2+30550*x2*x4*x7^2*x8^2+2778*x1*x5*x7^2*x8^2+23210*x2*x4*x5*x7^2*x8^2+37519*x1*x5^2*x7^2*x8^2+41294*x2*x6*x7^2*x8^2+31099*x2*x3*x6*x7^2*x8^2+15963*x1*x4*x6*x7^2*x8^2+17802*x2*x5*x6*x7^2*x8^2+1012*x1*x6^2*x7^2*x8^2+25408*x2*x6^3*x7^2*x8^2+18488*x1*x7^3*x8^2+29630*x2^2*x7^3*x8^2+30272*x1*x3*x7^3*x8^2+7432*x2*x4*x7^3*x8^2+6790*x1*x5*x7^3*x8^2+28035*x2*x6*x7^3*x8^2+914*x2*x5*x6*x7^3*x8^2+7704*x1*x6^2*x7^3*x8^2+26989*x1*x7^4*x8^2+38297*x2*x4*x7^4*x8^2+12383*x1*x5*x7^4*x8^2+8803*x2*x6*x7^4*x8^2+18309*x1*x7^5*x8^2+9642*x2*x6*x7^5*x8^2+34482*x1*x7^6*x8^2+3616*x2*x8^3+10711*x1*x2*x8^3+5230*x2*x3*x8^3+17704*x2*x3^2*x8^3+35624*x1*x4*x8^3+15276*x2^2*x4*x8^3+40227*x1*x3*x4*x8^3+41762*x2*x4^2*x8^3+11718*x2*x5*x8^3+38869*x1*x2*x5*x8^3+25770*x2*x3*x5*x8^3+16560*x1*x4*x5*x8^3+31410*x2*x5^2*x8^3+7247*x2*x5^3*x8^3+40844*x1*x6*x8^3+3461*x1^2*x6*x8^3+40692*x2^2*x6*x8^3+22272*x1*x3*x6*x8^3+25412*x2*x4*x6*x8^3+34906*x1*x5*x6*x8^3+18103*x2*x4*x5*x6*x8^3+5321*x1*x5^2*x6*x8^3+32374*x2*x6^2*x8^3+4679*x2*x3*x6^2*x8^3+13638*x1*x4*x6^2*x8^3+14465*x2*x5*x6^2*x8^3+21741*x1*x6^3*x8^3+35087*x2*x6^4*x8^3+30211*x2*x7*x8^3+10568*x1*x2*x7*x8^3+12955*x2*x3*x7*x8^3+27054*x1*x4*x7*x8^3+4679*x2*x4^2*x7*x8^3+4031*x2*x5*x7*x8^3+25992*x2*x3*x5*x7*x8^3+1897*x1*x4*x5*x7*x8^3+6576*x2*x5^2*x7*x8^3+4173*x1*x6*x7*x8^3+33881*x2^2*x6*x7*x8^3+35165*x1*x3*x6*x7*x8^3+31926*x2*x4*x6*x7*x8^3+30642*x1*x5*x6*x7*x8^3+29426*x2*x6^2*x7*x8^3+35038*x2*x5*x6^2*x7*x8^3+30515*x1*x6^3*x7*x8^3+2282*x2*x7^2*x8^3+25350*x1*x2*x7^2*x8^3+35807*x2*x3*x7^2*x8^3+16819*x1*x4*x7^2*x8^3+39562*x2*x5*x7^2*x8^3+34581*x2*x5^2*x7^2*x8^3+25321*x1*x6*x7^2*x8^3+19260*x2*x4*x6*x7^2*x8^3+41643*x1*x5*x6*x7^2*x8^3+34026*x2*x6^2*x7^2*x8^3+9713*x2*x7^3*x8^3+40544*x2*x3*x7^3*x8^3+22626*x1*x4*x7^3*x8^3+38462*x2*x5*x7^3*x8^3+20972*x1*x6*x7^3*x8^3+6333*x2*x6^2*x7^3*x8^3+7952*x2*x7^4*x8^3+32276*x2*x5*x7^4*x8^3+16819*x1*x6*x7^4*x8^3+18889*x2*x7^5*x8^3+5638*x2*x7^6*x8^3+37647*x1*x8^4+21025*x1^2*x8^4+13135*x2^2*x8^4+22416*x1*x3*x8^4+6835*x2*x4*x8^4+39980*x2*x3*x4*x8^4+32733*x1*x4^2*x8^4+9173*x1*x5*x8^4+6284*x2^2*x5*x8^4+6605*x1*x3*x5*x8^4+29309*x2*x4*x5*x8^4+14494*x1*x5^2*x8^4+28267*x2*x6*x8^4+20992*x1*x2*x6*x8^4+22169*x2*x3*x6*x8^4+12675*x1*x4*x6*x8^4+41483*x2*x5*x6*x8^4+4815*x2*x5^2*x6*x8^4+6678*x1*x6^2*x8^4+13346*x2*x4*x6^2*x8^4+29445*x1*x5*x6^2*x8^4+22412*x2*x6^3*x8^4+5296*x1*x7*x8^4+39873*x1^2*x7*x8^4+41585*x2^2*x7*x8^4+22597*x1*x3*x7*x8^4+9285*x2*x4*x7*x8^4+18424*x1*x5*x7*x8^4+1741*x2*x4*x5*x7*x8^4+37976*x1*x5^2*x7*x8^4+3057*x2*x6*x7*x8^4+35865*x2*x3*x6*x7*x8^4+8988*x1*x4*x6*x7*x8^4+32100*x2*x5*x6*x7*x8^4+23939*x1*x6^2*x7*x8^4+32276*x2*x6^3*x7*x8^4+23633*x1*x7^2*x8^4+31050*x2^2*x7^2*x8^4+30087*x1*x3*x7^2*x8^4+13803*x2*x4*x7^2*x8^4+14766*x1*x5*x7^2*x8^4+763*x2*x6*x7^2*x8^4+37111*x2*x5*x6*x7^2*x8^4+37383*x1*x6^2*x7^2*x8^4+9309*x1*x7^3*x8^4+14572*x2*x4*x7^3*x8^4+33025*x1*x5*x7^3*x8^4+19271*x2*x6*x7^3*x8^4+16070*x1*x7^4*x8^4+26079*x2*x6*x7^4*x8^4+16560*x1*x7^5*x8^4+4366*x2*x8^5+19239*x1*x2*x8^5+7211*x2*x3*x8^5+35196*x1*x4*x8^5+9494*x2*x4^2*x8^5+32394*x2*x5*x8^5+30803*x2*x3*x5*x8^5+17025*x1*x4*x5*x8^5+11420*x2*x5^2*x8^5+11352*x1*x6*x8^5+24235*x2^2*x6*x8^5+40655*x1*x3*x6*x8^5+34013*x2*x4*x6*x8^5+17593*x1*x5*x6*x8^5+37547*x2*x6^2*x8^5+12284*x2*x5*x6^2*x8^5+6605*x1*x6^3*x8^5+9619*x2*x7*x8^5+3173*x1*x2*x7*x8^5+13704*x2*x3*x7*x8^5+41902*x1*x4*x7*x8^5+35402*x2*x5*x7*x8^5+33951*x2*x5^2*x7*x8^5+35544*x1*x6*x7*x8^5+27210*x2*x4*x6*x7*x8^5+40951*x1*x5*x6*x7*x8^5+33679*x2*x6^2*x7*x8^5+23394*x2*x7^2*x8^5+36593*x2*x3*x7^2*x8^5+790*x1*x4*x7^2*x8^5+29716*x2*x5*x7^2*x8^5+27074*x1*x6*x7^2*x8^5+3445*x2*x6^2*x7^2*x8^5+34707*x2*x7^3*x8^5+28544*x2*x5*x7^3*x8^5+36470*x1*x6*x7^3*x8^5+19120*x2*x7^4*x8^5+790*x2*x7^5*x8^5+14915*x1*x8^6+5461*x1^2*x8^6+1749*x2^2*x8^6+39157*x1*x3*x8^6+19203*x2*x4*x8^6+570*x1*x5*x8^6+32984*x2*x4*x5*x8^6+14136*x1*x5^2*x8^6+31107*x2*x6*x8^6+19420*x2*x3*x6*x8^6+21490*x1*x4*x6*x8^6+6074*x2*x5*x6*x8^6+16601*x1*x6^2*x8^6+32766*x2*x6^3*x8^6+5460*x1*x7*x8^6+34305*x2^2*x7*x8^6+1144*x1*x3*x7*x8^6+40733*x2*x4*x7*x8^6+31881*x1*x5*x7*x8^6+39882*x2*x6*x7*x8^6+40787*x2*x5*x6*x7*x8^6+3350*x1*x6^2*x7*x8^6+8001*x1*x7^2*x8^6+11630*x2*x4*x7^2*x8^6+30478*x1*x5*x7^2*x8^6+39561*x2*x6*x7^2*x8^6+34795*x1*x7^3*x8^6+33284*x2*x6*x7^3*x8^6+37519*x1*x7^4*x8^6+27098*x2*x8^7+24416*x1*x2*x8^7+29663*x2*x3*x8^7+10959*x1*x4*x8^7+29057*x2*x5*x8^7+19667*x2*x5^2*x8^7+15029*x1*x6*x8^7+41083*x2*x4*x6*x8^7+10457*x1*x5*x6*x8^7+17844*x2*x6^2*x8^7+36107*x2*x7*x8^7+4317*x2*x3*x7*x8^7+13955*x1*x4*x7*x8^7+25194*x2*x5*x7*x8^7+18198*x1*x6*x7*x8^7+9395*x2*x6^2*x7*x8^7+40400*x2*x7^2*x8^7+22531*x2*x5*x7^2*x8^7+5432*x1*x6*x7^2*x8^7+6864*x2*x7^3*x8^7+32013*x2*x7^4*x8^7+41567*x1*x8^8+12136*x2^2*x8^8+28877*x1*x3*x8^8+4247*x2*x4*x8^8+29519*x1*x5*x8^8+39370*x2*x6*x8^8+19420*x2*x5*x6*x8^8+2321*x1*x6^2*x8^8+18774*x1*x7*x8^8+25988*x2*x4*x7*x8^8+7926*x1*x5*x7*x8^8+222*x2*x6*x7*x8^8+25704*x1*x7^2*x8^8+10593*x2*x6*x7^2*x8^8+36692*x1*x7^3*x8^8+446*x2*x8^9+41692*x2*x3*x8^9+29984*x1*x4*x8^9+39301*x2*x5*x8^9+19169*x1*x6*x8^9+18025*x2*x6^2*x8^9+10853*x2*x7*x8^9+27733*x2*x5*x7*x8^9+2140*x1*x6*x7*x8^9+5457*x2*x7^2*x8^9+21206*x2*x7^3*x8^9+29627*x1*x8^10+25486*x2*x4*x8^10+32161*x1*x5*x8^10+38050*x2*x6*x8^10+4354*x1*x7*x8^10+17671*x2*x6*x7*x8^10+27486*x1*x7^2*x8^10+12386*x2*x8^11+38408*x2*x5*x8^11+36766*x1*x6*x8^11+22453*x2*x7*x8^11+16383*x2*x7^2*x8^11+26807*x1*x8^12+18704*x2*x6*x8^12+15313*x1*x7*x8^12+15206*x2*x8^13+13243*x2*x7*x8^13+28556*x1*x8^14+13457*x2*x8^15",
    "9079*x2+6229*x1*x2+11494*x2^3+10112*x2*x3+37017*x1*x2*x3+25593*x2*x3^2+41568*x4+28633*x1*x4+16313*x1^2*x4+38836*x2^2*x4+36844*x3*x4+32589*x1*x3*x4+40228*x3^2*x4+13100*x2*x4^2+16955*x3*x4^3+27309*x2*x5+19453*x1*x2*x5+964*x2*x3*x5+2820*x1*x4*x5+29573*x3*x4*x5+7638*x3^2*x4*x5+15527*x2*x4^2*x5+34624*x2*x5^2+4247*x2*x3*x5^2+22202*x1*x4*x5^2+34445*x3*x4*x5^2+33910*x2*x5^3+384*x6+2056*x1*x6+27770*x1^2*x6+12101*x2^2*x6+23531*x3*x6+27130*x1*x3*x6+20150*x3^2*x6+35766*x3^3*x6+8531*x2*x4*x6+30375*x2*x3*x4*x6+17169*x1*x4^2*x6+29305*x3*x4^2*x6+6193*x1*x5*x6+32803*x2^2*x5*x6+5085*x3*x5*x6+13527*x1*x3*x5*x6+29733*x3^2*x5*x6+25128*x2*x4*x5*x6+37836*x1*x5^2*x6+2855*x3*x5^2*x6+29877*x3*x5^3*x6+38112*x2*x6^2+14313*x1*x2*x6^2+32589*x2*x3*x6^2+32696*x1*x4*x6^2+35516*x3*x4*x6^2+16883*x2*x5*x6^2+20704*x3*x4*x5*x6^2+21346*x2*x5^2*x6^2+24308*x1*x6^3+28431*x3*x6^3+2963*x3^2*x6^3+33268*x2*x4*x6^3+26593*x1*x5*x6^3+14029*x3*x5*x6^3+29984*x2*x6^4+25272*x3*x6^5+12577*x2*x7+35590*x1*x2*x7+19187*x2*x3*x7+21630*x2*x3^2*x7+34178*x1*x4*x7+12671*x2^2*x4*x7+32450*x3*x4*x7+15276*x1*x3*x4*x7+37836*x3^2*x4*x7+37622*x2*x4^2*x7+28056*x2*x5*x7+8494*x1*x2*x5*x7+17918*x2*x3*x5*x7+41762*x1*x4*x5*x7+1784*x3*x4*x5*x7+24272*x2*x5^2*x7+35803*x3*x4*x5^2*x7+33268*x2*x5^3*x7+15169*x1*x6*x7+27770*x1^2*x6*x7+11815*x2^2*x6*x7+41253*x3*x6*x7+29770*x1*x3*x6*x7+1784*x3^2*x6*x7+29840*x2*x4*x6*x7+8889*x3*x4^2*x6*x7+34587*x1*x5*x6*x7+35195*x3*x5*x6*x7+5963*x3^2*x5*x6*x7+19741*x2*x4*x5*x6*x7+10852*x1*x5^2*x6*x7+35519*x3*x5^2*x6*x7+17633*x2*x6^2*x7+4321*x2*x3*x6^2*x7+25951*x1*x4*x6^2*x7+8926*x3*x4*x6^2*x7+17136*x2*x5*x6^2*x7+27593*x1*x6^3*x7+7390*x3*x6^3*x7+23165*x3*x5*x6^3*x7+38943*x2*x6^4*x7+1296*x2*x7^2+36124*x1*x2*x7^2+35337*x2*x3*x7^2+36337*x1*x4*x7^2+10619*x3*x4*x7^2+12173*x3^2*x4*x7^2+9531*x2*x4^2*x7^2+12957*x2*x5*x7^2+34519*x2*x3*x5*x7^2+41050*x1*x4*x5*x7^2+2358*x3*x4*x5*x7^2+5284*x2*x5^2*x7^2+33999*x1*x6*x7^2+37445*x2^2*x6*x7^2+7774*x3*x6*x7^2+5963*x1*x3*x6*x7^2+40087*x3^2*x6*x7^2+25988*x2*x4*x6*x7^2+34198*x1*x5*x6*x7^2+3*x3*x5*x6*x7^2+25556*x3*x5^2*x6*x7^2+41979*x2*x6^2*x7^2+37371*x3*x4*x6^2*x7^2+35408*x2*x5*x6^2*x7^2+29091*x1*x6^3*x7^2+27519*x3*x6^3*x7^2+22943*x2*x7^3+39515*x1*x2*x7^3+19490*x2*x3*x7^3+14350*x1*x4*x7^3+1964*x3*x4*x7^3+20597*x2*x5*x7^3+4782*x3*x4*x5*x7^3+15741*x2*x5^2*x7^3+6569*x1*x6*x7^3+5230*x3*x6*x7^3+6531*x3^2*x6*x7^3+11350*x2*x4*x6*x7^3+38050*x1*x5*x6*x7^3+7778*x3*x5*x6*x7^3+2140*x2*x6^2*x7^3+32626*x3*x6^3*x7^3+39229*x2*x7^4+749*x2*x3*x7^4+20453*x1*x4*x7^4+5996*x3*x4*x7^4+31268*x2*x5*x7^4+9387*x1*x6*x7^4+39156*x3*x6*x7^4+32091*x3*x5*x6*x7^4+32947*x2*x6^2*x7^4+3712*x2*x7^5+41692*x3*x4*x7^5+35017*x2*x5*x7^5+33375*x1*x6*x7^5+12280*x3*x6*x7^5+21667*x2*x7^6+30519*x3*x6*x7^6+21881*x2*x7^7+41686*x8+3616*x1*x8+36232*x1^2*x8+17741*x2^2*x8+16283*x3*x8+23273*x1*x3*x8+4889*x2^2*x3*x8+12577*x3^2*x8+36836*x1*x3^2*x8+37087*x3^3*x8+28295*x2*x4*x8+32124*x1*x2*x4*x8+22309*x2*x3*x4*x8+32482*x1*x4^2*x8+28199*x3*x4^2*x8+23901*x1*x5*x8+7638*x1^2*x5*x8+3284*x2^2*x5*x8+10338*x3*x5*x8+12708*x1*x3*x5*x8+33089*x3^2*x5*x8+19132*x2*x4*x5*x8+39087*x3*x4^2*x5*x8+32946*x1*x5^2*x8+15224*x3*x5^2*x8+12173*x3^2*x5^2*x8+19062*x2*x4*x5^2*x8+41692*x1*x5^3*x8+9103*x3*x5^3*x8+35591*x2*x6*x8+18420*x1*x2*x6*x8+19702*x2*x3*x6*x8+5175*x1*x4*x6*x8+25843*x3*x4*x6*x8+12531*x3^2*x4*x6*x8+34161*x2*x4^2*x6*x8+30519*x2*x5*x6*x8+3395*x2*x3*x5*x6*x8+28272*x1*x4*x5*x6*x8+1432*x3*x4*x5*x6*x8+8926*x2*x5^2*x6*x8+15295*x1*x6^2*x8+10531*x2^2*x6^2*x8+34900*x3*x6^2*x8+36161*x1*x3*x6^2*x8+38445*x3^2*x6^2*x8+24346*x2*x4*x6^2*x8+32556*x1*x5*x6^2*x8+38232*x3*x5*x6^2*x8+37371*x3*x5^2*x6^2*x8+40729*x2*x6^3*x8+4782*x3*x4*x6^3*x8+31482*x2*x5*x6^3*x8+30519*x1*x6^4*x8+21309*x3*x6^4*x8+38943*x1*x7*x8+33519*x1^2*x7*x8+1391*x2^2*x7*x8+25820*x3*x7*x8+38939*x1*x3*x7*x8+35337*x3^2*x7*x8+30556*x3^3*x7*x8+16562*x2*x4*x7*x8+40161*x2*x3*x4*x7*x8+2321*x1*x4^2*x7*x8+9568*x3*x4^2*x7*x8+21238*x1*x5*x7*x8+9247*x2^2*x5*x7*x8+40097*x3*x5*x7*x8+6679*x1*x3*x5*x7*x8+21741*x3^2*x5*x7*x8+35556*x2*x4*x5*x7*x8+25988*x1*x5^2*x7*x8+16065*x3*x5^2*x7*x8+4782*x3*x5^3*x7*x8+23858*x2*x6*x7*x8+3395*x1*x2*x6*x7*x8+26346*x2*x3*x6*x7*x8+40803*x1*x4*x6*x7*x8+4216*x3*x4*x6*x7*x8+31988*x2*x5*x6*x7*x8+33939*x3*x4*x5*x6*x7*x8+34050*x2*x5^2*x6*x7*x8+15923*x1*x6^2*x7*x8+29789*x3*x6^2*x7*x8+1210*x3^2*x6^2*x7*x8+15667*x2*x4*x6^2*x7*x8+11741*x1*x5*x6^2*x7*x8+29902*x3*x5*x6^2*x7*x8+34478*x2*x6^3*x7*x8+32091*x3*x6^4*x7*x8+30971*x1*x7^2*x8+12173*x1^2*x7^2*x8+16741*x2^2*x7^2*x8+1774*x3*x7^2*x8+24272*x1*x3*x7^2*x8+21954*x3^2*x7^2*x8+21883*x2*x4*x7^2*x8+605*x3*x4^2*x7^2*x8+35769*x1*x5*x7^2*x8+1804*x3*x5*x7^2*x8+24840*x3^2*x5*x7^2*x8+39297*x2*x4*x5*x7^2*x8+38692*x1*x5^2*x7^2*x8+28087*x3*x5^2*x7^2*x8+22704*x2*x6*x7^2*x8+14235*x2*x3*x6*x7^2*x8+16988*x1*x4*x6*x7^2*x8+36507*x3*x4*x6*x7^2*x8+3667*x2*x5*x6*x7^2*x8+17593*x1*x6^2*x7^2*x8+32439*x3*x6^2*x7^2*x8+7432*x3*x5*x6^2*x7^2*x8+14066*x2*x6^3*x7^2*x8+33215*x1*x7^3*x8+18346*x2^2*x7^3*x8+30112*x3*x7^3*x8+16560*x1*x3*x7^3*x8+12634*x3^2*x7^3*x8+3424*x2*x4*x7^3*x8+20486*x1*x5*x7^3*x8+9169*x3*x5*x7^3*x8+38803*x3*x5^2*x7^3*x8+23268*x2*x6*x7^3*x8+10214*x3*x4*x6*x7^3*x8+2753*x2*x5*x6*x7^3*x8+5963*x1*x6^2*x7^3*x8+5292*x3*x6^2*x7^3*x8+27234*x1*x7^4*x8+11582*x3*x7^4*x8+15029*x3^2*x7^4*x8+40515*x2*x4*x7^4*x8+7140*x1*x5*x7^4*x8+19708*x3*x5*x7^4*x8+3074*x2*x6*x7^4*x8+4173*x3*x6^2*x7^4*x8+9103*x1*x7^5*x8+11067*x3*x7^5*x8+38692*x3*x5*x7^5*x8+6531*x2*x6*x7^5*x8+18704*x1*x7^6*x8+11243*x3*x7^6*x8+1428*x3*x7^7*x8+38397*x2*x8^2+6530*x1*x2*x8^2+19042*x2*x3*x8^2+7926*x2*x3^2*x8^2+5943*x1*x4*x8^2+28914*x2^2*x4*x8^2+40816*x3*x4*x8^2+30914*x1*x3*x4*x8^2+39087*x3^2*x4*x8^2+12494*x2*x4^2*x8^2+3197*x2*x5*x8^2+41087*x1*x2*x5*x8^2+38766*x2*x3*x5*x8^2+33198*x1*x4*x5*x8^2+18170*x3*x4*x5*x8^2+16028*x2*x5^2*x8^2+605*x3*x4*x5^2*x8^2+27556*x2*x5^3*x8^2+16084*x1*x6*x8^2+27272*x1^2*x6*x8^2+15099*x2^2*x6*x8^2+10788*x3*x6*x8^2+20988*x1*x3*x6*x8^2+18170*x3^2*x6*x8^2+18099*x2*x4*x6*x8^2+12420*x3*x4^2*x6*x8^2+31985*x1*x5*x6*x8^2+15903*x3*x5*x6*x8^2+6457*x3^2*x5*x6*x8^2+20914*x2*x4*x5*x6*x8^2+8494*x1*x5^2*x6*x8^2+31371*x3*x5^2*x6*x8^2+39408*x2*x6^2*x8^2+9741*x2*x3*x6^2*x8^2+20309*x1*x4*x6^2*x8^2+531*x3*x4*x6^2*x8^2+26124*x2*x5*x6^2*x8^2+6959*x1*x6^3*x8^2+27340*x3*x6^3*x8^2+38803*x3*x5*x6^3*x8^2+16099*x2*x6^4*x8^2+7436*x2*x7*x8^2+41297*x1*x2*x7*x8^2+19707*x2*x3*x7*x8^2+37874*x1*x4*x7*x8^2+15832*x3*x4*x7*x8^2+11704*x3^2*x4*x7*x8^2+34087*x2*x4^2*x7*x8^2+8818*x2*x5*x7*x8^2+24729*x2*x3*x5*x7*x8^2+22235*x1*x4*x5*x7*x8^2+27334*x3*x4*x5*x7*x8^2+39260*x2*x5^2*x7*x8^2+29718*x1*x6*x7*x8^2+36655*x2^2*x6*x7*x8^2+8958*x3*x6*x7*x8^2+12914*x1*x3*x6*x7*x8^2+2457*x3^2*x6*x7*x8^2+16840*x2*x4*x6*x7*x8^2+26013*x1*x5*x6*x7*x8^2+630*x3*x5*x6*x7*x8^2+15321*x3*x5^2*x6*x7*x8^2+457*x2*x6^2*x7*x8^2+40272*x3*x4*x6^2*x7*x8^2+8074*x2*x5*x6^2*x7*x8^2+14280*x1*x6^3*x7*x8^2+13823*x3*x6^3*x7*x8^2+17929*x2*x7^2*x8^2+33371*x1*x2*x7^2*x8^2+3852*x2*x3*x7^2*x8^2+16309*x1*x4*x7^2*x8^2+30550*x3*x4*x7^2*x8^2+2778*x2*x5*x7^2*x8^2+23210*x3*x4*x5*x7^2*x8^2+37519*x2*x5^2*x7^2*x8^2+2920*x1*x6*x7^2*x8^2+41294*x3*x6*x7^2*x8^2+31099*x3^2*x6*x7^2*x8^2+15963*x2*x4*x6*x7^2*x8^2+25778*x1*x5*x6*x7^2*x8^2+17802*x3*x5*x6*x7^2*x8^2+1012*x2*x6^2*x7^2*x8^2+25408*x3*x6^3*x7^2*x8^2+18488*x2*x7^3*x8^2+17889*x2*x3*x7^3*x8^2+39231*x1*x4*x7^3*x8^2+7432*x3*x4*x7^3*x8^2+6790*x2*x5*x7^3*x8^2+15535*x1*x6*x7^3*x8^2+28035*x3*x6*x7^3*x8^2+914*x3*x5*x6*x7^3*x8^2+7704*x2*x6^2*x7^3*x8^2+26989*x2*x7^4*x8^2+38297*x3*x4*x7^4*x8^2+12383*x2*x5*x7^4*x8^2+37013*x1*x6*x7^4*x8^2+8803*x3*x6*x7^4*x8^2+18309*x2*x7^5*x8^2+9642*x3*x6*x7^5*x8^2+34482*x2*x7^6*x8^2+4366*x1*x8^3+36194*x1^2*x8^3+41264*x2^2*x8^3+3616*x3*x8^3+1430*x1*x3*x8^3+5230*x3^2*x8^3+17704*x3^3*x8^3+35624*x2*x4*x8^3+13490*x2*x3*x4*x8^3+22523*x1*x4^2*x8^3+41762*x3*x4^2*x8^3+33286*x1*x5*x8^3+41976*x2^2*x5*x8^3+11718*x3*x5*x8^3+21807*x1*x3*x5*x8^3+25770*x3^2*x5*x8^3+16560*x2*x4*x5*x8^3+16811*x1*x5^2*x8^3+31410*x3*x5^2*x8^3+7247*x3*x5^3*x8^3+40844*x2*x6*x8^3+9992*x1*x2*x6*x8^3+20951*x2*x3*x6*x8^3+13062*x1*x4*x6*x8^3+25412*x3*x4*x6*x8^3+34906*x2*x5*x6*x8^3+18103*x3*x4*x5*x6*x8^3+5321*x2*x5^2*x6*x8^3+3496*x1*x6^2*x8^3+32374*x3*x6^2*x8^3+4679*x3^2*x6^2*x8^3+13638*x2*x4*x6^2*x8^3+30914*x1*x5*x6^2*x8^3+14465*x3*x5*x6^2*x8^3+21741*x2*x6^3*x8^3+35087*x3*x6^4*x8^3+21802*x1*x7*x8^3+31910*x1^2*x7*x8^3+31947*x2^2*x7*x8^3+30211*x3*x7*x8^3+34161*x1*x3*x7*x8^3+12955*x3^2*x7*x8^3+27054*x2*x4*x7*x8^3+4679*x3*x4^2*x7*x8^3+36548*x1*x5*x7*x8^3+4031*x3*x5*x7*x8^3+25992*x3^2*x5*x7*x8^3+1897*x2*x4*x5*x7*x8^3+39231*x1*x5^2*x7*x8^3+6576*x3*x5^2*x7*x8^3+4173*x2*x6*x7*x8^3+27033*x2*x3*x6*x7*x8^3+11070*x1*x4*x6*x7*x8^3+31926*x3*x4*x6*x7*x8^3+30642*x2*x5*x6*x7*x8^3+24066*x1*x6^2*x7*x8^3+29426*x3*x6^2*x7*x8^3+35038*x3*x5*x6^2*x7*x8^3+30515*x2*x6^3*x7*x8^3+13812*x1*x7^2*x8^3+29844*x2^2*x7^2*x8^3+2282*x3*x7^2*x8^3+25992*x1*x3*x7^2*x8^3+35807*x3^2*x7^2*x8^3+16819*x2*x4*x7^2*x8^3+16177*x1*x5*x7^2*x8^3+39562*x3*x5*x7^2*x8^3+34581*x3*x5^2*x7^2*x8^3+25321*x2*x6*x7^2*x8^3+19260*x3*x4*x6*x7^2*x8^3+41643*x2*x5*x6*x7^2*x8^3+7062*x1*x6^2*x7^2*x8^3+34026*x3*x6^2*x7^2*x8^3+7072*x1*x7^3*x8^3+9713*x3*x7^3*x8^3+40544*x3^2*x7^3*x8^3+22626*x2*x4*x7^3*x8^3+30087*x1*x5*x7^3*x8^3+38462*x3*x5*x7^3*x8^3+20972*x2*x6*x7^3*x8^3+6333*x3*x6^2*x7^3*x8^3+4815*x1*x7^4*x8^3+7952*x3*x7^4*x8^3+32276*x3*x5*x7^4*x8^3+16819*x2*x6*x7^4*x8^3+1893*x1*x7^5*x8^3+18889*x3*x7^5*x8^3+5638*x3*x7^6*x8^3+37647*x2*x8^4+34375*x1*x2*x8^4+35551*x2*x3*x8^4+36444*x1*x4*x8^4+6835*x3*x4*x8^4+39980*x3^2*x4*x8^4+32733*x2*x4^2*x8^4+9173*x2*x5*x8^4+12889*x2*x3*x5*x8^4+32091*x1*x4*x5*x8^4+29309*x3*x4*x5*x8^4+14494*x2*x5^2*x8^4+30215*x1*x6*x8^4+40087*x2^2*x6*x8^4+28267*x3*x6*x8^4+21313*x1*x3*x6*x8^4+22169*x3^2*x6*x8^4+12675*x2*x4*x6*x8^4+12354*x1*x5*x6*x8^4+41483*x3*x5*x6*x8^4+4815*x3*x5^2*x6*x8^4+6678*x2*x6^2*x8^4+13346*x3*x4*x6^2*x8^4+29445*x2*x5*x6^2*x8^4+18025*x1*x6^3*x8^4+22412*x3*x6^3*x8^4+5296*x2*x7*x8^4+12889*x1*x2*x7*x8^4+22169*x2*x3*x7*x8^4+13103*x1*x4*x7*x8^4+9285*x3*x4*x7*x8^4+18424*x2*x5*x7*x8^4+1741*x3*x4*x5*x7*x8^4+37976*x2*x5^2*x7*x8^4+32310*x1*x6*x7*x8^4+3057*x3*x6*x7*x8^4+35865*x3^2*x6*x7*x8^4+8988*x2*x4*x6*x7*x8^4+41186*x1*x5*x6*x7*x8^4+32100*x3*x5*x6*x7*x8^4+23939*x2*x6^2*x7*x8^4+32276*x3*x6^3*x7*x8^4+23633*x2*x7^2*x8^4+19124*x2*x3*x7^2*x8^4+37655*x1*x4*x7^2*x8^4+13803*x3*x4*x7^2*x8^4+14766*x2*x5*x7^2*x8^4+22655*x1*x6*x7^2*x8^4+763*x3*x6*x7^2*x8^4+37111*x3*x5*x6*x7^2*x8^4+37383*x2*x6^2*x7^2*x8^4+9309*x2*x7^3*x8^4+14572*x3*x4*x7^3*x8^4+33025*x2*x5*x7^3*x8^4+17568*x1*x6*x7^3*x8^4+19271*x3*x6*x7^3*x8^4+16070*x2*x7^4*x8^4+26079*x3*x6*x7^4*x8^4+16560*x2*x7^5*x8^4+27098*x1*x8^5+7996*x1^2*x8^5+13457*x2^2*x8^5+4366*x3*x8^5+23844*x1*x3*x8^5+7211*x3^2*x8^5+35196*x2*x4*x8^5+9494*x3*x4^2*x8^5+11816*x1*x5*x8^5+32394*x3*x5*x8^5+30803*x3^2*x5*x8^5+17025*x2*x4*x5*x8^5+7531*x1*x5^2*x8^5+11420*x3*x5^2*x8^5+11352*x2*x6*x8^5+22877*x2*x3*x6*x8^5+26877*x1*x4*x6*x8^5+34013*x3*x4*x6*x8^5+17593*x2*x5*x6*x8^5+6173*x1*x6^2*x8^5+37547*x3*x6^2*x8^5+12284*x3*x5*x6^2*x8^5+6605*x2*x6^3*x8^5+36999*x1*x7*x8^5+3889*x2^2*x7*x8^5+9619*x3*x7*x8^5+19593*x1*x3*x7*x8^5+13704*x3^2*x7*x8^5+41902*x2*x4*x7*x8^5+25482*x1*x5*x7*x8^5+35402*x3*x5*x7*x8^5+33951*x3*x5^2*x7*x8^5+35544*x2*x6*x7*x8^5+27210*x3*x4*x6*x7*x8^5+40951*x2*x5*x6*x7*x8^5+7000*x1*x6^2*x7*x8^5+33679*x3*x6^2*x7*x8^5+40010*x1*x7^2*x8^5+23394*x3*x7^2*x8^5+36593*x3^2*x7^2*x8^5+790*x2*x4*x7^2*x8^5+28667*x1*x5*x7^2*x8^5+29716*x3*x5*x7^2*x8^5+27074*x2*x6*x7^2*x8^5+3445*x3*x6^2*x7^2*x8^5+6823*x1*x7^3*x8^5+34707*x3*x7^3*x8^5+28544*x3*x5*x7^3*x8^5+36470*x2*x6*x7^3*x8^5+24663*x1*x7^4*x8^5+19120*x3*x7^4*x8^5+790*x3*x7^5*x8^5+14915*x2*x8^6+32696*x1*x2*x8^6+40906*x2*x3*x8^6+15848*x1*x4*x8^6+19203*x3*x4*x8^6+570*x2*x5*x8^6+32984*x3*x4*x5*x8^6+14136*x2*x5^2*x8^6+14598*x1*x6*x8^6+31107*x3*x6*x8^6+19420*x3^2*x6*x8^6+21490*x2*x4*x6*x8^6+16778*x1*x5*x6*x8^6+6074*x3*x5*x6*x8^6+16601*x2*x6^2*x8^6+32766*x3*x6^3*x8^6+5460*x2*x7*x8^6+35449*x2*x3*x7*x8^6+3214*x1*x4*x7*x8^6+40733*x3*x4*x7*x8^6+31881*x2*x5*x7*x8^6+16996*x1*x6*x7*x8^6+39882*x3*x6*x7*x8^6+40787*x3*x5*x6*x7*x8^6+3350*x2*x6^2*x7*x8^6+8001*x2*x7^2*x8^6+11630*x3*x4*x7^2*x8^6+30478*x2*x5*x7^2*x8^6+34441*x1*x6*x7^2*x8^6+39561*x3*x6*x7^2*x8^6+34795*x2*x7^3*x8^6+33284*x3*x6*x7^3*x8^6+37519*x2*x7^4*x8^6+446*x1*x8^7+1321*x2^2*x8^7+27098*x3*x8^7+7675*x1*x3*x8^7+29663*x3^2*x8^7+10959*x2*x4*x8^7+27700*x1*x5*x8^7+29057*x3*x5*x8^7+19667*x3*x5^2*x8^7+15029*x2*x6*x8^7+41083*x3*x4*x6*x8^7+10457*x2*x5*x6*x8^7+32803*x1*x6^2*x8^7+17844*x3*x6^2*x8^7+35625*x1*x7*x8^7+36107*x3*x7*x8^7+4317*x3^2*x7*x8^7+13955*x2*x4*x7*x8^7+25342*x1*x5*x7*x8^7+25194*x3*x5*x7*x8^7+18198*x2*x6*x7*x8^7+9395*x3*x6^2*x7*x8^7+354*x1*x7^2*x8^7+40400*x3*x7^2*x8^7+22531*x3*x5*x7^2*x8^7+5432*x2*x6*x7^2*x8^7+14494*x1*x7^3*x8^7+6864*x3*x7^3*x8^7+32013*x3*x7^4*x8^7+41567*x2*x8^8+41013*x2*x3*x8^8+40585*x1*x4*x8^8+4247*x3*x4*x8^8+29519*x2*x5*x8^8+7638*x1*x6*x8^8+39370*x3*x6*x8^8+19420*x3*x5*x6*x8^8+2321*x2*x6^2*x8^8+18774*x2*x7*x8^8+25988*x3*x4*x7*x8^8+7926*x2*x5*x7*x8^8+35161*x1*x6*x7*x8^8+222*x3*x6*x7*x8^8+25704*x2*x7^2*x8^8+10593*x3*x6*x7^2*x8^8+36692*x2*x7^3*x8^8+12386*x1*x8^9+446*x3*x8^9+41692*x3^2*x8^9+29984*x2*x4*x8^9+23309*x1*x5*x8^9+39301*x3*x5*x8^9+19169*x2*x6*x8^9+18025*x3*x6^2*x8^9+10852*x1*x7*x8^9+10853*x3*x7*x8^9+27733*x3*x5*x7*x8^9+2140*x2*x6*x7*x8^9+26128*x1*x7^2*x8^9+5457*x3*x7^2*x8^9+21206*x3*x7^3*x8^9+29627*x2*x8^10+25486*x3*x4*x8^10+32161*x2*x5*x8^10+33803*x1*x6*x8^10+38050*x3*x6*x8^10+4354*x2*x7*x8^10+17671*x3*x6*x7*x8^10+27486*x2*x7^2*x8^10+15206*x1*x8^11+12386*x3*x8^11+38408*x3*x5*x8^11+36766*x2*x6*x8^11+40157*x1*x7*x8^11+22453*x3*x7*x8^11+16383*x3*x7^2*x8^11+26807*x2*x8^12+18704*x3*x6*x8^12+15313*x2*x7*x8^12+13457*x1*x8^13+15206*x3*x8^13+13243*x3*x7*x8^13+28556*x2*x8^14+13457*x3*x8^15",
    "1984+10028*x1+35408*x1^2+23826*x2^2+4183*x3+17848*x1*x3+17741*x2^2*x3+2338*x3^2+22774*x1*x3^2+10066*x3^3+36407*x2*x4+13601*x1*x2*x4+13778*x2*x3*x4+36844*x4^2+22523*x1*x4^2+11315*x3*x4^2+16955*x4^4+3464*x5+33027*x1*x5+9638*x1^2*x5+13564*x2^2*x5+27309*x3*x5+24058*x1*x3*x5+16848*x3^2*x5+28949*x2*x4*x5+29573*x4^2*x5+23165*x3*x4^2*x5+31733*x1*x5^2+34624*x3*x5^2+10494*x3^2*x5^2+15955*x2*x4*x5^2+34445*x4^2*x5^2+23630*x1*x5^3+33910*x3*x5^3+2056*x2*x6+21202*x1*x2*x6+14921*x2*x3*x6+23531*x4*x6+13102*x1*x4*x6+28681*x3*x4*x6+4675*x3^2*x4*x6+36622*x2*x4^2*x6+29305*x4^3*x6+6193*x2*x5*x6+15062*x2*x3*x5*x6+5085*x4*x5*x6+36943*x1*x4*x5*x6+12848*x3*x4*x5*x6+37836*x2*x5^2*x6+2855*x4*x5^2*x6+29877*x4*x5^3*x6+13582*x1*x6^2+39050*x2^2*x6^2+38112*x3*x6^2+31054*x1*x3*x6^2+13992*x3^2*x6^2+9280*x2*x4*x6^2+35516*x4^2*x6^2+15955*x1*x5*x6^2+16883*x3*x5*x6^2+20704*x4^2*x5*x6^2+21346*x3*x5^2*x6^2+24308*x2*x6^3+28431*x4*x6^3+36231*x3*x4*x6^3+26593*x2*x5*x6^3+14029*x4*x5*x6^3+16741*x1*x6^4+29984*x3*x6^4+25272*x4*x6^5+39347*x7+40717*x1*x7+19453*x1^2*x7+32697*x2^2*x7+12577*x3*x7+26309*x1*x3*x7+3784*x3^2*x7+32375*x3^3*x7+7568*x2*x4*x7+6066*x2*x3*x4*x7+32450*x4^2*x7+24914*x1*x4^2*x7+33445*x3*x4^2*x7+31840*x1*x5*x7+26021*x2^2*x5*x7+28056*x3*x5*x7+41976*x1*x3*x5*x7+4354*x3^2*x5*x7+13313*x2*x4*x5*x7+1784*x4^2*x5*x7+4140*x1*x5^2*x7+24272*x3*x5^2*x7+35803*x4^2*x5^2*x7+33268*x3*x5^3*x7+15169*x2*x6*x7+15062*x1*x2*x6*x7+14420*x2*x3*x6*x7+41253*x4*x6*x7+25165*x1*x4*x6*x7+31624*x3*x4*x6*x7+8889*x4^3*x6*x7+34587*x2*x5*x6*x7+35195*x4*x5*x6*x7+25704*x3*x4*x5*x6*x7+10852*x2*x5^2*x6*x7+35519*x4*x5^2*x6*x7+10315*x1*x6^2*x7+17633*x3*x6^2*x7+19062*x3^2*x6^2*x7+11210*x2*x4*x6^2*x7+8926*x4^2*x6^2*x7+5926*x1*x5*x6^2*x7+17136*x3*x5*x6^2*x7+27593*x2*x6^3*x7+7390*x4*x6^3*x7+23165*x4*x5*x6^3*x7+38943*x3*x6^4*x7+19070*x1*x7^2+10494*x1^2*x7^2+35231*x2^2*x7^2+1296*x3*x7^2+31519*x1*x3*x7^2+22309*x3^2*x7^2+7352*x2*x4*x7^2+10619*x4^2*x7^2+21704*x3*x4^2*x7^2+17704*x1*x5*x7^2+12957*x3*x5*x7^2+34161*x3^2*x5*x7^2+41408*x2*x4*x5*x7^2+2358*x4^2*x5*x7^2+31519*x1*x5^2*x7^2+5284*x3*x5^2*x7^2+33999*x2*x6*x7^2+24667*x2*x3*x6*x7^2+7774*x4*x6*x7^2+12852*x1*x4*x6*x7^2+24062*x3*x4*x6*x7^2+34198*x2*x5*x6*x7^2+3*x4*x5*x6*x7^2+25556*x4*x5^2*x6*x7^2+28914*x1*x6^2*x7^2+41979*x3*x6^2*x7^2+37371*x4^2*x6^2*x7^2+35408*x3*x5*x6^2*x7^2+29091*x2*x6^3*x7^2+27519*x4*x6^3*x7^2+2784*x1*x7^3+29877*x2^2*x7^3+22943*x3*x7^3+22774*x1*x3*x7^3+33054*x3^2*x7^3+786*x2*x4*x7^3+1964*x4^2*x7^3+31091*x1*x5*x7^3+20597*x3*x5*x7^3+4782*x4^2*x5*x7^3+15741*x3*x5^2*x7^3+6569*x2*x6*x7^3+5230*x4*x6*x7^3+17881*x3*x4*x6*x7^3+38050*x2*x5*x6*x7^3+7778*x4*x5*x6*x7^3+22309*x1*x6^2*x7^3+2140*x3*x6^2*x7^3+32626*x4*x6^3*x7^3+38301*x1*x7^4+39229*x3*x7^4+8745*x3^2*x7^4+12457*x2*x4*x7^4+5996*x4^2*x7^4+27128*x1*x5*x7^4+31268*x3*x5*x7^4+9387*x2*x6*x7^4+39156*x4*x6*x7^4+32091*x4*x5*x6*x7^4+32947*x3*x6^2*x7^4+20346*x1*x7^5+3712*x3*x7^5+41692*x4^2*x7^5+35017*x3*x5*x7^5+33375*x2*x6*x7^5+12280*x4*x6*x7^5+20132*x1*x7^6+21667*x3*x7^6+30519*x4*x6*x7^6+21881*x3*x7^7+3616*x2*x8+18242*x1*x2*x8+23863*x2*x3*x8+38371*x2*x3^2*x8+16283*x4*x8+11654*x1*x4*x8+28305*x2^2*x4*x8+40872*x3*x4*x8+36478*x1*x3*x4*x8+22630*x3^2*x4*x8+27235*x2*x4^2*x8+28199*x4^3*x8+23901*x2*x5*x8+16811*x1*x2*x5*x8+39371*x2*x3*x5*x8+10338*x4*x5*x8+8103*x1*x4*x5*x8+10208*x3*x4*x5*x8+39087*x4^3*x5*x8+32946*x2*x5^2*x8+15224*x4*x5^2*x8+31235*x3*x4*x5^2*x8+41692*x2*x5^3*x8+9103*x4*x5^3*x8+11014*x1*x6*x8+10922*x1^2*x6*x8+1535*x2^2*x6*x8+35591*x3*x6*x8+9210*x1*x3*x6*x8+19132*x3^2*x6*x8+5745*x2*x4*x6*x8+25843*x4^2*x6*x8+4679*x3*x4^2*x6*x8+9922*x1*x5*x6*x8+30519*x3*x5*x6*x8+14494*x3^2*x5*x6*x8+17173*x2*x4*x5*x6*x8+1432*x4^2*x5*x6*x8+36124*x1*x5^2*x6*x8+8926*x3*x5^2*x6*x8+15295*x2*x6^2*x8+12852*x2*x3*x6^2*x8+34900*x4*x6^2*x8+1037*x1*x4*x6^2*x8+20778*x3*x4*x6^2*x8+32556*x2*x5*x6^2*x8+38232*x4*x5*x6^2*x8+37371*x4*x5^2*x6^2*x8+32733*x1*x6^3*x8+40729*x3*x6^3*x8+4782*x4^2*x6^3*x8+31482*x3*x5*x6^3*x8+30519*x2*x6^4*x8+21309*x4*x6^4*x8+38943*x2*x7*x8+9675*x1*x2*x7*x8+21344*x2*x3*x7*x8+25820*x4*x7*x8+24982*x1*x4*x7*x8+9886*x3*x4*x7*x8+21420*x3^2*x4*x7*x8+9605*x2*x4^2*x7*x8+9568*x4^3*x7*x8+21238*x2*x5*x7*x8+2074*x2*x3*x5*x7*x8+40097*x4*x5*x7*x8+20457*x1*x4*x5*x7*x8+15284*x3*x4*x5*x7*x8+25988*x2*x5^2*x7*x8+16065*x4*x5^2*x7*x8+4782*x4*x5^3*x7*x8+21309*x1*x6*x7*x8+41408*x2^2*x6*x7*x8+23858*x3*x6*x7*x8+28988*x1*x3*x6*x7*x8+26988*x3^2*x6*x7*x8+40161*x2*x4*x6*x7*x8+4216*x4^2*x6*x7*x8+15210*x1*x5*x6*x7*x8+31988*x3*x5*x6*x7*x8+33939*x4^2*x5*x6*x7*x8+34050*x3*x5^2*x6*x7*x8+15923*x2*x6^2*x7*x8+29789*x4*x6^2*x7*x8+16877*x3*x4*x6^2*x7*x8+11741*x2*x5*x6^2*x7*x8+29902*x4*x5*x6^2*x7*x8+24486*x1*x6^3*x7*x8+34478*x3*x6^3*x7*x8+32091*x4*x6^4*x7*x8+30971*x2*x7^2*x8+1037*x1*x2*x7^2*x8+5284*x2*x3*x7^2*x8+1774*x4*x7^2*x8+10173*x1*x4*x7^2*x8+1824*x3*x4*x7^2*x8+605*x4^3*x7^2*x8+35769*x2*x5*x7^2*x8+1804*x4*x5*x7^2*x8+22124*x3*x4*x5*x7^2*x8+38692*x2*x5^2*x7^2*x8+28087*x4*x5^2*x7^2*x8+35698*x1*x6*x7^2*x8+22704*x3*x6*x7^2*x8+2531*x3^2*x6*x7^2*x8+28692*x2*x4*x6*x7^2*x8+36507*x4^2*x6*x7^2*x8+13062*x1*x5*x6*x7^2*x8+3667*x3*x5*x6*x7^2*x8+17593*x2*x6^2*x7^2*x8+32439*x4*x6^2*x7^2*x8+7432*x4*x5*x6^2*x7^2*x8+14066*x3*x6^3*x7^2*x8+33215*x2*x7^3*x8+19630*x2*x3*x7^3*x8+30112*x4*x7^3*x8+21379*x1*x4*x7^3*x8+16058*x3*x4*x7^3*x8+20486*x2*x5*x7^3*x8+9169*x4*x5*x7^3*x8+38803*x4*x5^2*x7^3*x8+16988*x1*x6*x7^3*x8+23268*x3*x6*x7^3*x8+10214*x4^2*x6*x7^3*x8+2753*x3*x5*x6*x7^3*x8+5963*x2*x6^2*x7^3*x8+5292*x4*x6^2*x7^3*x8+27234*x2*x7^4*x8+11582*x4*x7^4*x8+13531*x3*x4*x7^4*x8+7140*x2*x5*x7^4*x8+19708*x4*x5*x7^4*x8+40943*x1*x6*x7^4*x8+3074*x3*x6*x7^4*x8+4173*x4*x6^2*x7^4*x8+9103*x2*x7^5*x8+11067*x4*x7^5*x8+38692*x4*x5*x7^5*x8+6531*x3*x6*x7^5*x8+18704*x2*x7^6*x8+11243*x4*x7^6*x8+1428*x4*x7^7*x8+37647*x1*x8^2+32626*x1^2*x8^2+30376*x2^2*x8^2+38397*x3*x8^2+15811*x1*x3*x8^2+36337*x3^2*x8^2+27914*x3^3*x8^2+30661*x2*x4*x8^2+29630*x2*x3*x4*x8^2+40816*x4^2*x8^2+3000*x1*x4^2*x8^2+9568*x3*x4^2*x8^2+8281*x1*x5*x8^2+8889*x2^2*x5*x8^2+3197*x3*x5*x8^2+32877*x1*x3*x5*x8^2+5284*x3^2*x5*x8^2+24667*x2*x4*x5*x8^2+18170*x4^2*x5*x8^2+20704*x1*x5^2*x8^2+16028*x3*x5^2*x8^2+605*x4^2*x5^2*x8^2+27556*x3*x5^3*x8^2+16084*x2*x6*x8^2+31235*x1*x2*x6*x8^2+2000*x2*x3*x6*x8^2+10788*x4*x6*x8^2+6889*x1*x4*x6*x8^2+36269*x3*x4*x6*x8^2+12420*x4^3*x6*x8^2+31985*x2*x5*x6*x8^2+15903*x4*x5*x6*x8^2+27371*x3*x4*x5*x6*x8^2+8494*x2*x5^2*x6*x8^2+31371*x4*x5^2*x6*x8^2+15957*x1*x6^2*x8^2+39408*x3*x6^2*x8^2+34087*x3^2*x6^2*x8^2+37976*x2*x4*x6^2*x8^2+531*x4^2*x6^2*x8^2+18346*x1*x5*x6^2*x8^2+26124*x3*x5*x6^2*x8^2+6959*x2*x6^3*x8^2+27340*x4*x6^3*x8^2+38803*x4*x5*x6^3*x8^2+16099*x3*x6^4*x8^2+35126*x1*x7*x8^2+37445*x1^2*x7*x8^2+32161*x2^2*x7*x8^2+7436*x3*x7*x8^2+13099*x1*x3*x7*x8^2+37945*x3^2*x7*x8^2+19636*x2*x4*x7*x8^2+15832*x4^2*x7*x8^2+3778*x3*x4^2*x7*x8^2+9747*x1*x5*x7*x8^2+8818*x3*x5*x7*x8^2+7778*x3^2*x5*x7*x8^2+39186*x2*x4*x5*x7*x8^2+27334*x4^2*x5*x7*x8^2+30161*x1*x5^2*x7*x8^2+39260*x3*x5^2*x7*x8^2+29718*x2*x6*x7*x8^2+22124*x2*x3*x6*x7*x8^2+8958*x4*x6*x7*x8^2+27371*x1*x4*x6*x7*x8^2+19297*x3*x4*x6*x7*x8^2+26013*x2*x5*x6*x7*x8^2+630*x4*x5*x6*x7*x8^2+15321*x4*x5^2*x6*x7*x8^2+28766*x1*x6^2*x7*x8^2+457*x3*x6^2*x7*x8^2+40272*x4^2*x6^2*x7*x8^2+8074*x3*x5*x6^2*x7*x8^2+14280*x2*x6^3*x7*x8^2+13823*x4*x6^3*x7*x8^2+32323*x1*x7^2*x8^2+18988*x2^2*x7^2*x8^2+17929*x3*x7^2*x8^2+7778*x1*x3*x7^2*x8^2+30124*x3^2*x7^2*x8^2+32050*x2*x4*x7^2*x8^2+30550*x4^2*x7^2*x8^2+41902*x1*x5*x7^2*x8^2+2778*x3*x5*x7^2*x8^2+23210*x4^2*x5*x7^2*x8^2+37519*x3*x5^2*x7^2*x8^2+2920*x2*x6*x7^2*x8^2+41294*x4*x6*x7^2*x8^2+5049*x3*x4*x6*x7^2*x8^2+25778*x2*x5*x6*x7^2*x8^2+17802*x4*x5*x6*x7^2*x8^2+30272*x1*x6^2*x7^2*x8^2+1012*x3*x6^2*x7^2*x8^2+25408*x4*x6^3*x7^2*x8^2+29803*x1*x7^3*x8^2+18488*x3*x7^3*x8^2+30272*x3^2*x7^3*x8^2+26848*x2*x4*x7^3*x8^2+7432*x4^2*x7^3*x8^2+14494*x1*x5*x7^3*x8^2+6790*x3*x5*x7^3*x8^2+15535*x2*x6*x7^3*x8^2+28035*x4*x6*x7^3*x8^2+914*x4*x5*x6*x7^3*x8^2+7704*x3*x6^2*x7^3*x8^2+14601*x1*x7^4*x8^2+26989*x3*x7^4*x8^2+38297*x4^2*x7^4*x8^2+12383*x3*x5*x7^4*x8^2+37013*x2*x6*x7^4*x8^2+8803*x4*x6*x7^4*x8^2+30840*x1*x7^5*x8^2+18309*x3*x7^5*x8^2+9642*x4*x6*x7^5*x8^2+34482*x3*x7^6*x8^2+4366*x2*x8^3+38050*x1*x2*x8^3+31234*x2*x3*x8^3+3616*x4*x8^3+29415*x1*x4*x8^3+40854*x3*x4*x8^3+15918*x3^2*x4*x8^3+37799*x2*x4^2*x8^3+41762*x4^3*x8^3+33286*x2*x5*x8^3+24877*x2*x3*x5*x8^3+11718*x4*x5*x8^3+26626*x1*x4*x5*x8^3+317*x3*x4*x5*x8^3+16811*x2*x5^2*x8^3+31410*x4*x5^2*x8^3+7247*x4*x5^3*x8^3+12244*x1*x6*x8^3+6531*x2^2*x6*x8^3+40844*x3*x6*x8^3+34943*x1*x3*x6*x8^3+22272*x3^2*x6*x8^3+11741*x2*x4*x6*x8^3+25412*x4^2*x6*x8^3+30124*x1*x5*x6*x8^3+34906*x3*x5*x6*x8^3+18103*x4^2*x5*x6*x8^3+5321*x3*x5^2*x6*x8^3+3496*x2*x6^2*x8^3+32374*x4*x6^2*x8^3+18317*x3*x4*x6^2*x8^3+30914*x2*x5*x6^2*x8^3+14465*x4*x5*x6^2*x8^3+32840*x1*x6^3*x8^3+21741*x3*x6^3*x8^3+35087*x4*x6^4*x8^3+21802*x2*x7*x8^3+24877*x1*x2*x7*x8^3+3461*x2*x3*x7*x8^3+30211*x4*x7*x8^3+24951*x1*x4*x7*x8^3+40009*x3*x4*x7*x8^3+4679*x4^3*x7*x8^3+36548*x2*x5*x7*x8^3+4031*x4*x5*x7*x8^3+27889*x3*x4*x5*x7*x8^3+39231*x2*x5^2*x7*x8^3+6576*x4*x5^2*x7*x8^3+8634*x1*x6*x7*x8^3+4173*x3*x6*x7*x8^3+35165*x3^2*x6*x7*x8^3+2938*x2*x4*x6*x7*x8^3+31926*x4^2*x6*x7*x8^3+3609*x1*x5*x6*x7*x8^3+30642*x3*x5*x6*x7*x8^3+24066*x2*x6^2*x7*x8^3+29426*x4*x6^2*x7*x8^3+35038*x4*x5*x6^2*x7*x8^3+30515*x3*x6^3*x7*x8^3+13812*x2*x7^2*x8^3+18317*x2*x3*x7^2*x8^3+2282*x4*x7^2*x8^3+34951*x1*x4*x7^2*x8^3+10613*x3*x4*x7^2*x8^3+16177*x2*x5*x7^2*x8^3+39562*x4*x5*x7^2*x8^3+34581*x4*x5^2*x7^2*x8^3+24922*x1*x6*x7^2*x8^3+25321*x3*x6*x7^2*x8^3+19260*x4^2*x6*x7^2*x8^3+41643*x3*x5*x6*x7^2*x8^3+7062*x2*x6^2*x7^2*x8^3+34026*x4*x6^2*x7^2*x8^3+7072*x2*x7^3*x8^3+9713*x4*x7^3*x8^3+21157*x3*x4*x7^3*x8^3+30087*x2*x5*x7^3*x8^3+38462*x4*x5*x7^3*x8^3+20914*x1*x6*x7^3*x8^3+20972*x3*x6*x7^3*x8^3+6333*x4*x6^2*x7^3*x8^3+4815*x2*x7^4*x8^3+7952*x4*x7^4*x8^3+32276*x4*x5*x7^4*x8^3+16819*x3*x6*x7^4*x8^3+1893*x2*x7^5*x8^3+18889*x4*x7^5*x8^3+5638*x4*x7^6*x8^3+14915*x1*x8^4+20560*x1^2*x8^4+13350*x2^2*x8^4+37647*x3*x8^4+29770*x1*x3*x8^4+22416*x3^2*x8^4+7566*x2*x4*x8^4+6835*x4^2*x8^4+30700*x3*x4^2*x8^4+17811*x1*x5*x8^4+9173*x3*x5*x8^4+6605*x3^2*x5*x8^4+38375*x2*x4*x5*x8^4+29309*x4^2*x5*x8^4+41371*x1*x5^2*x8^4+14494*x3*x5^2*x8^4+30215*x2*x6*x8^4+38482*x2*x3*x6*x8^4+28267*x4*x6*x8^4+4786*x1*x4*x6*x8^4+34844*x3*x4*x6*x8^4+12354*x2*x5*x6*x8^4+41483*x4*x5*x6*x8^4+4815*x4*x5^2*x6*x8^4+39873*x1*x6^2*x8^4+6678*x3*x6^2*x8^4+13346*x4^2*x6^2*x8^4+29445*x3*x5*x6^2*x8^4+18025*x2*x6^3*x8^4+22412*x4*x6^3*x8^4+4568*x1*x7*x8^4+15029*x2^2*x7*x8^4+5296*x3*x7*x8^4+13210*x1*x3*x7*x8^4+22597*x3^2*x7*x8^4+12675*x2*x4*x7*x8^4+9285*x4^2*x7*x8^4+12782*x1*x5*x7*x8^4+18424*x3*x5*x7*x8^4+1741*x4^2*x5*x7*x8^4+37976*x3*x5^2*x7*x8^4+32310*x2*x6*x7*x8^4+3057*x4*x6*x7*x8^4+2840*x3*x4*x6*x7*x8^4+41186*x2*x5*x6*x7*x8^4+32100*x4*x5*x6*x7*x8^4+3210*x1*x6^2*x7*x8^4+23939*x3*x6^2*x7*x8^4+32276*x4*x6^3*x7*x8^4+25632*x1*x7^2*x8^4+23633*x3*x7^2*x8^4+30087*x3^2*x7^2*x8^4+26692*x2*x4*x7^2*x8^4+13803*x4^2*x7^2*x8^4+11741*x1*x5*x7^2*x8^4+14766*x3*x5*x7^2*x8^4+22655*x2*x6*x7^2*x8^4+763*x4*x6*x7^2*x8^4+37111*x4*x5*x6*x7^2*x8^4+37383*x3*x6^2*x7^2*x8^4+21128*x1*x7^3*x8^4+9309*x3*x7^3*x8^4+14572*x4^2*x7^3*x8^4+33025*x3*x5*x7^3*x8^4+17568*x2*x6*x7^3*x8^4+19271*x4*x6*x7^3*x8^4+23560*x1*x7^4*x8^4+16070*x3*x7^4*x8^4+26079*x4*x6*x7^4*x8^4+16560*x3*x7^5*x8^4+27098*x2*x8^5+36231*x1*x2*x8^5+31519*x2*x3*x8^5+4366*x4*x8^5+5140*x1*x4*x8^5+394*x3*x4*x8^5+9494*x4^3*x8^5+11816*x2*x5*x8^5+32394*x4*x5*x8^5+5815*x3*x4*x5*x8^5+7531*x2*x5^2*x8^5+11420*x4*x5^2*x8^5+39801*x1*x6*x8^5+11352*x3*x6*x8^5+40655*x3^2*x6*x8^5+9099*x2*x4*x6*x8^5+34013*x4^2*x6*x8^5+24914*x1*x5*x6*x8^5+17593*x3*x5*x6*x8^5+6173*x2*x6^2*x8^5+37547*x4*x6^2*x8^5+12284*x4*x5*x6^2*x8^5+6605*x3*x6^3*x8^5+36999*x2*x7*x8^5+24198*x2*x3*x7*x8^5+9619*x4*x7*x8^5+5815*x1*x4*x7*x8^5+13593*x3*x4*x7*x8^5+25482*x2*x5*x7*x8^5+35402*x4*x5*x7*x8^5+33951*x4*x5^2*x7*x8^5+20235*x1*x6*x7*x8^5+35544*x3*x6*x7*x8^5+27210*x4^2*x6*x7*x8^5+40951*x3*x5*x6*x7*x8^5+7000*x2*x6^2*x7*x8^5+33679*x4*x6^2*x7*x8^5+40010*x2*x7^2*x8^5+23394*x4*x7^2*x8^5+37383*x3*x4*x7^2*x8^5+28667*x2*x5*x7^2*x8^5+29716*x4*x5*x7^2*x8^5+36198*x1*x6*x7^2*x8^5+27074*x3*x6*x7^2*x8^5+3445*x4*x6^2*x7^2*x8^5+6823*x2*x7^3*x8^5+34707*x4*x7^3*x8^5+28544*x4*x5*x7^3*x8^5+36470*x3*x6*x7^3*x8^5+24663*x2*x7^4*x8^5+19120*x4*x7^4*x8^5+790*x4*x7^5*x8^5+41567*x1*x8^6+27235*x2^2*x8^6+14915*x3*x8^6+7424*x1*x3*x8^6+39157*x3^2*x8^6+17597*x2*x4*x8^6+19203*x4^2*x8^6+41120*x1*x5*x8^6+570*x3*x5*x8^6+32984*x4^2*x5*x8^6+14136*x3*x5^2*x8^6+14598*x2*x6*x8^6+31107*x4*x6*x8^6+40910*x3*x4*x6*x8^6+16778*x2*x5*x6*x8^6+6074*x4*x5*x6*x8^6+2642*x1*x6^2*x8^6+16601*x3*x6^2*x8^6+32766*x4*x6^3*x8^6+36015*x1*x7*x8^6+5460*x3*x7*x8^6+1144*x3^2*x7*x8^6+37519*x2*x4*x7*x8^6+40733*x4^2*x7*x8^6+40515*x1*x5*x7*x8^6+31881*x3*x5*x7*x8^6+16996*x2*x6*x7*x8^6+39882*x4*x6*x7*x8^6+40787*x4*x5*x6*x7*x8^6+3350*x3*x6^2*x7*x8^6+395*x1*x7^2*x8^6+8001*x3*x7^2*x8^6+11630*x4^2*x7^2*x8^6+30478*x3*x5*x7^2*x8^6+34441*x2*x6*x7^2*x8^6+39561*x4*x6*x7^2*x8^6+21844*x1*x7^3*x8^6+34795*x3*x7^3*x8^6+33284*x4*x6*x7^3*x8^6+37519*x3*x7^4*x8^6+446*x2*x8^7+27914*x2*x3*x8^7+27098*x4*x8^7+37980*x1*x4*x8^7+40622*x3*x4*x8^7+27700*x2*x5*x8^7+29057*x4*x5*x8^7+19667*x4*x5^2*x8^7+7568*x1*x6*x8^7+15029*x3*x6*x8^7+41083*x4^2*x6*x8^7+10457*x3*x5*x6*x8^7+32803*x2*x6^2*x8^7+17844*x4*x6^2*x8^7+35625*x2*x7*x8^7+36107*x4*x7*x8^7+18272*x3*x4*x7*x8^7+25342*x2*x5*x7*x8^7+25194*x4*x5*x7*x8^7+38478*x1*x6*x7*x8^7+18198*x3*x6*x7*x8^7+9395*x4*x6^2*x7*x8^7+354*x2*x7^2*x8^7+40400*x4*x7^2*x8^7+22531*x4*x5*x7^2*x8^7+5432*x3*x6*x7^2*x8^7+14494*x2*x7^3*x8^7+6864*x4*x7^3*x8^7+32013*x4*x7^4*x8^7+29627*x1*x8^8+41567*x3*x8^8+28877*x3^2*x8^8+10708*x2*x4*x8^8+4247*x4^2*x8^8+5247*x1*x5*x8^8+29519*x3*x5*x8^8+7638*x2*x6*x8^8+39370*x4*x6*x8^8+19420*x4*x5*x6*x8^8+2321*x3*x6^2*x8^8+15955*x1*x7*x8^8+18774*x3*x7*x8^8+25988*x4^2*x7*x8^8+7926*x3*x5*x7*x8^8+35161*x2*x6*x7*x8^8+222*x4*x6*x7*x8^8+32840*x1*x7^2*x8^8+25704*x3*x7^2*x8^8+10593*x4*x6*x7^2*x8^8+36692*x3*x7^3*x8^8+12386*x2*x8^9+446*x4*x8^9+29663*x3*x4*x8^9+23309*x2*x5*x8^9+39301*x4*x5*x8^9+21667*x1*x6*x8^9+19169*x3*x6*x8^9+18025*x4*x6^2*x8^9+10852*x2*x7*x8^9+10853*x4*x7*x8^9+27733*x4*x5*x7*x8^9+2140*x3*x6*x7*x8^9+26128*x2*x7^2*x8^9+5457*x4*x7^2*x8^9+21206*x4*x7^3*x8^9+26807*x1*x8^10+29627*x3*x8^10+25486*x4^2*x8^10+32161*x3*x5*x8^10+33803*x2*x6*x8^10+38050*x4*x6*x8^10+30412*x1*x7*x8^10+4354*x3*x7*x8^10+17671*x4*x6*x7*x8^10+27486*x3*x7^2*x8^10+15206*x2*x8^11+12386*x4*x8^11+38408*x4*x5*x8^11+36766*x3*x6*x8^11+40157*x2*x7*x8^11+22453*x4*x7*x8^11+16383*x4*x7^2*x8^11+28556*x1*x8^12+26807*x3*x8^12+18704*x4*x6*x8^12+15313*x3*x7*x8^12+13457*x2*x8^13+15206*x4*x8^13+13243*x4*x7*x8^13+28556*x3*x8^14+13457*x4*x8^15",
    "13961*x2+41012*x1*x2+17258*x2*x3+1000*x2*x3^2+31927*x4+29467*x1*x4+6033*x2^2*x4+30971*x3*x4+22132*x1*x3*x4+11494*x3^2*x4+30198*x2*x4^2+13100*x4^3+40801*x2*x5+251*x1*x2*x5+5247*x2*x3*x5+22140*x4*x5+36515*x1*x4*x5+17883*x3*x4*x5+32482*x4^3*x5+15849*x2*x5^2+22184*x4*x5^2+40334*x3*x4*x5^2+17383*x2*x5^3+26342*x4*x5^3+26028*x6+3901*x1*x6+7996*x1^2*x6+35445*x2^2*x6+2056*x3*x6+25807*x1*x3*x6+2820*x3^2*x6+893*x2*x4*x6+8531*x4^2*x6+28091*x3*x4^2*x6+23531*x5*x6+31735*x1*x5*x6+26343*x3*x5*x6+18025*x3^2*x5*x6+15918*x2*x4*x5*x6+12420*x4^2*x5*x6+5085*x5^2*x6+19774*x1*x5^2*x6+25556*x3*x5^2*x6+2855*x5^3*x6+29877*x5^4*x6+13582*x2*x6^2+10815*x2*x3*x6^2+38112*x4*x6^2+749*x1*x4*x6^2+4675*x3*x4*x6^2+34552*x2*x5*x6^2+10386*x4*x5*x6^2+37*x4*x5^2*x6^2+12029*x1*x6^3+24308*x3*x6^3+33268*x4^2*x6^3+28431*x5*x6^3+29556*x3*x5*x6^3+14029*x5^2*x6^3+16741*x2*x6^4+29984*x4*x6^4+25272*x5*x6^5+40717*x2*x7+4568*x1*x2*x7+14100*x2*x3*x7+12577*x4*x7+12281*x1*x4*x7+37962*x3*x4*x7+36515*x3^2*x4*x7+26449*x2*x4^2*x7+37622*x4^3*x7+5230*x2*x5*x7+32766*x2*x3*x5*x7+18493*x4*x5*x7+34515*x1*x4*x5*x7+41939*x3*x4*x5*x7+17704*x2*x5^2*x7+26056*x4*x5^2*x7+27058*x4*x5^3*x7+10798*x1*x6*x7+29305*x2^2*x6*x7+15169*x3*x6*x7+6531*x1*x3*x6*x7+2605*x3^2*x6*x7+9815*x2*x4*x6*x7+29840*x4^2*x6*x7+41253*x5*x6*x7+33696*x1*x5*x6*x7+36371*x3*x5*x6*x7+28630*x4^2*x5*x6*x7+35195*x5^2*x6*x7+16815*x3*x5^2*x6*x7+35519*x5^3*x6*x7+10315*x2*x6^2*x7+17633*x4*x6^2*x7+3000*x3*x4*x6^2*x7+33198*x2*x5*x6^2*x7+26062*x4*x5*x6^2*x7+28342*x1*x6^3*x7+27593*x3*x6^3*x7+7390*x5*x6^3*x7+23165*x5^2*x6^3*x7+38943*x4*x6^4*x7+19070*x2*x7^2+749*x1*x2*x7^2+23844*x2*x3*x7^2+1296*x4*x7^2+8210*x1*x4*x7^2+16633*x3*x4*x7^2+9531*x4^3*x7^2+30732*x2*x5*x7^2+23576*x4*x5*x7^2+3358*x3*x4*x5*x7^2+31877*x2*x5^2*x7^2+7642*x4*x5^2*x7^2+31732*x1*x6*x7^2+33999*x3*x6*x7^2+29235*x3^2*x6*x7^2+31556*x2*x4*x6*x7^2+25988*x4^2*x6*x7^2+7774*x5*x6*x7^2+34840*x1*x5*x6*x7^2+32272*x3*x5*x6*x7^2+3*x5^2*x6*x7^2+25556*x5^3*x6*x7^2+28914*x2*x6^2*x7^2+41979*x4*x6^2*x7^2+30766*x4*x5*x6^2*x7^2+29091*x3*x6^3*x7^2+27519*x5*x6^3*x7^2+2784*x2*x7^3+1000*x2*x3*x7^3+22943*x4*x7^3+11066*x1*x4*x7^3+5391*x3*x4*x7^3+17527*x2*x5*x7^3+22561*x4*x5*x7^3+20523*x4*x5^2*x7^3+10959*x1*x6*x7^3+6569*x3*x6*x7^3+11350*x4^2*x6*x7^3+5230*x5*x6*x7^3+2568*x3*x5*x6*x7^3+7778*x5^2*x6*x7^3+22309*x2*x6^2*x7^3+2140*x4*x6^2*x7^3+32626*x5*x6^3*x7^3+38301*x2*x7^4+39229*x4*x7^4+29198*x3*x4*x7^4+19132*x2*x5*x7^4+37264*x4*x5*x7^4+28770*x1*x6*x7^4+9387*x3*x6*x7^4+39156*x5*x6*x7^4+32091*x5^2*x6*x7^4+32947*x4*x6^2*x7^4+20346*x2*x7^5+3712*x4*x7^5+34696*x4*x5*x7^5+33375*x3*x6*x7^5+12280*x5*x6*x7^5+20132*x2*x7^6+21667*x4*x7^6+30519*x5*x6*x7^6+21881*x4*x7^7+10269*x8+4366*x1*x8+24593*x1^2*x8+24023*x2^2*x8+3616*x3*x8+8961*x1*x3*x8+6122*x3^2*x8+23951*x3^3*x8+12244*x2*x4*x8+39548*x2*x3*x4*x8+28295*x4^2*x8+41655*x1*x4^2*x8+18025*x3*x4^2*x8+16283*x5*x8+9316*x1*x5*x8+41655*x2^2*x5*x8+36478*x3*x5*x8+21165*x1*x3*x5*x8+31161*x3^2*x5*x8+29519*x2*x4*x5*x8+5318*x4^2*x5*x8+10338*x5^2*x8+17634*x1*x5^2*x8+24022*x3*x5^2*x8+16136*x4^2*x5^2*x8+15224*x5^3*x8+11852*x3*x5^3*x8+9103*x5^4*x8+11014*x2*x6*x8+23379*x1*x2*x6*x8+35873*x2*x3*x6*x8+35591*x4*x6*x8+4605*x1*x4*x6*x8+24307*x3*x4*x6*x8+34161*x4^3*x6*x8+10492*x2*x5*x6*x8+14349*x4*x5*x6*x8+13284*x3*x4*x5*x6*x8+25025*x2*x5^2*x6*x8+10358*x4*x5^2*x6*x8+18989*x1*x6^2*x8+15295*x3*x6^2*x8+2321*x3^2*x6^2*x8+19741*x2*x4*x6^2*x8+24346*x4^2*x6^2*x8+34900*x5*x6^2*x8+23025*x1*x5*x6^2*x8+28988*x3*x5*x6^2*x8+38232*x5^2*x6^2*x8+37371*x5^3*x6^2*x8+32733*x2*x6^3*x8+40729*x4*x6^3*x8+36264*x4*x5*x6^3*x8+30519*x3*x6^4*x8+21309*x5*x6^4*x8+33985*x1*x7*x8+4140*x1^2*x7*x8+18169*x2^2*x7*x8+38943*x3*x7*x8+465*x1*x3*x7*x8+19953*x3^2*x7*x8+7387*x2*x4*x7*x8+16562*x4^2*x7*x8+35198*x3*x4^2*x7*x8+25820*x5*x7*x8+29729*x1*x5*x7*x8+14562*x3*x5*x7*x8+23383*x3^2*x5*x7*x8+23136*x2*x4*x5*x7*x8+3111*x4^2*x5*x7*x8+40097*x5^2*x7*x8+18136*x1*x5^2*x7*x8+5716*x3*x5^2*x7*x8+16065*x5^3*x7*x8+4782*x5^4*x7*x8+21309*x2*x6*x7*x8+24383*x2*x3*x6*x7*x8+23858*x4*x6*x7*x8+753*x1*x4*x6*x7*x8+25778*x3*x4*x6*x7*x8+14568*x2*x5*x6*x7*x8+36204*x4*x5*x6*x7*x8+25976*x4*x5^2*x6*x7*x8+31235*x1*x6^2*x7*x8+15923*x3*x6^2*x7*x8+15667*x4^2*x6^2*x7*x8+29789*x5*x6^2*x7*x8+12951*x3*x5*x6^2*x7*x8+29902*x5^2*x6^2*x7*x8+24486*x2*x6^3*x7*x8+34478*x4*x6^3*x7*x8+32091*x5*x6^4*x7*x8+6014*x1*x7^2*x8+30877*x2^2*x7^2*x8+30971*x3*x7^2*x8+34840*x1*x3*x7^2*x8+30556*x3^2*x7^2*x8+33198*x2*x4*x7^2*x8+21883*x4^2*x7^2*x8+1774*x5*x7^2*x8+18383*x1*x5*x7^2*x8+15710*x3*x5*x7^2*x8+39902*x4^2*x5*x7^2*x8+1804*x5^2*x7^2*x8+21519*x3*x5^2*x7^2*x8+28087*x5^3*x7^2*x8+35698*x2*x6*x7^2*x8+22704*x4*x6*x7^2*x8+19519*x3*x4*x6*x7^2*x8+24766*x2*x5*x6*x7^2*x8+40174*x4*x5*x6*x7^2*x8+16383*x1*x6^2*x7^2*x8+17593*x3*x6^2*x7^2*x8+32439*x5*x6^2*x7^2*x8+7432*x5^2*x6^2*x7^2*x8+14066*x4*x6^3*x7^2*x8+18491*x1*x7^3*x8+33215*x3*x7^3*x8+1284*x3^2*x7^3*x8+24449*x2*x4*x7^3*x8+3424*x4^2*x7^3*x8+30112*x5*x7^3*x8+6066*x1*x5*x7^3*x8+33120*x3*x5*x7^3*x8+9169*x5^2*x7^3*x8+38803*x5^3*x7^3*x8+16988*x2*x6*x7^3*x8+23268*x4*x6*x7^3*x8+12967*x4*x5*x6*x7^3*x8+5963*x3*x6^2*x7^3*x8+5292*x5*x6^2*x7^3*x8+12564*x1*x7^4*x8+27234*x3*x7^4*x8+40515*x4^2*x7^4*x8+11582*x5*x7^4*x8+22169*x3*x5*x7^4*x8+19708*x5^2*x7^4*x8+40943*x2*x6*x7^4*x8+3074*x4*x6*x7^4*x8+4173*x5*x6^2*x7^4*x8+3177*x1*x7^5*x8+9103*x3*x7^5*x8+11067*x5*x7^5*x8+38692*x5^2*x7^5*x8+6531*x4*x6*x7^5*x8+18704*x3*x7^6*x8+11243*x5*x7^6*x8+1428*x5*x7^7*x8+37647*x2*x8^2+15564*x1*x2*x8^2+28020*x2*x3*x8^2+38397*x4*x8^2+29839*x1*x4*x8^2+267*x3*x4*x8^2+6605*x3^2*x4*x8^2+21704*x2*x4^2*x8^2+12494*x4^3*x8^2+32999*x2*x5*x8^2+31593*x2*x3*x5*x8^2+2000*x4*x5*x8^2+7963*x1*x4*x5*x8^2+35556*x3*x4*x5*x8^2+12173*x2*x5^2*x8^2+34198*x4*x5^2*x8^2+28161*x4*x5^3*x8^2+29323*x1*x6*x8^2+3963*x2^2*x6*x8^2+16084*x3*x6*x8^2+23025*x1*x3*x6*x8^2+28914*x3^2*x6*x8^2+29914*x2*x4*x6*x8^2+18099*x4^2*x6*x8^2+10788*x5*x6*x8^2+15099*x1*x5*x6*x8^2+8142*x3*x5*x6*x8^2+33334*x4^2*x5*x6*x8^2+15903*x5^2*x6*x8^2+14951*x3*x5^2*x6*x8^2+31371*x5^3*x6*x8^2+15957*x2*x6^2*x8^2+39408*x4*x6^2*x8^2+12383*x3*x4*x6^2*x8^2+36013*x2*x5*x6^2*x8^2+26655*x4*x5*x6^2*x8^2+37408*x1*x6^3*x8^2+6959*x3*x6^3*x8^2+27340*x5*x6^3*x8^2+38803*x5^2*x6^3*x8^2+16099*x4*x6^4*x8^2+35126*x2*x7*x8^2+9568*x1*x2*x7*x8^2+36124*x2*x3*x7*x8^2+7436*x4*x7*x8^2+41013*x1*x4*x7*x8^2+33806*x3*x4*x7*x8^2+34087*x4^3*x7*x8^2+33522*x2*x5*x7*x8^2+24650*x4*x5*x7*x8^2+41717*x3*x4*x5*x7*x8^2+5099*x2*x5^2*x7*x8^2+24581*x4*x5^2*x7*x8^2+9676*x1*x6*x7*x8^2+29718*x3*x6*x7*x8^2+27482*x3^2*x6*x7*x8^2+36581*x2*x4*x6*x7*x8^2+16840*x4^2*x6*x7*x8^2+8958*x5*x6*x7*x8^2+23445*x1*x5*x6*x7*x8^2+28470*x3*x5*x6*x7*x8^2+630*x5^2*x6*x7*x8^2+15321*x5^3*x6*x7*x8^2+28766*x2*x6^2*x7*x8^2+457*x4*x6^2*x7*x8^2+6333*x4*x5*x6^2*x7*x8^2+14280*x3*x6^3*x7*x8^2+13823*x5*x6^3*x7*x8^2+32323*x2*x7^2*x8^2+12383*x2*x3*x7^2*x8^2+17929*x4*x7^2*x8^2+36013*x1*x4*x7^2*x8^2+4420*x3*x4*x7^2*x8^2+15630*x2*x5*x7^2*x8^2+33328*x4*x5*x7^2*x8^2+18716*x4*x5^2*x7^2*x8^2+36655*x1*x6*x7^2*x8^2+2920*x3*x6*x7^2*x8^2+15963*x4^2*x6*x7^2*x8^2+41294*x5*x6*x7^2*x8^2+14864*x3*x5*x6*x7^2*x8^2+17802*x5^2*x6*x7^2*x8^2+30272*x2*x6^2*x7^2*x8^2+1012*x4*x6^2*x7^2*x8^2+25408*x5*x6^3*x7^2*x8^2+29803*x2*x7^3*x8^2+18488*x4*x7^3*x8^2+27490*x3*x4*x7^3*x8^2+2111*x2*x5*x7^3*x8^2+14222*x4*x5*x7^3*x8^2+40087*x1*x6*x7^3*x8^2+15535*x3*x6*x7^3*x8^2+28035*x5*x6*x7^3*x8^2+914*x5^2*x6*x7^3*x8^2+7704*x4*x6^2*x7^3*x8^2+14601*x2*x7^4*x8^2+26989*x4*x7^4*x8^2+8667*x4*x5*x7^4*x8^2+37013*x3*x6*x7^4*x8^2+8803*x5*x6*x7^4*x8^2+30840*x2*x7^5*x8^2+18309*x4*x7^5*x8^2+9642*x5*x6*x7^5*x8^2+34482*x4*x7^6*x8^2+27098*x1*x8^3+34910*x1^2*x8^3+1856*x2^2*x8^3+4366*x3*x8^3+642*x1*x3*x8^3+31983*x3^2*x8^3+17206*x2*x4*x8^3+35624*x4^2*x8^3+20737*x3*x4^2*x8^3+3616*x5*x8^3+6035*x1*x5*x8^3+38516*x3*x5*x8^3+605*x3^2*x5*x8^3+2959*x2*x4*x5*x8^3+16309*x4^2*x5*x8^3+11718*x5^2*x8^3+4103*x1*x5^2*x8^3+568*x3*x5^2*x8^3+31410*x5^3*x8^3+7247*x5^4*x8^3+12244*x2*x6*x8^3+38013*x2*x3*x6*x8^3+40844*x4*x6*x8^3+39762*x1*x4*x6*x8^3+35334*x3*x4*x6*x8^3+28803*x2*x5*x6*x8^3+18305*x4*x5*x6*x8^3+23424*x4*x5^2*x6*x8^3+13313*x1*x6^2*x8^3+3496*x3*x6^2*x8^3+13638*x4^2*x6^2*x8^3+32374*x5*x6^2*x8^3+35593*x3*x5*x6^2*x8^3+14465*x5^2*x6^2*x8^3+32840*x2*x6^3*x8^3+21741*x4*x6^3*x8^3+35087*x5*x6^4*x8^3+37891*x1*x7*x8^3+34980*x2^2*x7*x8^3+21802*x3*x7*x8^3+7815*x1*x3*x7*x8^3+13527*x3^2*x7*x8^3+36264*x2*x4*x7*x8^3+27054*x4^2*x7*x8^3+30211*x5*x7*x8^3+7490*x3*x5*x7*x8^3+6576*x4^2*x5*x7*x8^3+4031*x5^2*x7*x8^3+23210*x3*x5^2*x7*x8^3+6576*x5^3*x7*x8^3+8634*x2*x6*x7*x8^3+4173*x4*x6*x7*x8^3+4222*x3*x4*x6*x7*x8^3+37490*x2*x5*x6*x7*x8^3+20555*x4*x5*x6*x7*x8^3+6391*x1*x6^2*x7*x8^3+24066*x3*x6^2*x7*x8^3+29426*x5*x6^2*x7*x8^3+35038*x5^2*x6^2*x7*x8^3+30515*x4*x6^3*x7*x8^3+5138*x1*x7^2*x8^3+13812*x3*x7^2*x8^3+30486*x3^2*x7^2*x8^3+27276*x2*x4*x7^2*x8^3+16819*x4^2*x7^2*x8^3+2282*x5*x7^2*x8^3+10214*x1*x5*x7^2*x8^3+9971*x3*x5*x7^2*x8^3+39562*x5^2*x7^2*x8^3+34581*x5^3*x7^2*x8^3+24922*x2*x6*x7^2*x8^3+25321*x4*x6*x7^2*x8^3+18890*x4*x5*x6*x7^2*x8^3+7062*x3*x6^2*x7^2*x8^3+34026*x5*x6^2*x7^2*x8^3+22597*x1*x7^3*x8^3+7072*x3*x7^3*x8^3+22626*x4^2*x7^3*x8^3+9713*x5*x7^3*x8^3+28618*x3*x5*x7^3*x8^3+38462*x5^2*x7^3*x8^3+20914*x2*x6*x7^3*x8^3+20972*x4*x6*x7^3*x8^3+6333*x5*x6^2*x7^3*x8^3+9280*x1*x7^4*x8^3+4815*x3*x7^4*x8^3+7952*x5*x7^4*x8^3+32276*x5^2*x7^4*x8^3+16819*x4*x6*x7^4*x8^3+1893*x3*x7^5*x8^3+18889*x5*x7^5*x8^3+5638*x5*x7^6*x8^3+14915*x2*x8^4+20881*x1*x2*x8^4+22095*x2*x3*x8^4+37647*x4*x8^4+6461*x1*x4*x8^4+16847*x3*x4*x8^4+32733*x4^3*x8^4+30946*x2*x5*x8^4+16008*x4*x5*x8^4+36663*x3*x4*x5*x8^4+5642*x2*x5^2*x8^4+1790*x4*x5^2*x8^4+31839*x1*x6*x8^4+30215*x3*x6*x8^4+40408*x3^2*x6*x8^4+21955*x2*x4*x6*x8^4+12675*x4^2*x6*x8^4+28267*x5*x6*x8^4+13424*x1*x5*x6*x8^4+34523*x3*x5*x6*x8^4+41483*x5^2*x6*x8^4+4815*x5^3*x6*x8^4+39873*x2*x6^2*x8^4+6678*x4*x6^2*x8^4+778*x4*x5*x6^2*x8^4+18025*x3*x6^3*x8^4+22412*x5*x6^3*x8^4+4568*x2*x7*x8^4+30379*x2*x3*x7*x8^4+5296*x4*x7*x8^4+38696*x1*x4*x7*x8^4+35700*x3*x4*x7*x8^4+12354*x2*x5*x7*x8^4+27709*x4*x5*x7*x8^4+39717*x4*x5^2*x7*x8^4+38161*x1*x6*x7*x8^4+32310*x3*x6*x7*x8^4+8988*x4^2*x6*x7*x8^4+3057*x5*x6*x7*x8^4+35038*x3*x5*x6*x7*x8^4+32100*x5^2*x6*x7*x8^4+3210*x2*x6^2*x7*x8^4+23939*x4*x6^2*x7*x8^4+32276*x5*x6^3*x7*x8^4+25632*x2*x7^2*x8^4+23633*x4*x7^2*x8^4+25729*x3*x4*x7^2*x8^4+778*x2*x5*x7^2*x8^4+28569*x4*x5*x7^2*x8^4+36371*x1*x6*x7^2*x8^4+22655*x3*x6*x7^2*x8^4+763*x5*x6*x7^2*x8^4+37111*x5^2*x6*x7^2*x8^4+37383*x4*x6^2*x7^2*x8^4+21128*x2*x7^3*x8^4+9309*x4*x7^3*x8^4+5584*x4*x5*x7^3*x8^4+17568*x3*x6*x7^3*x8^4+19271*x5*x6*x7^3*x8^4+23560*x2*x7^4*x8^4+16070*x4*x7^4*x8^4+26079*x5*x6*x7^4*x8^4+16560*x4*x7^5*x8^4+446*x1*x8^5+28235*x2^2*x8^5+27098*x3*x8^5+19490*x1*x3*x8^5+18062*x3^2*x8^5+12815*x2*x4*x8^5+35196*x4^2*x8^5+4366*x5*x8^5+21881*x1*x5*x8^5+19027*x3*x5*x8^5+26519*x4^2*x5*x8^5+32394*x5^2*x8^5+38334*x3*x5^2*x8^5+11420*x5^3*x8^5+39801*x2*x6*x8^5+11352*x4*x6*x8^5+25519*x3*x4*x6*x8^5+7136*x2*x5*x6*x8^5+9593*x4*x5*x6*x8^5+17383*x1*x6^2*x8^5+6173*x3*x6^2*x8^5+37547*x5*x6^2*x8^5+12284*x5^2*x6^2*x8^5+6605*x4*x6^3*x8^5+18384*x1*x7*x8^5+36999*x3*x7*x8^5+20309*x3^2*x7*x8^5+10420*x2*x4*x7*x8^5+41902*x4^2*x7*x8^5+9619*x5*x7*x8^5+3852*x1*x5*x7*x8^5+39186*x3*x5*x7*x8^5+35402*x5^2*x7*x8^5+33951*x5^3*x7*x8^5+20235*x2*x6*x7*x8^5+35544*x4*x6*x7*x8^5+26148*x4*x5*x6*x7*x8^5+7000*x3*x6^2*x7*x8^5+33679*x5*x6^2*x7*x8^5+14062*x1*x7^2*x8^5+40010*x3*x7^2*x8^5+790*x4^2*x7^2*x8^5+23394*x5*x7^2*x8^5+23247*x3*x5*x7^2*x8^5+29716*x5^2*x7^2*x8^5+36198*x2*x6*x7^2*x8^5+27074*x4*x6*x7^2*x8^5+3445*x5*x6^2*x7^2*x8^5+35803*x1*x7^3*x8^5+6823*x3*x7^3*x8^5+34707*x5*x7^3*x8^5+28544*x5^2*x7^3*x8^5+36470*x4*x6*x7^3*x8^5+24663*x3*x7^4*x8^5+19120*x5*x7^4*x8^5+790*x5*x7^5*x8^5+41567*x2*x8^6+29198*x2*x3*x8^6+14915*x4*x8^6+19132*x1*x4*x8^6+12992*x3*x4*x8^6+856*x2*x5*x8^6+19773*x4*x5*x8^6+5107*x4*x5^2*x8^6+19239*x1*x6*x8^6+14598*x3*x6*x8^6+21490*x4^2*x6*x8^6+31107*x5*x6*x8^6+36198*x3*x5*x6*x8^6+6074*x5^2*x6*x8^6+2642*x2*x6^2*x8^6+16601*x4*x6^2*x8^6+32766*x5*x6^3*x8^6+36015*x2*x7*x8^6+5460*x4*x7*x8^6+4358*x3*x4*x7*x8^6+32807*x2*x5*x7*x8^6+30601*x4*x5*x7*x8^6+29021*x1*x6*x7*x8^6+16996*x3*x6*x7*x8^6+39882*x5*x6*x7*x8^6+40787*x5^2*x6*x7*x8^6+3350*x4*x6^2*x7*x8^6+395*x2*x7^2*x8^6+8001*x4*x7^2*x8^6+95*x4*x5*x7^2*x8^6+34441*x3*x6*x7^2*x8^6+39561*x5*x6*x7^2*x8^6+21844*x2*x7^3*x8^6+34795*x4*x7^3*x8^6+33284*x5*x6*x7^3*x8^6+37519*x4*x7^4*x8^6+12386*x1*x8^7+446*x3*x8^7+26593*x3^2*x8^7+16206*x2*x4*x8^7+10959*x4^2*x8^7+27098*x5*x8^7+31305*x1*x5*x8^7+15350*x3*x5*x8^7+29057*x5^2*x8^7+19667*x5^3*x8^7+7568*x2*x6*x8^7+15029*x4*x6*x8^7+9527*x4*x5*x6*x8^7+32803*x3*x6^2*x8^7+17844*x5*x6^2*x8^7+41264*x1*x7*x8^7+35625*x3*x7*x8^7+13955*x4^2*x7*x8^7+36107*x5*x7*x8^7+29659*x3*x5*x7*x8^7+25194*x5^2*x7*x8^7+38478*x2*x6*x7*x8^7+18198*x4*x6*x7*x8^7+9395*x5*x6^2*x7*x8^7+5675*x1*x7^2*x8^7+354*x3*x7^2*x8^7+40400*x5*x7^2*x8^7+22531*x5^2*x7^2*x8^7+5432*x4*x6*x7^2*x8^7+14494*x3*x7^3*x8^7+6864*x5*x7^3*x8^7+32013*x5*x7^4*x8^7+29627*x2*x8^8+41567*x4*x8^8+27449*x3*x4*x8^8+17383*x2*x5*x8^8+33766*x4*x5*x8^8+6889*x1*x6*x8^8+7638*x3*x6*x8^8+39370*x5*x6*x8^8+19420*x5^2*x6*x8^8+2321*x4*x6^2*x8^8+15955*x2*x7*x8^8+18774*x4*x7*x8^8+33914*x4*x5*x7*x8^8+35161*x3*x6*x7*x8^8+222*x5*x6*x7*x8^8+32840*x2*x7^2*x8^8+25704*x4*x7^2*x8^8+10593*x5*x6*x7^2*x8^8+36692*x4*x7^3*x8^8+15206*x1*x8^9+12386*x3*x8^9+29984*x4^2*x8^9+446*x5*x8^9+22988*x3*x5*x8^9+39301*x5^2*x8^9+21667*x2*x6*x8^9+19169*x4*x6*x8^9+18025*x5*x6^2*x8^9+25058*x1*x7*x8^9+10852*x3*x7*x8^9+10853*x5*x7*x8^9+27733*x5^2*x7*x8^9+2140*x4*x6*x7*x8^9+26128*x3*x7^2*x8^9+5457*x5*x7^2*x8^9+21206*x5*x7^3*x8^9+26807*x2*x8^10+29627*x4*x8^10+15634*x4*x5*x8^10+33803*x3*x6*x8^10+38050*x5*x6*x8^10+30412*x2*x7*x8^10+4354*x4*x7*x8^10+17671*x5*x6*x7*x8^10+27486*x4*x7^2*x8^10+13457*x1*x8^11+15206*x3*x8^11+12386*x5*x8^11+38408*x5^2*x8^11+36766*x4*x6*x8^11+40157*x3*x7*x8^11+22453*x5*x7*x8^11+16383*x5*x7^2*x8^11+28556*x2*x8^12+26807*x4*x8^12+18704*x5*x6*x8^12+15313*x4*x7*x8^12+13457*x3*x8^13+15206*x5*x8^13+13243*x5*x7*x8^13+28556*x4*x8^14+13457*x5*x8^15",
    "24457+8000*x1+2214*x1^2+5604*x2^2+5845*x3+8280*x1*x3+35445*x3^2+36766*x3^3+28877*x2*x4+20597*x2*x3*x4+28633*x4^2+41371*x1*x4^2+34803*x3*x4^2+16401*x5+31805*x1*x5+41371*x2^2*x5+35365*x3*x5+8782*x1*x3*x5+28235*x3^2*x5+9852*x2*x4*x5+15920*x4^2*x5+27309*x5^2+13992*x1*x5^2+6568*x3*x5^2+37729*x4^2*x5^2+34624*x5^3+34124*x3*x5^3+33910*x5^4+11675*x2*x6+38980*x1*x2*x6+6996*x2*x3*x6+38900*x4*x6+38264*x1*x4*x6+31840*x3*x4*x6+34124*x4^3*x6+3642*x2*x5*x6+2284*x4*x5*x6+6494*x3*x4*x5*x6+15062*x2*x5^2*x6+13383*x4*x5^2*x6+23531*x6^2+2*x1*x6^2+33732*x3*x6^2+7531*x3^2*x6^2+41976*x2*x4*x6^2+19988*x4^2*x6^2+1184*x5*x6^2+38692*x1*x5*x6^2+17667*x3*x5*x6^2+19738*x5^2*x6^2+9210*x5^3*x6^2+30626*x2*x6^3+17811*x4*x6^3+38552*x4*x5*x6^3+28431*x6^4+19704*x3*x6^4+2000*x5*x6^4+25272*x6^6+40760*x7+22943*x1*x7+11387*x1^2*x7+27128*x2^2*x7+40717*x3*x7+9173*x1*x3*x7+23416*x3^2*x7+72*x2*x4*x7+34178*x4^2*x7+17918*x3*x4^2*x7+12577*x5*x7+30914*x1*x5*x7+35624*x3*x5*x7+7852*x3^2*x5*x7+37585*x2*x4*x5*x7+37371*x4^2*x5*x7+28056*x5^2*x7+9601*x1*x5^2*x7+8494*x3*x5^2*x7+24272*x5^3*x7+33268*x5^4*x7+26201*x2*x6*x7+39334*x2*x3*x6*x7+5606*x4*x6*x7+41083*x1*x4*x6*x7+38441*x3*x4*x6*x7+31910*x2*x5*x6*x7+24198*x4*x5*x6*x7+24383*x4*x5^2*x6*x7+41253*x6^2*x7+29556*x1*x6^2*x7+12099*x3*x6^2*x7+34840*x4^2*x6^2*x7+10815*x5*x6^2*x7+30951*x3*x5*x6^2*x7+10642*x5^2*x6^2*x7+13601*x2*x6^3*x7+36519*x4*x6^3*x7+7390*x6^4*x7+20095*x5*x6^4*x7+39229*x1*x7^2+32268*x2^2*x7^2+19070*x3*x7^2+17490*x1*x3*x7^2+30626*x3^2*x7^2+535*x2*x4*x7^2+36337*x4^2*x7^2+1296*x5*x7^2+33482*x1*x5*x7^2+40013*x3*x5*x7^2+8568*x4^2*x5*x7^2+12957*x5^2*x7^2+23667*x3*x5^2*x7^2+5284*x5^3*x7^2+2747*x2*x6*x7^2+2605*x4*x6*x7^2+35519*x3*x4*x6*x7^2+11889*x2*x5*x6*x7^2+20531*x4*x5*x6*x7^2+7774*x6^2*x7^2+3321*x1*x6^2*x7^2+26988*x3*x6^2*x7^2+41982*x5*x6^2*x7^2+18951*x5^2*x6^2*x7^2+24449*x4*x6^3*x7^2+27519*x6^4*x7^2+3712*x1*x7^3+2784*x3*x7^3+13136*x3^2*x7^3+31305*x2*x4*x7^3+14350*x4^2*x7^3+22943*x5*x7^3+4391*x1*x5*x7^3+22132*x3*x5*x7^3+20597*x5^2*x7^3+15741*x5^3*x7^3+39408*x2*x6*x7^3+8533*x4*x6*x7^3+12169*x4*x5*x6*x7^3+5230*x6^2*x7^3+28840*x3*x6^2*x7^3+9918*x5*x6^2*x7^3+32626*x6^4*x7^3+21667*x1*x7^4+38301*x3*x7^4+20453*x4^2*x7^4+39229*x5*x7^4+35873*x3*x5*x7^4+31268*x5^2*x7^4+20774*x2*x6*x7^4+15383*x4*x6*x7^4+39156*x6^2*x7^4+23025*x5*x6^2*x7^4+21881*x1*x7^5+20346*x3*x7^5+3712*x5*x7^5+35017*x5^2*x7^5+33054*x4*x6*x7^5+12280*x6^2*x7^5+20132*x3*x7^6+21667*x5*x7^6+30519*x6^2*x7^6+21881*x5*x7^7+4366*x2*x8+14848*x1*x2*x8+38765*x2*x3*x8+3616*x4*x8+36946*x1*x4*x8+625*x3*x4*x8+11243*x3^2*x4*x8+1177*x2*x4^2*x8+32482*x4^3*x8+9906*x2*x5*x8+24235*x2*x3*x5*x8+10183*x4*x5*x8+25984*x1*x4*x5*x8+11099*x3*x4*x5*x8+2284*x2*x5^2*x8+10065*x4*x5^2*x8+18741*x4*x5^3*x8+16283*x6*x8+30287*x1*x6*x8+2926*x2^2*x6*x8+23591*x3*x6*x8+27733*x1*x3*x6*x8+29412*x3^2*x6*x8+26021*x2*x4*x6*x8+33374*x4^2*x6*x8+3916*x5*x6*x8+31770*x1*x5*x6*x8+20130*x3*x5*x6*x8+17494*x4^2*x5*x6*x8+3730*x5^2*x6*x8+20778*x3*x5^2*x6*x8+18029*x5^3*x6*x8+19559*x2*x6^2*x8+41138*x4*x6^2*x8+24062*x3*x4*x6^2*x8+30630*x2*x5*x6^2*x8+16321*x4*x5*x6^2*x8+34900*x6^3*x8+28593*x1*x6^3*x8+29165*x3*x6^3*x8+36948*x5*x6^3*x8+26840*x5^2*x6^3*x8+35301*x4*x6^4*x8+21309*x6^5*x8+33985*x2*x7*x8+9815*x1*x2*x7*x8+27128*x2*x3*x7*x8+38943*x4*x7*x8+37873*x1*x4*x7*x8+25949*x3*x4*x7*x8+2321*x4^3*x7*x8+12134*x2*x5*x7*x8+37800*x4*x5*x7*x8+32309*x3*x4*x5*x7*x8+13531*x2*x5^2*x7*x8+19531*x4*x5^2*x7*x8+25820*x6*x7*x8+15772*x1*x6*x7*x8+14633*x3*x6*x7*x8+13531*x3^2*x6*x7*x8+3432*x2*x4*x6*x7*x8+8358*x4^2*x6*x7*x8+21942*x5*x6*x7*x8+16568*x1*x5*x6*x7*x8+21926*x3*x5*x6*x7*x8+6040*x5^2*x6*x7*x8+38832*x5^3*x6*x7*x8+30593*x2*x6^2*x7*x8+20139*x4*x6^2*x7*x8+19334*x4*x5*x6^2*x7*x8+29789*x6^3*x7*x8+25696*x3*x6^3*x7*x8+22367*x5*x6^3*x7*x8+32091*x6^5*x7*x8+6014*x2*x7^2*x8+11531*x2*x3*x7^2*x8+30971*x4*x7^2*x8+41729*x1*x4*x7^2*x8+5000*x3*x4*x7^2*x8+41408*x2*x5*x7^2*x8+15639*x4*x5*x7^2*x8+35976*x4*x5^2*x7^2*x8+1774*x6*x7^2*x8+15639*x3*x6*x7^2*x8+17593*x4^2*x6*x7^2*x8+24508*x5*x6*x7^2*x8+40433*x3*x5*x6*x7^2*x8+31754*x5^2*x6*x7^2*x8+28087*x2*x6^2*x7^2*x8+12087*x4*x6^2*x7^2*x8+32439*x6^3*x7^2*x8+21498*x5*x6^3*x7^2*x8+18491*x2*x7^3*x8+33215*x4*x7^3*x8+7387*x3*x4*x7^3*x8+9136*x2*x5*x7^3*x8+23910*x4*x5*x7^3*x8+30112*x6*x7^3*x8+12634*x1*x6*x7^3*x8+29622*x3*x6*x7^3*x8+32437*x5*x6*x7^3*x8+41556*x5^2*x6*x7^3*x8+16177*x4*x6^2*x7^3*x8+5292*x6^3*x7^3*x8+12564*x2*x7^4*x8+27234*x4*x7^4*x8+5642*x4*x5*x7^4*x8+11582*x6*x7^4*x8+13959*x3*x6*x7^4*x8+22782*x5*x6*x7^4*x8+4173*x6^3*x7^4*x8+3177*x2*x7^5*x8+9103*x4*x7^5*x8+11067*x6*x7^5*x8+3210*x5*x6*x7^5*x8+18704*x4*x7^6*x8+11243*x6*x7^6*x8+1428*x6*x7^7*x8+14915*x1*x8^2+35659*x1^2*x8^2+24951*x2^2*x8^2+37647*x3*x8^2+10959*x1*x3*x8^2+39657*x3^2*x8^2+35*x2*x4*x8^2+5943*x4^2*x8^2+13494*x3*x4^2*x8^2+38397*x5*x8^2+11206*x1*x5*x8^2+2605*x3*x5*x8^2+28593*x3^2*x5*x8^2+3358*x2*x4*x5*x8^2+3679*x4^2*x5*x8^2+3197*x5^2*x8^2+4963*x1*x5^2*x8^2+25988*x3*x5^2*x8^2+16028*x5^3*x8^2+27556*x5^4*x8^2+12028*x2*x6*x8^2+21741*x2*x3*x6*x8^2+14887*x4*x6*x8^2+40124*x1*x4*x6*x8^2+40803*x3*x4*x6*x8^2+29593*x2*x5*x6*x8^2+26241*x4*x5*x6*x8^2+30013*x4*x5^2*x6*x8^2+10788*x6^2*x8^2+36408*x1*x6^2*x8^2+34127*x3*x6^2*x8^2+32729*x4^2*x6^2*x8^2+13298*x5*x6^2*x8^2+16877*x3*x5*x6^2*x8^2+15482*x5^2*x6^2*x8^2+13062*x2*x6^3*x8^2+7490*x4*x6^3*x8^2+27340*x6^4*x8^2+12889*x5*x6^4*x8^2+3676*x1*x7*x8^2+14136*x2^2*x7*x8^2+35126*x3*x7*x8^2+1358*x1*x3*x7*x8^2+3963*x3^2*x7*x8^2+22025*x2*x4*x7*x8^2+37874*x4^2*x7*x8^2+7436*x5*x7*x8^2+7210*x1*x5*x7*x8^2+5679*x3*x5*x7*x8^2+14309*x4^2*x5*x7*x8^2+8818*x5^2*x7*x8^2+37939*x3*x5^2*x7*x8^2+39260*x5^3*x7*x8^2+33451*x2*x6*x7*x8^2+3537*x4*x6*x7*x8^2+39112*x3*x4*x6*x7*x8^2+7593*x2*x5*x6*x7*x8^2+28174*x4*x5*x6*x7*x8^2+8958*x6^2*x7*x8^2+35297*x1*x6^2*x7*x8^2+31223*x3*x6^2*x7*x8^2+1087*x5*x6^2*x7*x8^2+23395*x5^2*x6^2*x7*x8^2+12539*x4*x6^3*x7*x8^2+13823*x6^4*x7*x8^2+35732*x1*x7^2*x8^2+32323*x3*x7^2*x8^2+35408*x3^2*x7^2*x8^2+40618*x2*x4*x7^2*x8^2+16309*x4^2*x7^2*x8^2+17929*x5*x7^2*x8^2+34050*x1*x5*x7^2*x8^2+30013*x3*x5*x7^2*x8^2+2778*x5^2*x7^2*x8^2+37519*x5^3*x7^2*x8^2+10383*x2*x6*x7^2*x8^2+33470*x4*x6*x7^2*x8^2+22938*x4*x5*x6*x7^2*x8^2+41294*x6^2*x7^2*x8^2+19358*x3*x6^2*x7^2*x8^2+18814*x5*x6^2*x7^2*x8^2+25408*x6^4*x7^2*x8^2+14848*x1*x7^3*x8^2+29803*x3*x7^3*x8^2+39231*x4^2*x7^3*x8^2+18488*x5*x7^3*x8^2+2753*x3*x5*x7^3*x8^2+6790*x5^2*x7^3*x8^2+27704*x2*x6*x7^3*x8^2+22967*x4*x6*x7^3*x8^2+28035*x6^2*x7^3*x8^2+8618*x5*x6^2*x7^3*x8^2+7996*x1*x7^4*x8^2+14601*x3*x7^4*x8^2+26989*x5*x7^4*x8^2+12383*x5^2*x7^4*x8^2+33297*x4*x6*x7^4*x8^2+8803*x6^2*x7^4*x8^2+30840*x3*x7^5*x8^2+18309*x5*x7^5*x8^2+9642*x6^2*x7^5*x8^2+34482*x5*x7^6*x8^2+27098*x2*x8^3+6033*x1*x2*x8^3+8317*x2*x3*x8^3+4366*x4*x8^3+23951*x1*x4*x8^3+7925*x3*x4*x8^3+22523*x4^3*x8^3+35839*x2*x5*x8^3+26897*x4*x5*x8^3+10848*x3*x4*x5*x8^3+7173*x2*x5^2*x8^3+33371*x4*x5^2*x8^3+3616*x6*x8^3+34020*x1*x6*x8^3+17474*x3*x6*x8^3+7173*x3^2*x6*x8^3+16095*x2*x4*x6*x8^3+12811*x4^2*x6*x8^3+10549*x5*x6*x8^3+21342*x1*x5*x6*x8^3+36153*x3*x5*x6*x8^3+24303*x5^2*x6*x8^3+12568*x5^3*x6*x8^3+11992*x2*x6^2*x8^3+28908*x4*x6^2*x8^3+20642*x4*x5*x6^2*x8^3+32374*x6^3*x8^3+37519*x3*x6^3*x8^3+36206*x5*x6^3*x8^3+35087*x6^5*x8^3+37891*x2*x7*x8^3+10885*x2*x3*x7*x8^3+21802*x4*x7*x8^3+12634*x1*x4*x7*x8^3+17844*x3*x4*x7*x8^3+11313*x2*x5*x7*x8^3+21589*x4*x5*x7*x8^3+41128*x4*x5^2*x7*x8^3+30211*x6*x7*x8^3+38515*x1*x6*x7*x8^3+21589*x3*x6*x7*x8^3+15749*x4^2*x6*x7*x8^3+8204*x5*x6*x7*x8^3+22753*x3*x5*x6*x7*x8^3+37218*x5^2*x6*x7*x8^3+40272*x2*x6^2*x7*x8^3+13979*x4*x6^2*x7*x8^3+29426*x6^3*x7*x8^3+23540*x5*x6^3*x7*x8^3+5138*x2*x7^2*x8^3+13812*x4*x7^2*x8^3+27918*x3*x4*x7^2*x8^3+2539*x2*x5*x7^2*x8^3+32996*x4*x5*x7^2*x8^3+2282*x6*x7^2*x8^3+35807*x1*x6*x7^2*x8^3+18716*x3*x6*x7^2*x8^3+22870*x5*x6*x7^2*x8^3+34211*x5^2*x6*x7^2*x8^3+26322*x4*x6^2*x7^2*x8^3+34026*x6^3*x7^2*x8^3+22597*x2*x7^3*x8^3+7072*x4*x7^3*x8^3+10700*x4*x5*x7^3*x8^3+9713*x6*x7^3*x8^3+19445*x3*x6*x7^3*x8^3+17421*x5*x6*x7^3*x8^3+6333*x6^3*x7^3*x8^3+9280*x2*x7^4*x8^3+4815*x4*x7^4*x8^3+7952*x6*x7^4*x8^3+7082*x5*x6*x7^4*x8^3+1893*x4*x7^5*x8^3+18889*x6*x7^5*x8^3+5638*x6*x7^6*x8^3+41567*x1*x8^4+321*x2^2*x8^4+14915*x3*x8^4+37622*x1*x3*x8^4+8745*x3^2*x8^4+40799*x2*x4*x8^4+36444*x4^2*x8^4+37647*x5*x8^4+31733*x1*x5*x8^4+40227*x3*x5*x8^4+22811*x4^2*x5*x8^4+9173*x5^2*x8^4+5963*x3*x5^2*x8^4+14494*x5^3*x8^4+2961*x2*x6*x8^4+37050*x4*x6*x8^4+20243*x3*x4*x6*x8^4+36877*x2*x5*x6*x8^4+12325*x4*x5*x6*x8^4+28267*x6^2*x8^4+14066*x1*x6^2*x8^4+20029*x3*x6^2*x8^4+6148*x5*x6^2*x8^4+34260*x5^2*x6^2*x8^4+31371*x4*x6^3*x8^4+22412*x6^4*x8^4+11243*x1*x7*x8^4+4568*x3*x7*x8^4+15350*x3^2*x7*x8^4+13852*x2*x4*x7*x8^4+13103*x4^2*x7*x8^4+5296*x5*x7*x8^4+5321*x1*x5*x7*x8^4+35379*x3*x5*x7*x8^4+18424*x5^2*x7*x8^4+37976*x5^3*x7*x8^4+37733*x2*x6*x7*x8^4+41595*x4*x6*x7*x8^4+9902*x4*x5*x6*x7*x8^4+3057*x6^2*x7*x8^4+39075*x3*x6^2*x7*x8^4+14026*x5*x6^2*x7*x8^4+32276*x6^4*x7*x8^4+40301*x1*x7^2*x8^4+25632*x3*x7^2*x8^4+37655*x4^2*x7^2*x8^4+23633*x5*x7^2*x8^4+41828*x3*x5*x7^2*x8^4+14766*x5^2*x7^2*x8^4+25408*x2*x6*x7^2*x8^4+36458*x4*x6*x7^2*x8^4+763*x6^2*x7^2*x8^4+32481*x5*x6^2*x7^2*x8^4+9173*x1*x7^3*x8^4+21128*x3*x7^3*x8^4+9309*x5*x7^3*x8^4+33025*x5^2*x7^3*x8^4+32140*x4*x6*x7^3*x8^4+19271*x6^2*x7^3*x8^4+23560*x3*x7^4*x8^4+16070*x5*x7^4*x8^4+26079*x6^2*x7^4*x8^4+16560*x5*x7^5*x8^4+446*x2*x8^5+39729*x2*x3*x8^5+27098*x4*x8^5+7782*x1*x4*x8^5+17420*x3*x4*x8^5+29556*x2*x5*x8^5+4999*x4*x5*x8^5+24556*x4*x5^2*x8^5+4366*x6*x8^5+1749*x1*x6*x8^5+4999*x3*x6*x8^5+36371*x4^2*x6*x8^5+1733*x5*x6*x8^5+12346*x3*x5*x6*x8^5+29013*x5^2*x6*x8^5+41618*x2*x6^2*x8^5+40186*x4*x6^2*x8^5+37547*x6^3*x8^5+18889*x5*x6^3*x8^5+18384*x2*x7*x8^5+36999*x4*x7*x8^5+26840*x3*x4*x7*x8^5+8457*x2*x5*x7*x8^5+25371*x4*x5*x7*x8^5+9619*x6*x7*x8^5+13704*x1*x6*x7*x8^5+33939*x3*x6*x7*x8^5+28933*x5*x6*x7*x8^5+32889*x5^2*x6*x7*x8^5+34210*x4*x6^2*x7*x8^5+33679*x6^3*x7*x8^5+14062*x2*x7^2*x8^5+40010*x4*x7^2*x8^5+29457*x4*x5*x7^2*x8^5+23394*x6*x7^2*x8^5+30778*x3*x6*x7^2*x8^5+14777*x5*x6*x7^2*x8^5+3445*x6^3*x7^2*x8^5+35803*x2*x7^3*x8^5+6823*x4*x7^3*x8^5+34707*x6*x7^3*x8^5+23001*x5*x6*x7^3*x8^5+24663*x4*x7^4*x8^5+19120*x6*x7^4*x8^5+790*x6*x7^5*x8^5+29627*x1*x8^6+41567*x3*x8^6+1963*x3^2*x8^6+40906*x2*x4*x8^6+15848*x4^2*x8^6+14915*x5*x8^6+25807*x1*x5*x8^6+38264*x3*x5*x8^6+570*x5^2*x8^6+14136*x5^3*x8^6+20988*x2*x6*x8^6+33801*x4*x6*x8^6+29239*x4*x5*x6*x8^6+31107*x6^2*x8^6+22062*x3*x6^2*x8^6+22675*x5*x6^2*x8^6+32766*x6^4*x8^6+27556*x1*x7*x8^6+36015*x3*x7*x8^6+3214*x4^2*x7*x8^6+5460*x5*x7*x8^6+41659*x3*x5*x7*x8^6+31881*x5^2*x7*x8^6+21313*x2*x6*x7*x8^6+15716*x4*x6*x7*x8^6+39882*x6^2*x7*x8^6+2124*x5*x6^2*x7*x8^6+26379*x1*x7^2*x8^6+395*x3*x7^2*x8^6+8001*x5*x7^2*x8^6+30478*x5^2*x7^2*x8^6+4058*x4*x6*x7^2*x8^6+39561*x6^2*x7^2*x8^6+21844*x3*x7^3*x8^6+34795*x5*x7^3*x8^6+33284*x6^2*x7^3*x8^6+37519*x5*x7^4*x8^6+12386*x2*x8^7+446*x4*x8^7+41478*x3*x4*x8^7+9531*x2*x5*x8^7+38659*x4*x5*x8^7+27098*x6*x8^7+29663*x1*x6*x8^7+37231*x3*x6*x8^7+2073*x5*x6*x8^7+30124*x5^2*x6*x8^7+31873*x4*x6^2*x8^7+17844*x6^3*x8^7+41264*x2*x7*x8^7+35625*x4*x7*x8^7+39297*x4*x5*x7*x8^7+36107*x6*x7*x8^7+782*x3*x6*x7*x8^7+1379*x5*x6*x7*x8^7+9395*x6^3*x7*x8^7+5675*x2*x7^2*x8^7+354*x4*x7^2*x8^7+40400*x6*x7^2*x8^7+27963*x5*x6*x7^2*x8^7+14494*x4*x7^3*x8^7+6864*x6*x7^3*x8^7+32013*x6*x7^4*x8^7+26807*x1*x8^8+29627*x3*x8^8+40585*x4^2*x8^8+41567*x5*x8^8+34124*x3*x5*x8^8+29519*x5^2*x8^8+19025*x2*x6*x8^8+11885*x4*x6*x8^8+39370*x6^2*x8^8+21741*x5*x6^2*x8^8+3498*x1*x7*x8^8+15955*x3*x7*x8^8+18774*x5*x7*x8^8+7926*x5^2*x7*x8^8+19136*x4*x6*x7*x8^8+222*x6^2*x7*x8^8+32840*x3*x7^2*x8^8+25704*x5*x7^2*x8^8+10593*x6^2*x7^2*x8^8+36692*x5*x7^3*x8^8+15206*x2*x8^9+12386*x4*x8^9+11280*x4*x5*x8^9+446*x6*x8^9+21346*x3*x6*x8^9+16457*x5*x6*x8^9+18025*x6^3*x8^9+25058*x2*x7*x8^9+10852*x4*x7*x8^9+10853*x6*x7*x8^9+29873*x5*x6*x7*x8^9+26128*x4*x7^2*x8^9+5457*x6*x7^2*x8^9+21206*x6*x7^3*x8^9+28556*x1*x8^10+26807*x3*x8^10+29627*x5*x8^10+32161*x5^2*x8^10+17276*x4*x6*x8^10+38050*x6^2*x8^10+30412*x3*x7*x8^10+4354*x5*x7*x8^10+17671*x6^2*x7*x8^10+27486*x5*x7^2*x8^10+13457*x2*x8^11+15206*x4*x8^11+12386*x6*x8^11+33161*x5*x6*x8^11+40157*x4*x7*x8^11+22453*x6*x7*x8^11+16383*x6*x7^2*x8^11+28556*x3*x8^12+26807*x5*x8^12+18704*x6^2*x8^12+15313*x5*x7*x8^12+13457*x4*x8^13+15206*x6*x8^13+13243*x6*x7*x8^13+28556*x5*x8^14+13457*x6*x8^15",
    "1817*x2+38766*x1*x2+20489*x2*x3+33876*x4+22308*x1*x4+40496*x3*x4+14564*x3^2*x4+19597*x2*x4^2+33375*x4^3+31215*x2*x5+7247*x2*x3*x5+19647*x4*x5+27379*x1*x4*x5+19062*x3*x4*x5+21667*x2*x5^2+34553*x4*x5^2+3819*x4*x5^3+13600*x6+10834*x1*x6+39729*x2^2*x6+6239*x3*x6+5498*x1*x3*x6+8103*x3^2*x6+11601*x2*x4*x6+1892*x4^2*x6+29365*x5*x6+29733*x1*x5*x6+27093*x3*x5*x6+38371*x4^2*x5*x6+40817*x5^2*x6+23272*x3*x5^2*x6+29733*x5^3*x6+29806*x2*x6^2+22113*x4*x6^2+8173*x3*x4*x6^2+19988*x2*x5*x6^2+31766*x4*x5*x6^2+38112*x6^3+535*x1*x6^3+26021*x3*x6^3+41191*x5*x6^3+5926*x5^2*x6^3+7996*x4*x6^4+29984*x6^5+30717*x2*x7+3749*x1*x2*x7+32375*x2*x3*x7+35548*x4*x7+21630*x1*x4*x7+31019*x3*x4*x7+30733*x4^3*x7+2821*x2*x5*x7+11565*x4*x5*x7+28161*x3*x4*x5*x7+4889*x2*x5^2*x7+38334*x4*x5^2*x7+36108*x6*x7+41196*x1*x6*x7+34732*x3*x6*x7+4889*x3^2*x6*x7+21593*x2*x4*x6*x7+22914*x4^2*x6*x7+6297*x5*x6*x7+15025*x1*x5*x6*x7+1210*x3*x5*x6*x7+19701*x5^2*x6*x7+31984*x5^3*x6*x7+32803*x2*x6^2*x7+33658*x4*x6^2*x7+30309*x4*x5*x6^2*x7+4051*x6^3*x7+8354*x3*x6^3*x7+16745*x5*x6^3*x7+22202*x6^5*x7+12619*x2*x7^2+28519*x2*x3*x7^2+9507*x4*x7^2+40334*x1*x4*x7^2+33766*x3*x4*x7^2+39371*x2*x5*x7^2+13812*x4*x5*x7^2+24346*x4*x5^2*x7^2+536*x6*x7^2+38766*x1*x6*x7^2+13812*x3*x6*x7^2+12531*x4^2*x6*x7^2+40138*x5*x6*x7^2+1432*x3*x5*x6*x7^2+32988*x5^2*x6*x7^2+7284*x2*x6^2*x7^2+21815*x4*x6^2*x7^2+7356*x6^3*x7^2+3638*x5*x6^3*x7^2+16740*x2*x7^3+13403*x4*x7^3+26737*x3*x4*x7^3+24988*x2*x5*x7^3+5786*x4*x5*x7^3+30717*x6*x7^3+21490*x1*x6*x7^3+74*x3*x6*x7^3+27169*x5*x6*x7^3+37334*x5^2*x6*x7^3+29017*x4*x6^2*x7^3+29659*x6^3*x7^3+8103*x2*x7^4+40265*x4*x7^4+10350*x4*x5*x7^4+2446*x6*x7^4+2033*x3*x6*x7^4+6420*x5*x6*x7^4+23560*x6^3*x7^4+13885*x2*x7^5+26342*x4*x7^5+855*x6*x7^5+16457*x5*x6*x7^5+19811*x4*x7^6+33947*x6*x7^6+10387*x6*x7^7+8448*x8+27098*x1*x8+19811*x1^2*x8+32268*x2^2*x8+4366*x3*x8+19453*x1*x3*x8+14742*x3^2*x8+24737*x2*x4*x8+36516*x4^2*x8+34659*x3*x4^2*x8+3616*x5*x8+13566*x1*x5*x8+40300*x3*x5*x8+24593*x3^2*x5*x8+29054*x2*x4*x5*x8+21951*x4^2*x5*x8+23901*x5^2*x8+26342*x1*x5^2*x8+35087*x3*x5^2*x8+32946*x5^3*x8+41692*x5^4*x8+30877*x2*x6*x8+30803*x2*x3*x6*x8+39309*x4*x6*x8+32552*x1*x4*x6*x8+7601*x3*x4*x6*x8+1070*x2*x5*x6*x8+34229*x4*x5*x6*x8+41445*x4*x5^2*x6*x8+35591*x6^2*x8+14136*x1*x6^2*x8+38121*x3*x6^2*x8+1358*x4^2*x6^2*x8+3801*x5*x6^2*x8+6000*x3*x5*x6^2*x8+41482*x5^2*x6^2*x8+5284*x2*x6^3*x8+15066*x4*x6^3*x8+40729*x6^4*x8+19988*x5*x6^4*x8+16283*x7*x8+13921*x1*x7*x8+38157*x2^2*x7*x8+4549*x3*x7*x8+14169*x1*x3*x7*x8+4033*x3^2*x7*x8+17276*x2*x4*x7*x8+34195*x4^2*x7*x8+7268*x5*x7*x8+23025*x1*x5*x7*x8+21772*x3*x5*x7*x8+6000*x4^2*x5*x7*x8+36462*x5^2*x7*x8+9284*x3*x5^2*x7*x8+35091*x5^3*x7*x8+40760*x2*x6*x7*x8+21701*x4*x6*x7*x8+25136*x3*x4*x6*x7*x8+38272*x2*x5*x6*x7*x8+8975*x4*x5*x6*x7*x8+16745*x6^2*x7*x8+32272*x1*x6^2*x7*x8+12642*x3*x6^2*x7*x8+2117*x5*x6^2*x7*x8+41149*x5^2*x6^2*x7*x8+2922*x4*x6^3*x7*x8+13774*x6^4*x7*x8+25820*x7^2*x8+38796*x1*x7^2*x8+41351*x3*x7^2*x8+11210*x3^2*x7^2*x8+25704*x2*x4*x7^2*x8+26025*x4^2*x7^2*x8+29055*x5*x7^2*x8+35556*x1*x5*x7^2*x8+34951*x3*x5*x7^2*x8+9821*x5^2*x7^2*x8+1461*x5^3*x7^2*x8+22383*x2*x6*x7^2*x8+19784*x4*x6*x7^2*x8+19260*x4*x5*x6*x7^2*x8+10480*x6^2*x7^2*x8+20124*x3*x6^2*x7^2*x8+9149*x5*x6^2*x7^2*x8+4144*x6^4*x7^2*x8+1774*x7^3*x8+1498*x1*x7^3*x8+40445*x3*x7^3*x8+6708*x4^2*x7^3*x8+35019*x5*x7^3*x8+16914*x3*x5*x7^3*x8+6560*x5^2*x7^3*x8+27408*x2*x6*x7^3*x8+14906*x4*x6*x7^3*x8+13694*x6^2*x7^3*x8+16148*x5*x6^2*x7^3*x8+30112*x7^4*x8+32231*x1*x7^4*x8+25198*x3*x7^4*x8+36403*x5*x7^4*x8+3930*x5^2*x7^4*x8+7646*x4*x6*x7^4*x8+8366*x6^2*x7^4*x8+11582*x7^5*x8+18206*x3*x7^5*x8+28811*x5*x7^5*x8+10704*x6^2*x7^5*x8+11067*x7^6*x8+15383*x5*x7^6*x8+11243*x7^7*x8+1428*x7^8*x8+14915*x2*x8^2+9066*x1*x2*x8^2+3284*x2*x3*x8^2+37647*x4*x8^2+29663*x1*x4*x8^2+9316*x3*x4*x8^2+34803*x4^3*x8^2+23415*x2*x5*x8^2+14224*x4*x5*x8^2+28951*x3*x4*x5*x8^2+23667*x2*x5^2*x8^2+11889*x4*x5^2*x8^2+38397*x6*x8^2+25234*x1*x6*x8^2+23647*x3*x6*x8^2+23667*x3^2*x6*x8^2+35519*x2*x4*x6*x8^2+27309*x4^2*x6*x8^2+19281*x5*x6*x8^2+74*x1*x5*x6*x8^2+15210*x3*x5*x6*x8^2+6000*x5^2*x6*x8^2+36050*x5^3*x6*x8^2+17420*x2*x6^2*x8^2+34056*x4*x6^2*x8^2+17556*x4*x5*x6^2*x8^2+39408*x6^3*x8^2+29482*x3*x6^3*x8^2+33083*x5*x6^3*x8^2+16099*x6^5*x8^2+28394*x2*x7*x8^2+74*x2*x3*x7*x8^2+33929*x4*x7*x8^2+18457*x1*x4*x7*x8^2+32914*x3*x4*x7*x8^2+21704*x2*x5*x7*x8^2+23778*x4*x5*x7*x8^2+10988*x4*x5^2*x7*x8^2+18224*x6*x7*x8^2+22914*x1*x6*x7*x8^2+23778*x3*x6*x7*x8^2+4420*x4^2*x6*x7*x8^2+12426*x5*x6*x7*x8^2+37717*x3*x5*x6*x7*x8^2+12618*x5^2*x6*x7*x8^2+20161*x2*x6^2*x7*x8^2+4124*x4*x6^2*x7*x8^2+27797*x6^3*x7*x8^2+19144*x5*x6^3*x7*x8^2+17494*x2*x7^2*x8^2+6142*x4*x7^2*x8^2+26729*x3*x4*x7^2*x8^2+13593*x2*x5*x7^2*x8^2+1519*x4*x5*x7^2*x8^2+26887*x6*x7^2*x8^2+29334*x1*x6*x7^2*x8^2+27223*x3*x6*x7^2*x8^2+6328*x5*x6*x7^2*x8^2+36605*x5^2*x6*x7^2*x8^2+2481*x4*x6^2*x7^2*x8^2+14835*x6^3*x7^2*x8^2+30589*x2*x7^3*x8^2+18340*x4*x7^3*x8^2+34922*x4*x5*x7^3*x8^2+17769*x6*x7^3*x8^2+17432*x3*x6*x7^3*x8^2+40127*x5*x6*x7^3*x8^2+33112*x6^3*x7^3*x8^2+37626*x2*x7^4*x8^2+22033*x4*x7^4*x8^2+13011*x6*x7^4*x8^2+8297*x5*x6*x7^4*x8^2+27124*x4*x7^5*x8^2+27112*x6*x7^5*x8^2+2111*x6*x7^6*x8^2+446*x1*x8^3+13136*x2^2*x8^3+27098*x3*x8^3+31305*x1*x3*x8^3+6461*x3^2*x8^3+31626*x2*x4*x8^3+17955*x4^2*x8^3+4366*x5*x8^3+40692*x1*x5*x8^3+26558*x3*x5*x8^3+10243*x4^2*x5*x8^3+33286*x5^2*x8^3+32124*x3*x5^2*x8^3+16811*x5^3*x8^3+21811*x2*x6*x8^3+5855*x4*x6*x8^3+23984*x3*x4*x6*x8^3+27482*x2*x5*x6*x8^3+17733*x4*x5*x6*x8^3+40844*x6^2*x8^3+17239*x1*x6^2*x8^3+35585*x3*x6^2*x8^3+38402*x5*x6^2*x8^3+36235*x5^2*x6^2*x8^3+4465*x4*x6^3*x8^3+21741*x6^4*x8^3+3616*x7*x8^3+12603*x1*x7*x8^3+1108*x3*x7*x8^3+35622*x3^2*x7*x8^3+30980*x2*x4*x7*x8^3+4066*x4^2*x7*x8^3+33520*x5*x7*x8^3+36227*x1*x5*x7*x8^3+18663*x3*x5*x7*x8^3+25945*x5^2*x7*x8^3+4465*x5^3*x7*x8^3+6494*x2*x6*x7*x8^3+19087*x4*x6*x7*x8^3+34679*x4*x5*x6*x7*x8^3+36547*x6^2*x7*x8^3+4222*x3*x6^2*x7*x8^3+27160*x5*x6^2*x7*x8^3+23589*x6^4*x7*x8^3+30211*x7^2*x8^3+25202*x1*x7^2*x8^3+18093*x3*x7^2*x8^3+2111*x4^2*x7^2*x8^3+17843*x5*x7^2*x8^3+29173*x3*x5*x7^2*x8^3+22753*x5^2*x7^2*x8^3+20000*x2*x6*x7^2*x8^3+31654*x4*x6*x7^2*x8^3+12734*x6^2*x7^2*x8^3+41730*x5*x6^2*x7^2*x8^3+2282*x7^3*x8^3+20243*x1*x7^3*x8^3+16391*x3*x7^3*x8^3+4621*x5*x7^3*x8^3+22655*x5^2*x7^3*x8^3+20787*x4*x6*x7^3*x8^3+12985*x6^2*x7^3*x8^3+9713*x7^4*x8^3+7811*x3*x7^4*x8^3+1264*x5*x7^4*x8^3+23152*x6^2*x7^4*x8^3+7952*x7^5*x8^3+34169*x5*x7^5*x8^3+18889*x7^6*x8^3+5638*x7^7*x8^3+41567*x2*x8^4+17383*x2*x3*x8^4+14915*x4*x8^4+7317*x1*x4*x8^4+36194*x3*x4*x8^4+24058*x2*x5*x8^4+12242*x4*x5*x8^4+31449*x4*x5^2*x8^4+37647*x6*x8^4+9852*x1*x6*x8^4+12242*x3*x6*x8^4+14601*x4^2*x6*x8^4+39388*x5*x6*x8^4+37519*x3*x5*x6*x8^4+26848*x5^2*x6*x8^4+31235*x2*x6^2*x8^4+10535*x4*x6^2*x8^4+6678*x6^3*x8^4+5457*x5*x6^3*x8^4+24378*x2*x7*x8^4+11403*x4*x7*x8^4+12140*x3*x4*x7*x8^4+28774*x2*x5*x7*x8^4+13181*x4*x5*x7*x8^4+33563*x6*x7*x8^4+20029*x1*x6*x7*x8^4+40914*x3*x6*x7*x8^4+8191*x5*x6*x7*x8^4+41964*x5^2*x6*x7*x8^4+25544*x4*x6^2*x7*x8^4+4338*x6^3*x7*x8^4+39873*x2*x7^2*x8^4+34917*x4*x7^2*x8^4+9124*x4*x5*x7^2*x8^4+26690*x6*x7^2*x8^4+18297*x3*x6*x7^2*x8^4+27508*x5*x6*x7^2*x8^4+27646*x6^3*x7^2*x8^4+40223*x2*x7^3*x8^4+34931*x4*x7^3*x8^4+10072*x6*x7^3*x8^4+3678*x5*x6*x7^3*x8^4+38132*x4*x7^4*x8^4+35341*x6*x7^4*x8^4+626*x6*x7^5*x8^4+12386*x1*x8^5+446*x3*x8^5+11494*x3^2*x8^5+28021*x2*x4*x8^5+41371*x4^2*x8^5+27098*x5*x8^5+1107*x1*x5*x8^5+34161*x3*x5*x8^5+11816*x5^2*x8^5+7531*x5^3*x8^5+9424*x2*x6*x8^5+32984*x4*x6*x8^5+26803*x4*x5*x6*x8^5+11352*x6^2*x8^5+16025*x3*x6^2*x8^5+23766*x5*x6^2*x8^5+6605*x6^4*x8^5+4366*x7*x8^5+35445*x1*x7*x8^5+25595*x3*x7*x8^5+16025*x4^2*x7*x8^5+27380*x5*x7*x8^5+13667*x3*x5*x7*x8^5+36902*x5^2*x7*x8^5+531*x2*x6*x7*x8^5+12124*x4*x6*x7*x8^5+31078*x6^2*x7*x8^5+18222*x5*x6^2*x7*x8^5+9619*x7^2*x8^5+38334*x1*x7^2*x8^5+27766*x3*x7^2*x8^5+33399*x5*x7^2*x8^5+20605*x5^2*x7^2*x8^5+22185*x4*x6*x7^2*x8^5+18740*x6^2*x7^2*x8^5+23394*x7^3*x8^5+30383*x3*x7^3*x8^5+36539*x5*x7^3*x8^5+39915*x6^2*x7^3*x8^5+34707*x7^4*x8^5+11194*x5*x7^4*x8^5+19120*x7^5*x8^5+790*x7^6*x8^5+29627*x2*x8^6+41567*x4*x8^6+15634*x3*x4*x8^6+5568*x2*x5*x8^6+14955*x4*x5*x8^6+14915*x6*x8^6+27449*x1*x6*x8^6+16383*x3*x6*x8^6+15168*x5*x6*x8^6+30914*x5^2*x6*x8^6+24132*x4*x6^2*x8^6+16601*x6^3*x8^6+29305*x2*x7*x8^6+13205*x4*x7*x8^6+34700*x4*x5*x7*x8^6+36567*x6*x7*x8^6+7572*x3*x6*x7*x8^6+12938*x5*x6*x7*x8^6+36116*x6^3*x7*x8^6+18671*x2*x7^2*x8^6+41128*x4*x7^2*x8^6+5870*x6*x7^2*x8^6+21680*x5*x6*x7^2*x8^6+33474*x4*x7^3*x8^6+32343*x6*x7^3*x8^6+28790*x6*x7^4*x8^6+15206*x1*x8^7+12386*x3*x8^7+14885*x4^2*x8^7+446*x5*x8^7+34803*x3*x5*x8^7+27700*x5^2*x8^7+7889*x2*x6*x8^7+18527*x4*x6*x8^7+15029*x6^2*x8^7+1247*x5*x6^2*x8^7+27098*x7*x8^7+33054*x1*x7*x8^7+28914*x3*x7*x8^7+22669*x5*x7*x8^7+2996*x5^2*x7*x8^7+9490*x4*x6*x7*x8^7+36042*x6^2*x7*x8^7+36107*x7^2*x8^7+9992*x3*x7^2*x8^7+25548*x5*x7^2*x8^7+14827*x6^2*x7^2*x8^7+40400*x7^3*x8^7+37025*x5*x7^3*x8^7+6864*x7^4*x8^7+32013*x7^5*x8^7+26807*x2*x8^8+29627*x4*x8^8+3819*x4*x5*x8^8+41567*x6*x8^8+35766*x3*x6*x8^8+37157*x5*x6*x8^8+2321*x6^3*x8^8+15634*x2*x7*x8^8+20202*x4*x7*x8^8+16131*x6*x7*x8^8+20494*x5*x6*x7*x8^8+16815*x4*x7^2*x8^8+25926*x6*x7^2*x8^8+5272*x6*x7^3*x8^8+13457*x1*x8^9+15206*x3*x8^9+12386*x5*x8^9+23309*x5^2*x8^9+9638*x4*x6*x8^9+19169*x6^2*x8^9+446*x7*x8^9+24737*x3*x7*x8^9+8140*x5*x7*x8^9+20165*x6^2*x7*x8^9+10853*x7^2*x8^9+11848*x5*x7^2*x8^9+5457*x7^3*x8^9+21206*x7^4*x8^9+28556*x2*x8^10+26807*x4*x8^10+29627*x6*x8^10+23951*x5*x6*x8^10+13885*x4*x7*x8^10+391*x6*x7*x8^10+3144*x6*x7^2*x8^10+13457*x3*x8^11+15206*x5*x8^11+36766*x6^2*x8^11+12386*x7*x8^11+36552*x5*x7*x8^11+22453*x7^2*x8^11+16383*x7^3*x8^11+28556*x4*x8^12+26807*x6*x8^12+34017*x6*x7*x8^12+13457*x5*x8^13+15206*x7*x8^13+13243*x7^2*x8^13+28556*x6*x8^14+13457*x7*x8^15",
    "39948*x2+19564*x1*x2+24783*x2*x3+30298*x2*x3^2+12939*x4+33082*x1*x4+6700*x2^2*x4+38417*x3*x4+19619*x1*x3*x4+17014*x3^2*x4+8523*x2*x4^2+21175*x4^3+24393*x2*x5+7181*x1*x2*x5+7413*x2*x3*x5+15839*x4*x5+1564*x1*x4*x5+7663*x3*x4*x5+15593*x4^3*x5+36722*x2*x5^2+39854*x4*x5^2+24338*x3*x4*x5^2+10050*x2*x5^3+34541*x4*x5^3+14319*x6+29537*x1*x6+10087*x2^2*x6+36817*x3*x6+15361*x1*x3*x6+15115*x3^2*x6+35758*x2*x4*x6+19326*x4^2*x6+3493*x3*x4^2*x6+21282*x5*x6+27769*x1*x5*x6+22388*x3*x5*x6+38172*x3^2*x5*x6+6367*x2*x4*x5*x6+17796*x4^2*x5*x6+7402*x5^2*x6+30409*x1*x5^2*x6+41194*x3*x5^2*x6+10611*x5^3*x6+5654*x5^4*x6+21750*x2*x6^2+6764*x2*x3*x6^2+15439*x4*x6^2+38521*x3*x4*x6^2+10869*x2*x5*x6^2+19203*x4*x5*x6^2+27493*x4*x5^2*x6^2+3629*x6^3+9416*x1*x6^3+11521*x3*x6^3+30873*x5*x6^3+33791*x3*x5*x6^3+21517*x5^2*x6^3+10457*x2*x6^4+26634*x4*x6^4+37635*x6^5+36692*x5*x6^5+5521*x2*x7+13558*x1*x2*x7+40994*x2*x3*x7+32087*x4*x7+16409*x1*x4*x7+10253*x3*x4*x7+1998*x3^2*x4*x7+13358*x2*x4^2*x7+34074*x4^3*x7+3091*x2*x5*x7+26410*x2*x3*x5*x7+39253*x4*x5*x7+30372*x1*x4*x5*x7+15405*x3*x4*x5*x7+24814*x2*x5^2*x7+21669*x4*x5^2*x7+38024*x4*x5^3*x7+11431*x6*x7+20163*x1*x6*x7+2563*x2^2*x6*x7+40810*x3*x6*x7+3330*x1*x3*x6*x7+12409*x3^2*x6*x7+40012*x2*x4*x6*x7+33625*x4^2*x6*x7+31119*x5*x6*x7+13972*x1*x5*x6*x7+3574*x3*x5*x6*x7+6542*x4^2*x5*x6*x7+31638*x5^2*x6*x7+31741*x3*x5^2*x6*x7+40952*x5^3*x6*x7+39588*x2*x6^2*x7+6821*x4*x6^2*x7+31534*x3*x4*x6^2*x7+29691*x2*x5*x6^2*x7+21160*x4*x5*x6^2*x7+15882*x6^3*x7+27906*x3*x6^3*x7+34235*x5*x6^3*x7+19582*x5^2*x6^3*x7+11070*x6^5*x7+35979*x2*x7^2+21617*x1*x2*x7^2+33936*x2*x3*x7^2+13044*x4*x7^2+38305*x1*x4*x7^2+22137*x3*x4*x7^2+20893*x2*x5*x7^2+31089*x4*x5*x7^2+35471*x3*x4*x5*x7^2+37876*x2*x5^2*x7^2+25865*x4*x5^2*x7^2+23438*x6*x7^2+25864*x1*x6*x7^2+31193*x3*x6*x7^2+17843*x3^2*x6*x7^2+20285*x2*x4*x6*x7^2+17795*x4^2*x6*x7^2+7186*x5*x6*x7^2+17295*x1*x5*x6*x7^2+25596*x3*x5*x6*x7^2+535*x5^2*x6*x7^2+8311*x5^3*x6*x7^2+34093*x2*x6^2*x7^2+2654*x4*x6^2*x7^2+29262*x4*x5*x6^2*x7^2+20993*x6^3*x7^2+6764*x3*x6^3*x7^2+30991*x5*x6^3*x7^2+2485*x2*x7^3+35064*x2*x3*x7^3+17969*x4*x7^3+28404*x3*x4*x7^3+1594*x2*x5*x7^3+26105*x4*x5*x7^3+19471*x4*x5^2*x7^3+7726*x6*x7^3+12368*x1*x6*x7^3+24819*x3*x6*x7^3+26977*x5*x6*x7^3+22579*x3*x5*x6*x7^3+19863*x5^2*x6*x7^3+16148*x2*x6^2*x7^3+383*x4*x6^2*x7^3+28572*x6^3*x7^3+11567*x5*x6^3*x7^3+16706*x2*x7^4+12107*x4*x7^4+21913*x3*x4*x7^4+3276*x2*x5*x7^4+15605*x4*x5*x7^4+608*x6*x7^4+32172*x3*x6*x7^4+25469*x5*x6*x7^4+27900*x5^2*x6*x7^4+37885*x6^3*x7^4+37723*x2*x7^5+1387*x4*x7^5+26605*x4*x5*x7^5+29501*x6*x7^5+41273*x3*x6*x7^5+16622*x5*x6*x7^5+36729*x2*x7^6+22335*x4*x7^6+37873*x6*x7^6+36470*x5*x6*x7^6+27773*x6*x7^7+32945*x8+17800*x1*x8+2267*x2^2*x8+10377*x3*x8+22218*x1*x3*x8+30468*x3^2*x8+22061*x3^3*x8+13495*x2*x4*x8+16915*x2*x3*x4*x8+11636*x4^2*x8+22418*x3*x4^2*x8+31018*x5*x8+9026*x1*x5*x8+36914*x2^2*x5*x8+31083*x3*x5*x8+19451*x1*x3*x5*x8+41528*x3^2*x5*x8+8148*x2*x4*x5*x8+4948*x4^2*x5*x8+38300*x5^2*x8+27128*x1*x5^2*x8+962*x3*x5^2*x8+27604*x4^2*x5^2*x8+34372*x5^3*x8+37321*x3*x5^3*x8+15937*x5^4*x8+14168*x2*x6*x8+29168*x1*x2*x6*x8+3325*x2*x3*x6*x8+2548*x4*x6*x8+23001*x1*x4*x6*x8+32738*x3*x4*x6*x8+11221*x2*x5*x6*x8+36414*x4*x5*x6*x8+34324*x3*x4*x5*x6*x8+33813*x2*x5^2*x6*x8+36621*x4*x5^2*x6*x8+37121*x6^2*x8+1898*x1*x6^2*x8+2491*x3*x6^2*x8+10028*x3^2*x6^2*x8+36063*x2*x4*x6^2*x8+20259*x4^2*x6^2*x8+16921*x5*x6^2*x8+27826*x1*x5*x6^2*x8+33153*x3*x5*x6^2*x8+8400*x5^2*x6^2*x8+29262*x5^3*x6^2*x8+17054*x2*x6^3*x8+35246*x4*x6^3*x8+19471*x4*x5*x6^3*x8+4798*x6^4*x8+16518*x3*x6^4*x8+1743*x5*x6^4*x8+29700*x7*x8+37837*x1*x7*x8+7198*x2^2*x7*x8+20006*x3*x7*x8+24360*x1*x3*x7*x8+28168*x3^2*x7*x8+30077*x2*x4*x7*x8+11935*x4^2*x7*x8+31312*x3*x4^2*x7*x8+16716*x5*x7*x8+35391*x1*x5*x7*x8+19592*x3*x5*x7*x8+31993*x3^2*x5*x7*x8+6838*x2*x4*x5*x7*x8+38335*x4^2*x5*x7*x8+13441*x5^2*x7*x8+34701*x1*x5^2*x7*x8+25847*x3*x5^2*x7*x8+21044*x5^3*x7*x8+19471*x5^4*x7*x8+6346*x2*x6*x7*x8+26850*x2*x3*x6*x7*x8+13877*x4*x6*x7*x8+34226*x3*x4*x6*x7*x8+30739*x2*x5*x6*x7*x8+34600*x4*x5*x6*x7*x8+32578*x4*x5^2*x6*x7*x8+24318*x6^2*x7*x8+38672*x1*x6^2*x7*x8+7798*x3*x6^2*x7*x8+38627*x5*x6^2*x7*x8+15156*x3*x5*x6^2*x7*x8+37359*x5^2*x6^2*x7*x8+25300*x2*x6^3*x7*x8+13560*x4*x6^3*x7*x8+25690*x6^4*x7*x8+27900*x5*x6^4*x7*x8+19956*x7^2*x8+32319*x1*x7^2*x8+9125*x2^2*x7^2*x8+31122*x3*x7^2*x8+15623*x1*x3*x7^2*x8+15768*x3^2*x7^2*x8+10780*x2*x4*x7^2*x8+10971*x4^2*x7^2*x8+21334*x5*x7^2*x8+39753*x1*x5*x7^2*x8+34428*x3*x5*x7^2*x8+29040*x4^2*x5*x7^2*x8+7795*x5^2*x7^2*x8+20951*x3*x5^2*x7^2*x8+30498*x5^3*x7^2*x8+29036*x2*x6*x7^2*x8+23494*x4*x6*x7^2*x8+347*x3*x4*x6*x7^2*x8+39201*x2*x5*x6*x7^2*x8+25886*x4*x5*x6*x7^2*x8+32146*x6^2*x7^2*x8+4493*x3*x6^2*x7^2*x8+5345*x5*x6^2*x7^2*x8+20632*x5^2*x6^2*x7^2*x8+8643*x6^4*x7^2*x8+11926*x7^3*x8+15576*x1*x7^3*x8+6766*x3*x7^3*x8+4440*x3^2*x7^3*x8+25559*x2*x4*x7^3*x8+5641*x4^2*x7^3*x8+2917*x5*x7^3*x8+19027*x1*x5*x7^3*x8+3338*x3*x5*x7^3*x8+21230*x5^2*x7^3*x8+13972*x5^3*x7^3*x8+11886*x2*x6*x7^3*x8+9873*x4*x6*x7^3*x8+28129*x4*x5*x6*x7^3*x8+16241*x6^2*x7^3*x8+8193*x3*x6^2*x7^3*x8+20390*x5*x6^2*x7^3*x8+21422*x7^4*x8+23178*x1*x7^4*x8+11926*x3*x7^4*x8+18308*x5*x7^4*x8+17167*x3*x5*x7^4*x8+34878*x5^2*x7^4*x8+2499*x2*x6*x7^4*x8+17397*x4*x6*x7^4*x8+29915*x6^2*x7^4*x8+32252*x5*x6^2*x7^4*x8+23243*x7^5*x8+11394*x3*x7^5*x8+13593*x5*x7^5*x8+8644*x5^2*x7^5*x8+9675*x6^2*x7^5*x8+16534*x7^6*x8+21728*x3*x7^6*x8+25032*x5*x7^6*x8+22556*x7^7*x8+26531*x5*x7^7*x8+37051*x7^8*x8+37555*x2*x8^2+36470*x1*x2*x8^2+8572*x2*x3*x8^2+39340*x4*x8^2+9703*x1*x4*x8^2+6985*x3*x4*x8^2+9954*x3^2*x4*x8^2+15371*x2*x4^2*x8^2+28914*x4^3*x8^2+23199*x2*x5*x8^2+17843*x2*x3*x5*x8^2+26412*x4*x5*x8^2+27937*x1*x4*x5*x8^2+33018*x3*x4*x5*x8^2+24592*x2*x5^2*x8^2+25272*x4*x5^2*x8^2+29040*x4*x5^3*x8^2+9075*x6*x8^2+41633*x1*x6*x8^2+24940*x2^2*x6*x8^2+3115*x3*x6*x8^2+28907*x1*x3*x6*x8^2+28280*x3^2*x6*x8^2+13101*x2*x4*x6*x8^2+41667*x4^2*x6*x8^2+20464*x5*x6*x8^2+1036*x1*x5*x6*x8^2+9949*x3*x5*x6*x8^2+7978*x4^2*x5*x6*x8^2+16962*x5^2*x6*x8^2+36581*x3*x5^2*x6*x8^2+21899*x5^3*x6*x8^2+5104*x2*x6^2*x8^2+35888*x4*x6^2*x8^2+15896*x3*x4*x6^2*x8^2+30039*x2*x5*x6^2*x8^2+12789*x4*x5*x6^2*x8^2+29677*x6^3*x8^2+15336*x3*x6^3*x8^2+36515*x5*x6^3*x8^2+13972*x5^2*x6^3*x8^2+27889*x6^5*x8^2+23070*x2*x7*x8^2+11175*x1*x2*x7*x8^2+17287*x2*x3*x7*x8^2+9298*x4*x7*x8^2+24883*x1*x4*x7*x8^2+40640*x3*x4*x7*x8^2+36256*x2*x5*x7*x8^2+28300*x4*x5*x7*x8^2+16192*x3*x4*x5*x7*x8^2+32511*x2*x5^2*x7*x8^2+14206*x4*x5^2*x7*x8^2+4705*x6*x7*x8^2+22069*x1*x6*x7*x8^2+15502*x3*x6*x7*x8^2+2641*x3^2*x6*x7*x8^2+13602*x2*x4*x6*x7*x8^2+18671*x4^2*x6*x7*x8^2+9348*x5*x6*x7*x8^2+14957*x1*x5*x6*x7*x8^2+24352*x3*x5*x6*x7*x8^2+25847*x5^2*x6*x7*x8^2+21187*x5^3*x6*x7*x8^2+13727*x2*x6^2*x7*x8^2+7267*x4*x6^2*x7*x8^2+458*x4*x5*x6^2*x7*x8^2+23130*x6^3*x7*x8^2+30819*x3*x6^3*x7*x8^2+37059*x5*x6^3*x7*x8^2+22130*x2*x7^2*x8^2+31644*x2*x3*x7^2*x8^2+4793*x4*x7^2*x8^2+14428*x3*x4*x7^2*x8^2+35040*x2*x5*x7^2*x8^2+983*x4*x5*x7^2*x8^2+21742*x4*x5^2*x7^2*x8^2+7758*x6*x7^2*x8^2+11003*x1*x6*x7^2*x8^2+27866*x3*x6*x7^2*x8^2+5453*x5*x6*x7^2*x8^2+3198*x3*x5*x6*x7^2*x8^2+31089*x5^2*x6*x7^2*x8^2+2176*x2*x6^2*x7^2*x8^2+30334*x4*x6^2*x7^2*x8^2+36430*x6^3*x7^2*x8^2+1207*x5*x6^3*x7^2*x8^2+18907*x2*x7^3*x8^2+14425*x4*x7^3*x8^2+34475*x3*x4*x7^3*x8^2+17813*x2*x5*x7^3*x8^2+17328*x4*x5*x7^3*x8^2+21670*x6*x7^3*x8^2+5760*x3*x6*x7^3*x8^2+32394*x5*x6*x7^3*x8^2+1859*x5^2*x6*x7^3*x8^2+34018*x6^3*x7^3*x8^2+39534*x2*x7^4*x8^2+37773*x4*x7^4*x8^2+31697*x4*x5*x7^4*x8^2+7719*x6*x7^4*x8^2+8532*x3*x6*x7^4*x8^2+19275*x5*x6*x7^4*x8^2+18975*x2*x7^5*x8^2+6450*x4*x7^5*x8^2+499*x6*x7^5*x8^2+673*x5*x6*x7^5*x8^2+4405*x6*x7^6*x8^2+23855*x8^3+41542*x1*x8^3+41413*x2^2*x8^3+16159*x3*x8^3+2180*x1*x3*x8^3+22287*x3^2*x8^3+18223*x2*x4*x8^3+23894*x4^2*x8^3+33480*x3*x4^2*x8^3+19112*x5*x8^3+10050*x1*x5*x8^3+34092*x3*x5*x8^3+24392*x3^2*x5*x8^3+13067*x2*x4*x5*x8^3+10435*x4^2*x5*x8^3+34156*x5^2*x8^3+18916*x1*x5^2*x8^3+30970*x3*x5^2*x8^3+24130*x5^3*x8^3+11752*x5^4*x8^3+9210*x2*x6*x8^3+38438*x2*x3*x6*x8^3+6739*x4*x6*x8^3+4321*x3*x4*x6*x8^3+2420*x2*x5*x6*x8^3+31163*x4*x5*x6*x8^3+28684*x4*x5^2*x6*x8^3+33432*x6^2*x8^3+27207*x1*x6^2*x8^3+25399*x3*x6^2*x8^3+9779*x5*x6^2*x8^3+16844*x3*x5*x6^2*x8^3+19958*x5^2*x6^2*x8^3+30816*x2*x6^3*x8^3+26003*x4*x6^3*x8^3+13932*x6^4*x8^3+3656*x5*x6^4*x8^3+26995*x7*x8^3+5219*x1*x7*x8^3+5459*x2^2*x7*x8^3+13975*x3*x7*x8^3+17968*x1*x3*x7*x8^3+35556*x3^2*x7*x8^3+9013*x2*x4*x7*x8^3+31870*x4^2*x7*x8^3+27285*x5*x7*x8^3+29841*x1*x5*x7*x8^3+38763*x3*x5*x7*x8^3+14527*x4^2*x5*x7*x8^3+37709*x5^2*x7*x8^3+22441*x3*x5^2*x7*x8^3+11771*x5^3*x7*x8^3+31024*x2*x6*x7*x8^3+33486*x4*x6*x7*x8^3+2414*x3*x4*x6*x7*x8^3+28778*x2*x5*x6*x7*x8^3+14041*x4*x5*x6*x7*x8^3+30997*x6^2*x7*x8^3+39350*x3*x6^2*x7*x8^3+17755*x5*x6^2*x7*x8^3+1304*x5^2*x6^2*x7*x8^3+8408*x6^4*x7*x8^3+7326*x7^2*x8^3+36896*x1*x7^2*x8^3+36444*x3*x7^2*x8^3+4308*x3^2*x7^2*x8^3+39238*x2*x4*x7^2*x8^3+24645*x4^2*x7^2*x8^3+21815*x5*x7^2*x8^3+36366*x1*x5*x7^2*x8^3+22476*x3*x5*x7^2*x8^3+38851*x5^2*x7^2*x8^3+21381*x5^3*x7^2*x8^3+11458*x2*x6*x7^2*x8^3+28721*x4*x6*x7^2*x8^3+194*x4*x5*x6*x7^2*x8^3+27279*x6^2*x7^2*x8^3+33397*x3*x6^2*x7^2*x8^3+15007*x5*x6^2*x7^2*x8^3+28397*x7^3*x8^3+10673*x1*x7^3*x8^3+40576*x3*x7^3*x8^3+37113*x5*x7^3*x8^3+40251*x3*x5*x7^3*x8^3+34908*x5^2*x7^3*x8^3+35626*x2*x6*x7^3*x8^3+23311*x4*x6*x7^3*x8^3+14927*x6^2*x7^3*x8^3+9893*x5*x6^2*x7^3*x8^3+22028*x7^4*x8^3+15590*x3*x7^4*x8^3+6260*x5*x7^4*x8^3+36780*x5^2*x7^4*x8^3+36700*x6^2*x7^4*x8^3+15364*x7^5*x8^3+18598*x3*x7^5*x8^3+10786*x5*x7^5*x8^3+6667*x7^6*x8^3+18546*x5*x7^6*x8^3+35485*x7^7*x8^3+15137*x2*x8^4+14695*x1*x2*x8^4+31203*x2*x3*x8^4+13915*x4*x8^4+30515*x1*x4*x8^4+21834*x3*x4*x8^4+16028*x2*x5*x8^4+14554*x4*x5*x8^4+21933*x3*x4*x5*x8^4+17443*x2*x5^2*x8^4+6359*x4*x5^2*x8^4+31376*x6*x8^4+3453*x1*x6*x8^4+13632*x3*x6*x8^4+41599*x3^2*x6*x8^4+2129*x2*x4*x6*x8^4+17189*x4^2*x6*x8^4+24897*x5*x6*x8^4+7726*x1*x5*x6*x8^4+6760*x3*x5*x6*x8^4+30226*x5^2*x6*x8^4+21055*x5^3*x6*x8^4+40776*x2*x6^2*x8^4+21630*x4*x6^2*x8^4+10413*x4*x5*x6^2*x8^4+39170*x6^3*x8^4+11774*x3*x6^3*x8^4+8356*x5*x6^3*x8^4+31308*x2*x7*x8^4+39796*x2*x3*x7*x8^4+22066*x4*x7*x8^4+2105*x3*x4*x7*x8^4+31780*x2*x5*x7*x8^4+7978*x4*x5*x7*x8^4+41555*x4*x5^2*x7*x8^4+27209*x6*x7*x8^4+33260*x1*x6*x7*x8^4+31741*x3*x6*x7*x8^4+28050*x5*x6*x7*x8^4+34234*x3*x5*x6*x7*x8^4+5253*x5^2*x6*x7*x8^4+26812*x2*x6^2*x7*x8^4+20219*x4*x6^2*x7*x8^4+6201*x6^3*x7*x8^4+36780*x5*x6^3*x7*x8^4+15262*x2*x7^2*x8^4+4678*x4*x7^2*x8^4+40480*x3*x4*x7^2*x8^4+7682*x2*x5*x7^2*x8^4+2537*x4*x5*x7^2*x8^4+24114*x6*x7^2*x8^4+10357*x3*x6*x7^2*x8^4+1805*x5*x6*x7^2*x8^4+16782*x5^2*x6*x7^2*x8^4+21553*x6^3*x7^2*x8^4+3238*x2*x7^3*x8^4+7138*x4*x7^3*x8^4+27248*x4*x5*x7^3*x8^4+5386*x6*x7^3*x8^4+31706*x3*x6*x7^3*x8^4+1507*x5*x6*x7^3*x8^4+35883*x2*x7^4*x8^4+31077*x4*x7^4*x8^4+41429*x6*x7^4*x8^4+33415*x5*x6*x7^4*x8^4+6332*x6*x7^5*x8^4+19086*x8^5+18213*x1*x8^5+41495*x2^2*x8^5+3618*x3*x8^5+10319*x1*x3*x8^5+37325*x3^2*x8^5+16343*x2*x4*x8^5+34917*x4^2*x8^5+37046*x5*x8^5+31276*x1*x5*x8^5+8942*x3*x5*x8^5+35582*x4^2*x5*x8^5+11947*x5^2*x8^5+15963*x3*x5^2*x8^5+28178*x5^3*x8^5+17995*x2*x6*x8^5+8172*x4*x6*x8^5+31970*x3*x4*x6*x8^5+19841*x2*x5*x6*x8^5+26850*x4*x5*x6*x8^5+895*x6^2*x8^5+16323*x3*x6^2*x8^5+23336*x5*x6^2*x8^5+1450*x5^2*x6^2*x8^5+6061*x6^4*x8^5+39751*x7*x8^5+30739*x1*x7*x8^5+17012*x3*x7*x8^5+17561*x3^2*x7*x8^5+38505*x2*x4*x7*x8^5+17317*x4^2*x7*x8^5+5938*x5*x7*x8^5+7645*x1*x5*x7*x8^5+6185*x3*x5*x7*x8^5+3896*x5^2*x7*x8^5+33154*x5^3*x7*x8^5+11318*x2*x6*x7*x8^5+6674*x4*x6*x7*x8^5+3677*x4*x5*x6*x7*x8^5+27449*x6^2*x7*x8^5+18029*x3*x6^2*x7*x8^5+12406*x5*x6^2*x7*x8^5+5222*x7^2*x8^5+2841*x1*x7^2*x8^5+16810*x3*x7^2*x8^5+4458*x5*x7^2*x8^5+985*x3*x5*x7^2*x8^5+25746*x5^2*x7^2*x8^5+37610*x2*x6*x7^2*x8^5+38002*x4*x6*x7^2*x8^5+26*x6^2*x7^2*x8^5+39321*x5*x6^2*x7^2*x8^5+1353*x7^3*x8^5+28531*x3*x7^3*x8^5+14001*x5*x7^3*x8^5+25696*x5^2*x7^3*x8^5+25274*x6^2*x7^3*x8^5+9092*x7^4*x8^5+6492*x3*x7^4*x8^5+34533*x5*x7^4*x8^5+35561*x7^5*x8^5+37920*x5*x7^5*x8^5+25852*x7^6*x8^5+26991*x2*x8^6+17665*x2*x3*x8^6+23081*x4*x8^6+6881*x3*x4*x8^6+25712*x2*x5*x8^6+1267*x4*x5*x8^6+28751*x4*x5^2*x8^6+9865*x6*x8^6+25194*x1*x6*x8^6+2192*x3*x6*x8^6+10611*x5*x6*x8^6+20411*x3*x5*x6*x8^6+25927*x5^2*x6*x8^6+1865*x2*x6^2*x8^6+3855*x4*x6^2*x8^6+10155*x6^3*x8^6+18287*x5*x6^3*x8^6+12622*x2*x7*x8^6+39905*x4*x7*x8^6+32637*x3*x4*x7*x8^6+328*x2*x5*x7*x8^6+27279*x4*x5*x7*x8^6+20388*x6*x7*x8^6+13243*x3*x6*x7*x8^6+40991*x5*x6*x7*x8^6+25178*x5^2*x6*x7*x8^6+8927*x6^3*x7*x8^6+23110*x2*x7^2*x8^6+16657*x4*x7^2*x8^6+12071*x4*x5*x7^2*x8^6+27687*x6*x7^2*x8^6+31288*x3*x6*x7^2*x8^6+36417*x5*x6*x7^2*x8^6+12381*x2*x7^3*x8^6+9633*x4*x7^3*x8^6+10425*x6*x7^3*x8^6+1138*x5*x6*x7^3*x8^6+10885*x6*x7^4*x8^6+30158*x8^7+13175*x1*x8^7+12754*x3*x8^7+1421*x3^2*x8^7+6700*x2*x4*x8^7+35054*x4^2*x8^7+4207*x5*x8^7+16222*x1*x5*x8^7+12789*x3*x5*x8^7+26536*x5^2*x8^7+19730*x5^3*x8^7+20668*x2*x6*x8^7+33979*x4*x6*x8^7+39386*x4*x5*x6*x8^7+6123*x6^2*x8^7+3071*x3*x6^2*x8^7+39971*x5*x6^2*x8^7+25031*x7*x8^7+2187*x1*x7*x8^7+16202*x3*x7*x8^7+14333*x5*x7*x8^7+10733*x3*x5*x7*x8^7+32531*x5^2*x7*x8^7+8698*x2*x6*x7*x8^7+24399*x4*x6*x7*x8^7+34957*x6^2*x7*x8^7+30830*x5*x6^2*x7*x8^7+13294*x7^2*x8^7+31142*x3*x7^2*x8^7+12270*x5*x7^2*x8^7+31163*x5^2*x7^2*x8^7+14034*x6^2*x7^2*x8^7+30547*x7^3*x8^7+23046*x3*x7^3*x8^7+17489*x5*x7^3*x8^7+7941*x7^4*x8^7+24156*x5*x7^4*x8^7+35454*x7^5*x8^7+8547*x2*x8^8+669*x4*x8^8+25485*x3*x4*x8^8+10346*x2*x5*x8^8+2874*x4*x5*x8^8+30175*x6*x8^8+3029*x3*x6*x8^8+11851*x5*x6*x8^8+7874*x5^2*x6*x8^8+4407*x6^3*x8^8+35932*x2*x7*x8^8+40668*x4*x7*x8^8+29047*x4*x5*x7*x8^8+38701*x6*x7*x8^8+3871*x3*x6*x7*x8^8+26279*x5*x6*x7*x8^8+14853*x2*x7^2*x8^8+5418*x4*x7^2*x8^8+10658*x6*x7^2*x8^8+4308*x5*x6*x7^2*x8^8+3464*x6*x7^3*x8^8+26780*x8^9+39357*x3*x8^9+16048*x5*x8^9+36285*x3*x5*x8^9+233*x5^2*x8^9+31297*x2*x6*x8^9+10214*x4*x6*x8^9+10157*x6^2*x8^9+24940*x5*x6^2*x8^9+18923*x7*x8^9+40574*x3*x7*x8^9+5143*x5*x7*x8^9+28781*x5^2*x7*x8^9+33301*x6^2*x7*x8^9+20219*x7^2*x8^9+13972*x3*x7^2*x8^9+30965*x5*x7^2*x8^9+28246*x7^3*x8^9+9576*x5*x7^3*x8^9+6103*x7^4*x8^9+8634*x2*x8^10+39054*x4*x8^10+4951*x4*x5*x8^10+15386*x6*x8^10+34864*x3*x6*x8^10+24607*x5*x6*x8^10+6325*x2*x7*x8^10+28452*x4*x7*x8^10+30006*x6*x7*x8^10+7948*x5*x6*x7*x8^10+15759*x6*x7^2*x8^10+13677*x8^11+11971*x3*x8^11+35446*x5*x8^11+37025*x5^2*x8^11+21099*x6^2*x8^11+17272*x7*x8^11+35207*x3*x7*x8^11+90*x5*x7*x8^11+30737*x7^2*x8^11+30150*x5*x7^2*x8^11+33983*x7^3*x8^11+39371*x2*x8^12+18383*x4*x8^12+26092*x6*x8^12+15519*x5*x6*x8^12+6489*x6*x7*x8^12+16343*x8^13+26309*x3*x8^13+35334*x5*x8^13+22672*x7*x8^13+5469*x5*x7*x8^13+11001*x7^2*x8^13+24951*x6*x8^14+1457*x8^15+15741*x5*x8^15+14494*x7*x8^15",
    "5909*x2+18962*x1*x2+34851*x2*x3+22149*x4+39524*x1*x4+641*x3*x4+9791*x3^2*x4+5923*x2*x4^2+39790*x4^3+36725*x2*x5+18620*x2*x3*x5+35339*x4*x5+30725*x1*x4*x5+36596*x3*x4*x5+16243*x2*x5^2+37331*x4*x5^2+33258*x4*x5^3+40827*x6+2897*x1*x6+444*x2^2*x6+38809*x3*x6+35165*x1*x3*x6+8867*x3^2*x6+27182*x2*x4*x6+23307*x4^2*x6+30006*x5*x6+33704*x1*x5*x6+33274*x3*x5*x6+33961*x4^2*x5*x6+40340*x5^2*x6+34516*x3*x5^2*x6+24953*x5^3*x6+10223*x2*x6^2+9263*x4*x6^2+29474*x3*x4*x6^2+32185*x2*x5*x6^2+1720*x4*x5*x6^2+3597*x6^3+37664*x1*x6^3+21606*x3*x6^3+34241*x5*x6^3+25717*x5^2*x6^3+22325*x4*x6^4+14458*x6^5+30695*x2*x7+17100*x1*x2*x7+29476*x2*x3*x7+32163*x4*x7+24478*x1*x4*x7+5218*x3*x4*x7+39445*x4^3*x7+15737*x4*x5*x7+22246*x3*x4*x5*x7+33480*x2*x5^2*x7+36246*x4*x5^2*x7+39786*x6*x7+4624*x1*x6*x7+25195*x3*x6*x7+41135*x3^2*x6*x7+27375*x2*x4*x6*x7+35889*x4^2*x6*x7+2260*x5*x6*x7+41125*x1*x5*x6*x7+28914*x3*x5*x6*x7+25469*x5^2*x6*x7+1648*x5^3*x6*x7+20790*x2*x6^2*x7+28741*x4*x6^2*x7+21269*x4*x5*x6^2*x7+1133*x6^3*x7+27589*x3*x6^3*x7+28162*x5*x6^3*x7+21886*x6^5*x7+35115*x2*x7^2+5647*x2*x3*x7^2+17702*x4*x7^2+6868*x1*x4*x7^2+40130*x3*x4*x7^2+5113*x2*x5*x7^2+17884*x4*x5*x7^2+21173*x4*x5^2*x7^2+22795*x6*x7^2+38613*x1*x6*x7^2+40345*x3*x6*x7^2+31082*x4^2*x6*x7^2+14359*x5*x6*x7^2+3374*x3*x5*x6*x7^2+7431*x5^2*x6*x7^2+11892*x2*x6^2*x7^2+12203*x4*x6^2*x7^2+18522*x6^3*x7^2+6481*x5*x6^3*x7^2+17357*x2*x7^3+23796*x4*x7^3+26427*x3*x4*x7^3+4588*x2*x5*x7^3+27900*x4*x5*x7^3+31890*x6*x7^3+17255*x1*x6*x7^3+36733*x3*x6*x7^3+13055*x5*x6*x7^3+25414*x5^2*x6*x7^3+21169*x4*x6^2*x7^3+9048*x6^3*x7^3+33861*x2*x7^4+14712*x4*x7^4+12310*x4*x5*x7^4+8501*x6*x7^4+19548*x3*x6*x7^4+25911*x5*x6*x7^4+4763*x6^3*x7^4+22303*x2*x7^5+10604*x4*x7^5+221*x6*x7^5+28314*x5*x6*x7^5+12122*x4*x7^6+13734*x6*x7^6+232*x6*x7^7+2796*x8+22449*x1*x8+8080*x2^2*x8+11568*x3*x8+17001*x1*x3*x8+37894*x3^2*x8+2521*x2*x4*x8+31855*x4^2*x8+34632*x3*x4^2*x8+39574*x5*x8+10916*x1*x5*x8+2506*x3*x5*x8+7874*x3^2*x5*x8+38475*x2*x4*x5*x8+19518*x4^2*x5*x8+39435*x5^2*x8+16488*x1*x5^2*x8+41853*x3*x5^2*x8+40581*x5^3*x8+35249*x5^4*x8+35611*x2*x6*x8+41421*x2*x3*x6*x8+7198*x4*x6*x8+40624*x1*x4*x6*x8+16177*x3*x4*x6*x8+21935*x2*x5*x6*x8+25658*x4*x5*x6*x8+37196*x4*x5^2*x6*x8+12991*x6^2*x8+20844*x1*x6^2*x8+1507*x3*x6^2*x8+15223*x4^2*x6^2*x8+24630*x5*x6^2*x8+31867*x3*x5*x6^2*x8+18563*x5^2*x6^2*x8+36418*x2*x6^3*x8+13392*x4*x6^3*x8+41263*x6^4*x8+14964*x5*x6^4*x8+24484*x7*x8+23828*x1*x7*x8+28744*x2^2*x7*x8+31440*x3*x7*x8+13420*x1*x3*x7*x8+5014*x3^2*x7*x8+21198*x2*x4*x7*x8+16695*x4^2*x7*x8+25451*x5*x7*x8+15890*x1*x5*x7*x8+2974*x3*x5*x7*x8+17177*x4^2*x5*x7*x8+32878*x5^2*x7*x8+20722*x3*x5^2*x7*x8+14270*x5^3*x7*x8+15743*x2*x6*x7*x8+38502*x4*x6*x7*x8+4706*x3*x4*x6*x7*x8+9465*x2*x5*x6*x7*x8+27254*x4*x5*x6*x7*x8+15415*x6^2*x7*x8+39000*x1*x6^2*x7*x8+21876*x3*x6^2*x7*x8+24657*x5*x6^2*x7*x8+31408*x5^2*x6^2*x7*x8+40704*x4*x6^3*x7*x8+20113*x6^4*x7*x8+6940*x7^2*x8+3199*x1*x7^2*x8+30076*x3*x7^2*x8+821*x3^2*x7^2*x8+5224*x2*x4*x7^2*x8+12548*x4^2*x7^2*x8+30471*x5*x7^2*x8+21402*x1*x5*x7^2*x8+34914*x3*x5*x7^2*x8+21526*x5^2*x7^2*x8+12196*x5^3*x7^2*x8+4217*x2*x6*x7^2*x8+21399*x4*x6*x7^2*x8+17371*x4*x5*x6*x7^2*x8+22588*x6^2*x7^2*x8+5723*x3*x6^2*x7^2*x8+8699*x5*x6^2*x7^2*x8+4390*x6^4*x7^2*x8+12054*x7^3*x8+7489*x1*x7^3*x8+39513*x3*x7^3*x8+33392*x4^2*x7^3*x8+16238*x5*x7^3*x8+26140*x3*x5*x7^3*x8+41693*x5^2*x7^3*x8+1660*x2*x6*x7^3*x8+10450*x4*x6*x7^3*x8+37563*x6^2*x7^3*x8+15064*x5*x6^2*x7^3*x8+31995*x7^4*x8+11109*x1*x7^4*x8+39294*x3*x7^4*x8+11007*x5*x7^4*x8+36040*x5^2*x7^4*x8+11969*x4*x6*x7^4*x8+27701*x6^2*x7^4*x8+23163*x7^5*x8+21641*x3*x7^5*x8+14848*x5*x7^5*x8+11532*x6^2*x7^5*x8+20402*x7^6*x8+7823*x5*x7^6*x8+34039*x7^7*x8+6616*x7^8*x8+35990*x2*x8^2+259*x1*x2*x8^2+3482*x2*x3*x8^2+33619*x4*x8^2+21409*x1*x4*x8^2+1495*x3*x4*x8^2+9088*x4^3*x8^2+6854*x2*x5*x8^2+6654*x4*x5*x8^2+37233*x3*x4*x5*x8^2+24267*x2*x5^2*x8^2+20125*x4*x5^2*x8^2+12972*x6*x8^2+36905*x1*x6*x8^2+11568*x3*x6*x8^2+39297*x3^2*x6*x8^2+26842*x2*x4*x6*x8^2+21097*x4^2*x6*x8^2+4612*x5*x6*x8^2+3057*x1*x5*x6*x8^2+1572*x3*x5*x6*x8^2+33142*x5^2*x6*x8^2+29128*x5^3*x6*x8^2+7708*x2*x6^2*x8^2+9924*x4*x6^2*x8^2+17894*x4*x5*x6^2*x8^2+4035*x6^3*x8^2+28041*x3*x6^3*x8^2+4538*x5*x6^3*x8^2+27530*x6^5*x8^2+11177*x2*x7*x8^2+19019*x2*x3*x7*x8^2+16614*x4*x7*x8^2+30764*x1*x4*x7*x8^2+10345*x3*x4*x7*x8^2+8038*x2*x5*x7*x8^2+6827*x4*x5*x7*x8^2+39629*x4*x5^2*x7*x8^2+7915*x6*x7*x8^2+9724*x1*x6*x7*x8^2+14352*x3*x6*x7*x8^2+36574*x4^2*x6*x7*x8^2+8089*x5*x6*x7*x8^2+4463*x3*x5*x6*x7*x8^2+699*x5^2*x6*x7*x8^2+19517*x2*x6^2*x7*x8^2+37989*x4*x6^2*x7*x8^2+16465*x6^3*x7*x8^2+39599*x5*x6^3*x7*x8^2+6560*x2*x7^2*x8^2+24357*x4*x7^2*x8^2+24364*x3*x4*x7^2*x8^2+40593*x2*x5*x7^2*x8^2+14069*x4*x5*x7^2*x8^2+15406*x6*x7^2*x8^2+7048*x1*x6*x7^2*x8^2+31619*x3*x6*x7^2*x8^2+26929*x5*x6*x7^2*x8^2+36639*x5^2*x6*x7^2*x8^2+13161*x4*x6^2*x7^2*x8^2+4003*x6^3*x7^2*x8^2+24669*x2*x7^3*x8^2+13889*x4*x7^3*x8^2+25389*x4*x5*x7^3*x8^2+27637*x6*x7^3*x8^2+26023*x3*x6*x7^3*x8^2+23749*x5*x6*x7^3*x8^2+34173*x6^3*x7^3*x8^2+16324*x2*x7^4*x8^2+15654*x4*x7^4*x8^2+5189*x6*x7^4*x8^2+12713*x5*x6*x7^4*x8^2+21419*x4*x7^5*x8^2+22212*x6*x7^5*x8^2+31080*x6*x7^6*x8^2+26746*x8^3+13657*x1*x8^3+18235*x2^2*x8^3+26090*x3*x8^3+17310*x1*x3*x8^3+26947*x3^2*x8^3+33324*x2*x4*x8^3+3715*x4^2*x8^3+589*x5*x8^3+16550*x1*x5*x8^3+156*x3*x5*x8^3+31960*x4^2*x5*x8^3+37947*x5^2*x8^3+13979*x3*x5^2*x8^3+19917*x5^3*x8^3+37023*x2*x6*x8^3+30901*x4*x6*x8^3+41697*x3*x4*x6*x8^3+18005*x2*x5*x6*x8^3+26049*x4*x5*x6*x8^3+35451*x6^2*x8^3+24802*x1*x6^2*x8^3+28976*x3*x6^2*x8^3+970*x5*x6^2*x8^3+652*x5^2*x6^2*x8^3+17211*x4*x6^3*x8^3+20680*x6^4*x8^3+35480*x7*x8^3+26954*x1*x7*x8^3+36300*x3*x7*x8^3+18139*x3^2*x7*x8^3+14234*x2*x4*x7*x8^3+7531*x4^2*x7*x8^3+13208*x5*x7*x8^3+10881*x1*x5*x7*x8^3+20635*x3*x5*x7*x8^3+41229*x5^2*x7*x8^3+652*x5^3*x7*x8^3+29048*x2*x6*x7*x8^3+23601*x4*x6*x7*x8^3+9347*x4*x5*x6*x7*x8^3+2781*x6^2*x7*x8^3+37188*x3*x6^2*x7*x8^3+32645*x5*x6^2*x7*x8^3+22726*x6^4*x7*x8^3+9438*x7^2*x8^3+1317*x1*x7^2*x8^3+33894*x3*x7^2*x8^3+41916*x4^2*x7^2*x8^3+12330*x5*x7^2*x8^3+11514*x3*x5*x7^2*x8^3+20886*x5^2*x7^2*x8^3+3726*x2*x6*x7^2*x8^3+41226*x4*x6*x7^2*x8^3+28127*x6^2*x7^2*x8^3+30667*x5*x6^2*x7^2*x8^3+36001*x7^3*x8^3+13778*x1*x7^3*x8^3+10651*x3*x7^3*x8^3+15659*x5*x7^3*x8^3+11576*x5^2*x7^3*x8^3+29563*x4*x6*x7^3*x8^3+31553*x6^2*x7^3*x8^3+20902*x7^4*x8^3+18778*x3*x7^4*x8^3+15493*x5*x7^4*x8^3+8556*x6^2*x7^4*x8^3+22678*x7^5*x8^3+41319*x5*x7^5*x8^3+14296*x7^6*x8^3+8704*x7^7*x8^3+15796*x2*x8^4+21839*x2*x3*x8^4+37125*x4*x8^4+12788*x1*x4*x8^4+29343*x3*x4*x8^4+2351*x2*x5*x8^4+4646*x4*x5*x8^4+41370*x4*x5^2*x8^4+26247*x6*x8^4+30802*x1*x6*x8^4+39780*x3*x6*x8^4+35259*x4^2*x6*x8^4+27110*x5*x6*x8^4+22676*x3*x5*x6*x8^4+37814*x5^2*x6*x8^4+19293*x2*x6^2*x8^4+32848*x4*x6^2*x8^4+37165*x6^3*x8^4+20729*x5*x6^3*x8^4+36190*x2*x7*x8^4+22814*x4*x7*x8^4+1063*x3*x4*x7*x8^4+13188*x2*x5*x7*x8^4+11081*x4*x5*x7*x8^4+5914*x6*x7*x8^4+35482*x1*x6*x7*x8^4+29049*x3*x6*x7*x8^4+29687*x5*x6*x7*x8^4+7629*x5^2*x6*x7*x8^4+18267*x4*x6^2*x7*x8^4+21994*x6^3*x7*x8^4+29102*x2*x7^2*x8^4+37013*x4*x7^2*x8^4+26473*x4*x5*x7^2*x8^4+21074*x6*x7^2*x8^4+36904*x3*x6*x7^2*x8^4+27770*x5*x6*x7^2*x8^4+23565*x6^3*x7^2*x8^4+36613*x2*x7^3*x8^4+17942*x4*x7^3*x8^4+13876*x6*x7^3*x8^4+3461*x5*x6*x7^3*x8^4+14553*x4*x7^4*x8^4+16481*x6*x7^4*x8^4+21420*x6*x7^5*x8^4+39261*x8^5+17871*x1*x8^5+17681*x3*x8^5+25717*x3^2*x8^5+19249*x2*x4*x8^5+38668*x4^2*x8^5+32014*x5*x8^5+22535*x1*x5*x8^5+5020*x3*x5*x8^5+19608*x5^2*x8^5+10205*x5^3*x8^5+37833*x2*x6*x8^5+38463*x4*x6*x8^5+12395*x4*x5*x6*x8^5+38826*x6^2*x8^5+10250*x3*x6^2*x8^5+16378*x5*x6^2*x8^5+24244*x6^4*x8^5+33497*x7*x8^5+17730*x1*x7*x8^5+9926*x3*x7*x8^5+10642*x4^2*x7*x8^5+14894*x5*x7*x8^5+34590*x3*x5*x7*x8^5+27271*x5^2*x7*x8^5+19783*x2*x6*x7*x8^5+21979*x4*x6*x7*x8^5+36205*x6^2*x7*x8^5+28335*x5*x6^2*x7*x8^5+21045*x7^2*x8^5+38225*x1*x7^2*x8^5+11879*x3*x7^2*x8^5+17627*x5*x7^2*x8^5+12381*x5^2*x7^2*x8^5+39884*x4*x6*x7^2*x8^5+15234*x6^2*x7^2*x8^5+10296*x7^3*x8^5+36778*x3*x7^3*x8^5+27080*x5*x7^3*x8^5+5243*x6^2*x7^3*x8^5+41975*x7^4*x8^5+31916*x5*x7^4*x8^5+15220*x7^5*x8^5+21548*x7^6*x8^5+22232*x2*x8^6+13360*x4*x8^6+27974*x3*x4*x8^6+13417*x2*x5*x8^6+41189*x4*x5*x8^6+40485*x6*x8^6+16750*x1*x6*x8^6+12629*x3*x6*x8^6+12124*x5*x6*x8^6+37973*x5^2*x6*x8^6+22880*x4*x6^2*x8^6+10984*x6^3*x8^6+21402*x2*x7*x8^6+41008*x4*x7*x8^6+20912*x4*x5*x7*x8^6+2290*x6*x7*x8^6+21532*x3*x6*x7*x8^6+38501*x5*x6*x7*x8^6+23331*x6^3*x7*x8^6+18821*x2*x7^2*x8^6+19627*x4*x7^2*x8^6+1042*x6*x7^2*x8^6+26787*x5*x6*x7^2*x8^6+35385*x4*x7^3*x8^6+30757*x6*x7^3*x8^6+24287*x6*x7^4*x8^6+12317*x8^7+3800*x1*x8^7+41480*x3*x8^7+40977*x4^2*x8^7+22157*x5*x8^7+31534*x3*x5*x8^7+30784*x5^2*x8^7+34790*x2*x6*x8^7+33399*x4*x6*x8^7+18689*x6^2*x8^7+23134*x5*x6^2*x8^7+21763*x7*x8^7+39097*x1*x7*x8^7+7887*x3*x7*x8^7+6311*x5*x7*x8^7+27130*x5^2*x7*x8^7+37835*x4*x6*x7*x8^7+10146*x6^2*x7*x8^7+7176*x7^2*x8^7+32191*x3*x7^2*x8^7+40754*x5*x7^2*x8^7+528*x6^2*x7^2*x8^7+7828*x7^3*x8^7+13681*x5*x7^3*x8^7+19572*x7^4*x8^7+36754*x7^5*x8^7+39396*x2*x8^8+8813*x4*x8^8+34220*x4*x5*x8^8+17231*x6*x8^8+10198*x3*x6*x8^8+41915*x5*x6*x8^8+17628*x6^3*x8^8+18990*x2*x7*x8^8+35221*x4*x7*x8^8+4645*x6*x7*x8^8+25391*x5*x6*x7*x8^8+31829*x4*x7^2*x8^8+2128*x6*x7^2*x8^8+15990*x6*x7^3*x8^8+39167*x8^9+31949*x3*x8^9+11672*x5*x8^9+14187*x5^2*x8^9+40005*x4*x6*x8^9+21937*x6^2*x8^9+6548*x7*x8^9+17258*x3*x7*x8^9+8423*x5*x7*x8^9+1809*x6^2*x7*x8^9+5057*x7^2*x8^9+1715*x5*x7^2*x8^9+29524*x7^3*x8^9+5867*x7^4*x8^9+14576*x4*x8^10+5460*x6*x8^10+32481*x5*x6*x8^10+28063*x4*x7*x8^10+40155*x6*x7*x8^10+11931*x6*x7^2*x8^10+17252*x8^11+39408*x3*x8^11+822*x5*x8^11+370*x6^2*x8^11+18846*x7*x8^11+15778*x5*x7*x8^11+25231*x7^2*x8^11+24711*x7^3*x8^11+20951*x4*x8^12+18100*x6*x8^12+232*x6*x7*x8^12+35969*x8^13+15852*x5*x8^13+3*x7*x8^13+27345*x7^2*x8^13+15778*x6*x8^14+24037*x8^15+36692*x7*x8^15",
    "106+39675*x1+8745*x1^2+36552*x2^2+27070*x3+34161*x1*x3+14885*x3^2+34517*x2*x4+5051*x4^2+2856*x3*x4^2+30788*x5+3675*x1*x5+821*x3*x5+7889*x3^2*x5+25844*x2*x4*x5+32840*x4^2*x5+33027*x5^2+28021*x1*x5^2+26272*x3*x5^2+31733*x5^3+23630*x5^4+10244*x2*x6+3963*x2*x3*x6+32534*x4*x6+24095*x1*x4*x6+20811*x3*x4*x6+3070*x2*x5*x6+41050*x4*x5*x6+16383*x4*x5^2*x6+2056*x6^2+15741*x1*x6^2+20525*x3*x6^2+642*x4^2*x6^2+19775*x5*x6^2+28198*x3*x5*x6^2+11778*x5^2*x6^2+22309*x2*x6^3+2712*x4*x6^3+24308*x6^4+1321*x5*x6^4+26612*x7+27200*x1*x7+1107*x2^2*x7+25281*x3*x7+12280*x1*x3*x7+41799*x3^2*x7+36980*x2*x4*x7+22488*x4^2*x7+26013*x5*x7+13099*x1*x5*x7+26272*x3*x5*x7+28198*x4^2*x5*x7+24451*x5^2*x7+13099*x3*x5^2*x7+38050*x5^3*x7+16778*x2*x6*x7+11494*x4*x6*x7+38013*x3*x4*x6*x7+19630*x2*x5*x6*x7+29408*x4*x5*x6*x7+11268*x6^2*x7+33445*x1*x6^2*x7+18988*x3*x6^2*x7+19772*x5*x6^2*x7+38124*x5^2*x6^2*x7+3535*x4*x6^3*x7+15564*x6^4*x7+12577*x7^2+41194*x1*x7^2+1000*x3*x7^2+39371*x3^2*x7^2+21630*x2*x4*x7^2+2926*x4^2*x7^2+5113*x5*x7^2+18346*x1*x5*x7^2+25556*x3*x5*x7^2+41976*x5^2*x7^2+22774*x5^3*x7^2+15741*x2*x6*x7^2+13883*x4*x6*x7^2+28988*x4*x5*x6*x7^2+9619*x6^2*x7^2+32877*x3*x6^2*x7^2+38235*x5*x6^2*x7^2+26021*x6^4*x7^2+1296*x7^3+21239*x1*x7^3+26021*x3*x7^3+10959*x4^2*x7^3+15741*x5*x7^3+37*x3*x5*x7^3+36375*x5^2*x7^3+18420*x2*x6*x7^3+9284*x4*x6*x7^3+6535*x6^2*x7^3+11741*x5*x6^2*x7^3+22943*x7^4+29770*x1*x7^4+12708*x3*x7^4+16885*x5*x7^4+856*x5^2*x7^4+18560*x4*x6*x7^4+11527*x6^2*x7^4+39229*x7^5+30626*x3*x7^5+9601*x5*x7^5+24309*x6^2*x7^5+3712*x7^6+13136*x5*x7^6+21667*x7^7+21881*x7^8+34872*x2*x8+20597*x1*x2*x8+642*x2*x3*x8+41210*x4*x8+31910*x1*x4*x8+13671*x3*x4*x8+22309*x4^3*x8+27486*x2*x5*x8+16241*x4*x5*x8+19630*x3*x4*x5*x8+21630*x2*x5^2*x8+22914*x4*x5^2*x8+27147*x6*x8+23848*x1*x6*x8+39408*x3*x6*x8+21630*x3^2*x6*x8+13062*x2*x4*x6*x8+7494*x4^2*x6*x8+40000*x5*x6*x8+6494*x1*x5*x6*x8+12383*x3*x5*x6*x8+3710*x5^2*x6*x8+23667*x5^3*x6*x8+17383*x2*x6^2*x8+17667*x4*x6^2*x8+5358*x4*x5*x6^2*x8+1713*x6^3*x8+37*x3*x6^3*x8+37305*x5*x6^3*x8+13778*x6^5*x8+29914*x2*x7*x8+6494*x2*x3*x7*x8+10704*x4*x7*x8+30124*x1*x4*x7*x8+36692*x3*x4*x7*x8+5889*x2*x5*x7*x8+37655*x4*x5*x7*x8+23741*x4*x5^2*x7*x8+31761*x6*x7*x8+4679*x1*x6*x7*x8+37655*x3*x6*x7*x8+111*x4^2*x6*x7*x8+24235*x5*x6*x7*x8+36988*x3*x5*x6*x7*x8+1617*x5^2*x6*x7*x8+31630*x2*x6^2*x7*x8+21284*x4*x6^2*x7*x8+22029*x6^3*x7*x8+6848*x5*x6^3*x7*x8+34229*x2*x7^2*x8+33195*x4*x7^2*x8+13247*x3*x4*x7^2*x8+8000*x2*x5*x7^2*x8+37025*x4*x5*x7^2*x8+20590*x6*x7^2*x8+39519*x1*x6*x7^2*x8+19889*x3*x6*x7^2*x8+19432*x5*x6*x7^2*x8+27334*x5^2*x6*x7^2*x8+2383*x4*x6^2*x7^2*x8+37577*x6^3*x7^2*x8+10959*x2*x7^3*x8+325*x4*x7^3*x8+40972*x4*x5*x7^3*x8+19136*x6*x7^3*x8+7704*x3*x6*x7^3*x8+6906*x5*x6*x7^3*x8+10642*x6^3*x7^3*x8+27305*x2*x7^4*x8+21984*x4*x7^4*x8+5632*x6*x7^4*x8+40914*x5*x6*x7^4*x8+1358*x4*x7^5*x8+24457*x6*x7^5*x8+13741*x6*x7^6*x8+16283*x8^2+16705*x1*x8^2+5889*x2^2*x8^2+27492*x3*x8^2+38692*x1*x3*x8^2+15420*x3^2*x8^2+16741*x2*x4*x8^2+39871*x4^2*x8^2+5972*x5*x8^2+31556*x1*x5*x8^2+23772*x3*x5*x8^2+39445*x4^2*x5*x8^2+23505*x5^2*x8^2+27630*x3*x5^2*x8^2+29807*x5^3*x8^2+38013*x2*x6*x8^2+19096*x4*x6*x8^2+31630*x3*x4*x6*x8^2+26383*x2*x5*x6*x8^2+30457*x4*x5*x6*x8^2+8971*x6^2*x8^2+28951*x1*x6^2*x8^2+27667*x3*x6^2*x8^2+2148*x5*x6^2*x8^2+22198*x5^2*x6^2*x8^2+20486*x4*x6^3*x8^2+28268*x6^4*x8^2+22204*x7*x8^2+23624*x1*x7*x8^2+33337*x3*x7*x8^2+22383*x3^2*x7*x8^2+21136*x2*x4*x7*x8^2+11926*x4^2*x7*x8^2+36407*x5*x7*x8^2+34272*x1*x5*x7*x8^2+29062*x3*x5*x7*x8^2+41840*x5^2*x7*x8^2+20486*x5^3*x7*x8^2+26309*x2*x6*x7*x8^2+27852*x4*x6*x7*x8^2+31001*x4*x5*x6*x7*x8^2+14889*x6^2*x7*x8^2+28618*x3*x6^2*x7*x8^2+26779*x5*x6^2*x7*x8^2+20457*x6^4*x7*x8^2+9210*x7^2*x8^2+22235*x1*x7^2*x8^2+11605*x3*x7^2*x8^2+14309*x4^2*x7^2*x8^2+932*x5*x7^2*x8^2+3667*x3*x5*x7^2*x8^2+25223*x5^2*x7^2*x8^2+12840*x2*x6*x7^2*x8^2+22285*x4*x6*x7^2*x8^2+35816*x6^2*x7^2*x8^2+29543*x5*x6^2*x7^2*x8^2+6028*x7^3*x8^2+4708*x1*x7^3*x8^2+15593*x3*x7^3*x8^2+41750*x5*x7^3*x8^2+6790*x5^2*x7^3*x8^2+21469*x4*x6*x7^3*x8^2+21839*x6^2*x7^3*x8^2+30070*x7^4*x8^2+11284*x3*x7^4*x8^2+41099*x5*x7^4*x8^2+6877*x6^2*x7^4*x8^2+38056*x7^5*x8^2+39902*x5*x7^5*x8^2+29552*x7^6*x8^2+35910*x7^7*x8^2+25164*x2*x8^3+31556*x2*x3*x8^3+25901*x4*x8^3+29807*x1*x4*x8^3+33305*x3*x4*x8^3+39836*x2*x5*x8^3+30700*x4*x5*x8^3+37548*x4*x5^2*x8^3+15154*x6*x8^3+12634*x1*x6*x8^3+30700*x3*x6*x8^3+29231*x4^2*x6*x8^3+19420*x5*x6*x8^3+41828*x3*x5*x6*x8^3+36293*x5^2*x6*x8^3+37976*x2*x6^2*x8^3+26906*x4*x6^2*x8^3+30836*x6^3*x8^3+18531*x5*x6^3*x8^3+24169*x2*x7*x8^3+5321*x4*x7*x8^3+8560*x3*x4*x7*x8^3+17305*x2*x5*x7*x8^3+27577*x4*x5*x7*x8^3+29591*x6*x7*x8^3+34795*x1*x6*x7*x8^3+14124*x3*x6*x7*x8^3+38705*x5*x6*x7*x8^3+21469*x5^2*x6*x7*x8^3+29358*x4*x6^2*x7*x8^3+17617*x6^3*x7*x8^3+10243*x2*x7^2*x8^3+20729*x4*x7^2*x8^3+37247*x4*x5*x7^2*x8^3+17266*x6*x7^2*x8^3+11012*x3*x6*x7^2*x8^3+5517*x5*x6*x7^2*x8^3+20972*x6^3*x7^2*x8^3+185*x2*x7^3*x8^3+4835*x4*x7^3*x8^3+18415*x6*x7^3*x8^3+9532*x5*x6*x7^3*x8^3+28190*x4*x7^4*x8^3+34590*x6*x7^4*x8^3+28354*x6*x7^5*x8^3+3616*x8^4+41087*x1*x8^4+4784*x3*x8^4+34766*x3^2*x8^4+2354*x2*x4*x8^4+27198*x4^2*x8^4+26633*x5*x8^4+10885*x1*x5*x8^4+3210*x3*x5*x8^4+7208*x5^2*x8^4+6605*x5^3*x8^4+856*x2*x6*x8^4+9669*x4*x6*x8^4+22568*x4*x5*x6*x8^4+20576*x6^2*x8^4+36235*x3*x6^2*x8^4+24679*x5*x6^2*x8^4+11099*x6^4*x8^4+25845*x7*x8^4+38803*x1*x7*x8^4+4601*x3*x7*x8^4+36235*x4^2*x7*x8^4+17772*x5*x7*x8^4+13395*x3*x5*x7*x8^4+33852*x5^2*x7*x8^4+4222*x2*x6*x7*x8^4+11839*x4*x6*x7*x8^4+26401*x6^2*x7*x8^4+24853*x5*x6^2*x7*x8^4+7578*x7^2*x8^4+1469*x1*x7^2*x8^4+14679*x3*x7^2*x8^4+41605*x5*x7^2*x8^4+272*x5^2*x7^2*x8^4+18248*x4*x6*x7^2*x8^4+38607*x6^2*x7^2*x8^4+33346*x7^3*x8^4+37791*x3*x7^3*x8^4+32343*x5*x7^3*x8^4+19271*x6^2*x7^3*x8^4+17261*x7^4*x8^4+4835*x5*x7^4*x8^4+34959*x7^5*x8^4+22198*x7^6*x8^4+25521*x2*x8^5+7281*x4*x8^5+9247*x3*x4*x8^5+27630*x2*x5*x8^5+2753*x4*x5*x8^5+13352*x6*x8^5+22383*x1*x6*x8^5+36198*x3*x6*x8^5+9074*x5*x6*x8^5+37260*x5^2*x6*x8^5+15593*x4*x6^2*x8^5+28585*x6^3*x8^5+679*x2*x7*x8^5+20852*x4*x7*x8^5+29865*x4*x5*x7*x8^5+9395*x6*x7*x8^5+27223*x3*x6*x7*x8^5+11384*x5*x6*x7*x8^5+3868*x6^3*x7*x8^5+31976*x2*x7^2*x8^5+27754*x4*x7^2*x8^5+34304*x6*x7^2*x8^5+16888*x5*x6*x7^2*x8^5+9152*x4*x7^3*x8^5+11155*x6*x7^3*x8^5+3186*x6*x7^4*x8^5+4366*x8^6+32589*x1*x8^6+36838*x3*x8^6+23165*x4^2*x8^6+31948*x5*x8^6+11099*x3*x5*x8^6+10527*x5^2*x8^6+31445*x2*x6*x8^6+27087*x4*x6*x8^6+10132*x6^2*x8^6+31704*x5*x6^2*x8^6+24534*x7*x8^6+23342*x1*x7*x8^6+38404*x3*x7*x8^6+29974*x5*x7*x8^6+4576*x5^2*x7*x8^6+38922*x4*x6*x7*x8^6+25263*x6^2*x7*x8^6+28854*x7^2*x8^6+22103*x3*x7^2*x8^6+19979*x5*x7^2*x8^6+41236*x6^2*x7^2*x8^6+695*x7^3*x8^6+38853*x5*x7^3*x8^6+11902*x7^4*x8^6+38309*x7^5*x8^6+16955*x2*x8^7+31589*x4*x8^7+14066*x4*x5*x8^7+31553*x6*x8^7+10568*x3*x6*x8^7+41342*x5*x6*x8^7+23556*x6^3*x8^7+3572*x2*x7*x8^7+8930*x4*x7*x8^7+6510*x6*x7*x8^7+31038*x5*x6*x7*x8^7+31260*x4*x7^2*x8^7+16100*x6*x7^2*x8^7+11197*x6*x7^3*x8^7+27098*x8^8+9638*x1*x8^8+14457*x3*x8^8+16671*x5*x8^8+24914*x5^2*x8^8+4531*x4*x6*x8^8+25482*x6^2*x8^8+35661*x7*x8^8+36692*x3*x7*x8^8+28655*x5*x7*x8^8+4864*x6^2*x7*x8^8+17161*x7^2*x8^8+21284*x5*x7^2*x8^8+32568*x7^3*x8^8+26692*x7^4*x8^8+25593*x2*x8^9+19453*x4*x8^9+9743*x6*x8^9+22383*x5*x6*x8^9+39017*x4*x7*x8^9+30243*x6*x7*x8^9+38861*x6*x7^2*x8^9+446*x8^10+28235*x3*x8^10+24095*x5*x8^10+9815*x6^2*x8^10+40480*x7*x8^10+6280*x5*x7*x8^10+9811*x7^2*x8^10+6679*x7^3*x8^10+38943*x4*x8^11+11243*x6*x8^11+10568*x6*x7*x8^11+12386*x8^12+24951*x5*x8^12+7247*x7*x8^12+31696*x7^2*x8^12+32161*x6*x8^13+15206*x8^14+41799*x7*x8^14+13457*x8^16",
    "34301+41674*x1+31547*x2^2+7381*x3+5765*x1*x3+9976*x2^2*x3+177*x3^2+13955*x1*x3^2+38515*x3^3+3079*x2*x4+3017*x1*x2*x4+21215*x2*x3*x4+33129*x4^2+6885*x1*x4^2+19778*x3*x4^2+35408*x4^4+10310*x5+35952*x1*x5+2198*x2^2*x5+16237*x3*x5+14214*x1*x3*x5+40264*x3^2*x5+34993*x2*x4*x5+14550*x4^2*x5+29548*x3*x4^2*x5+20267*x5^2+34795*x1*x5^2+17902*x3*x5^2+37*x3^2*x5^2+10753*x2*x4*x5^2+28935*x4^2*x5^2+32898*x5^3+34943*x3*x5^3+27947*x5^4+15211*x2*x6+13173*x1*x2*x6+12149*x2*x3*x6+23589*x4*x6+14213*x1*x4*x6+30824*x3*x4*x6+7387*x3^2*x4*x6+30774*x2*x4^2*x6+31227*x4^3*x6+32543*x2*x5*x6+8851*x2*x3*x5*x6+38356*x4*x5*x6+39112*x1*x4*x5*x6+23704*x3*x4*x5*x6+11826*x2*x5^2*x6+41219*x4*x5^2*x6+22420*x4*x5^3*x6+36883*x6^2+21877*x1*x6^2+11086*x2^2*x6^2+2246*x3*x6^2+14922*x1*x3*x6^2+19181*x3^2*x6^2+8093*x2*x4*x6^2+29235*x4^2*x6^2+25256*x5*x6^2+32967*x1*x5*x6^2+40502*x3*x5*x6^2+38383*x4^2*x5*x6^2+2779*x5^2*x6^2+40655*x3*x5^2*x6^2+31371*x5^3*x6^2+30185*x2*x6^3+26544*x4*x6^3+28523*x3*x4*x6^3+31149*x2*x5*x6^3+12910*x4*x5*x6^3+22178*x6^4+17980*x3*x6^4+35886*x5*x6^4+9173*x4*x6^5+40087*x6^6+22512*x7+27274*x1*x7+16170*x2^2*x7+3469*x3*x7+18758*x1*x3*x7+15223*x3^2*x7+38552*x3^3*x7+20417*x2*x4*x7+5987*x2*x3*x4*x7+12284*x4^2*x7+7593*x1*x4^2*x7+37931*x3*x4^2*x7+40308*x5*x7+18309*x1*x5*x7+14283*x2^2*x5*x7+13501*x3*x5*x7+28095*x1*x3*x5*x7+29733*x3^2*x5*x7+15488*x2*x4*x5*x7+23820*x4^2*x5*x7+38850*x5^2*x7+34795*x1*x5^2*x7+18457*x3*x5^2*x7+9506*x4^2*x5^2*x7+30605*x5^3*x7+34980*x3*x5^3*x7+38589*x5^4*x7+23981*x2*x6*x7+28719*x1*x2*x6*x7+2680*x2*x3*x6*x7+34869*x4*x6*x7+16946*x1*x4*x6*x7+30848*x3*x4*x6*x7+22642*x4^3*x6*x7+11428*x2*x5*x6*x7+25471*x4*x5*x6*x7+34605*x3*x4*x5*x6*x7+21199*x2*x5^2*x6*x7+5345*x4*x5^2*x6*x7+29864*x6^2*x7+23532*x1*x6^2*x7+11214*x3*x6^2*x7+7778*x3^2*x6^2*x7+26705*x2*x4*x6^2*x7+16284*x4^2*x6^2*x7+20266*x5*x6^2*x7+33138*x3*x5*x6^2*x7+24607*x5^2*x6^2*x7+39752*x2*x6^3*x7+1096*x4*x6^3*x7+25902*x4*x5*x6^3*x7+21333*x6^4*x7+12280*x3*x6^4*x7+30584*x5*x6^4*x7+41923*x7^2+19375*x1*x7^2+24732*x2^2*x7^2+41259*x3*x7^2+6922*x1*x3*x7^2+11860*x3^2*x7^2+32912*x2*x4*x7^2+22679*x4^2*x7^2+23926*x3*x4^2*x7^2+26095*x5*x7^2+34827*x1*x5*x7^2+20690*x3*x5*x7^2+31408*x3^2*x5*x7^2+41125*x2*x4*x5*x7^2+1752*x4^2*x5*x7^2+32974*x5^2*x7^2+15889*x3*x5^2*x7^2+36449*x5^3*x7^2+16341*x2*x6*x7^2+39101*x2*x3*x6*x7^2+20319*x4*x6*x7^2+14827*x1*x4*x6*x7^2+7630*x3*x4*x6*x7^2+6672*x2*x5*x6*x7^2+40075*x4*x5*x6*x7^2+12581*x4*x5^2*x6*x7^2+13902*x6^2*x7^2+25952*x1*x6^2*x7^2+1002*x3*x6^2*x7^2+28322*x4^2*x6^2*x7^2+41426*x5*x6^2*x7^2+26420*x3*x5*x6^2*x7^2+7530*x5^2*x6^2*x7^2+35720*x2*x6^3*x7^2+37181*x4*x6^3*x7^2+31863*x6^4*x7^2+38207*x7^3+34412*x1*x7^3+13791*x2^2*x7^3+28011*x3*x7^3+3461*x1*x3*x7^3+6959*x3^2*x7^3+33397*x2*x4*x7^3+25926*x4^2*x7^3+22481*x5*x7^3+12354*x1*x5*x7^3+16721*x3*x5*x7^3+15371*x4^2*x5*x7^3+6063*x5^2*x7^3+21062*x3*x5^2*x7^3+31371*x5^3*x7^3+21189*x2*x6*x7^3+1519*x4*x6*x7^3+32972*x3*x4*x6*x7^3+27752*x2*x5*x6*x7^3+26314*x4*x5*x6*x7^3+25780*x6^2*x7^3+27884*x3*x6^2*x7^3+12112*x5*x6^2*x7^3+13395*x4*x6^3*x7^3+29532*x6^4*x7^3+20827*x7^4+11807*x1*x7^4+15754*x3*x7^4+7033*x3^2*x7^4+17823*x2*x4*x7^4+13659*x4^2*x7^4+40136*x5*x7^4+31519*x3*x5*x7^4+2288*x5^2*x7^4+22093*x2*x6*x7^4+32712*x4*x6*x7^4+6975*x4*x5*x6*x7^4+38226*x6^2*x7^4+36264*x3*x6^2*x7^4+38948*x5*x6^2*x7^4+10996*x7^5+11144*x3*x7^5+38161*x4^2*x7^5+24370*x5*x7^5+27984*x3*x5*x7^5+14066*x5^2*x7^5+7091*x2*x6*x7^5+2576*x4*x6*x7^5+7207*x6^2*x7^5+37992*x7^6+17490*x3*x7^6+31408*x5*x7^6+30124*x4*x6*x7^6+8716*x6^2*x7^6+39260*x7^7+38515*x3*x7^7+8745*x5*x7^7+37873*x7^8+26282*x2*x8+41290*x1*x2*x8+19114*x2*x3*x8+28148*x2*x3^2*x8+7019*x4*x8+37820*x1*x4*x8+12777*x2^2*x4*x8+551*x3*x4*x8+9416*x1*x3*x4*x8+18737*x3^2*x4*x8+2493*x2*x4^2*x8+7658*x4^3*x8+17625*x2*x5*x8+4122*x1*x2*x5*x8+33295*x2*x3*x5*x8+4320*x4*x5*x8+37511*x1*x4*x5*x8+1249*x3*x4*x5*x8+6901*x4^3*x5*x8+24160*x2*x5^2*x8+33579*x4*x5^2*x8+27815*x3*x4*x5^2*x8+40322*x2*x5^3*x8+17654*x4*x5^3*x8+17806*x6*x8+22660*x1*x6*x8+8455*x2^2*x6*x8+8727*x3*x6*x8+18975*x1*x3*x6*x8+10293*x3^2*x6*x8+8491*x2*x4*x6*x8+20149*x4^2*x6*x8+13728*x3*x4^2*x6*x8+23838*x5*x6*x8+4311*x1*x5*x6*x8+41094*x3*x5*x6*x8+26050*x3^2*x5*x6*x8+32422*x2*x4*x5*x6*x8+5258*x4^2*x5*x6*x8+30326*x5^2*x6*x8+32248*x3*x5^2*x6*x8+26790*x5^3*x6*x8+23817*x2*x6^2*x8+14187*x2*x3*x6^2*x8+4621*x4*x6^2*x8+27963*x1*x4*x6^2*x8+7705*x3*x4*x6^2*x8+20105*x2*x5*x6^2*x8+17515*x4*x5*x6^2*x8+28322*x4*x5^2*x6^2*x8+35816*x6^3*x8+35125*x1*x6^3*x8+25391*x3*x6^3*x8+15371*x4^2*x6^3*x8+28924*x5*x6^3*x8+111*x3*x5*x6^3*x8+33950*x5^2*x6^3*x8+4296*x2*x6^4*x8+19617*x4*x6^4*x8+12302*x6^5*x8+18656*x2*x7*x8+37236*x1*x2*x7*x8+41031*x2*x3*x7*x8+28460*x4*x7*x8+2739*x1*x4*x7*x8+29621*x3*x4*x7*x8+25099*x3^2*x4*x7*x8+28322*x2*x4^2*x7*x8+17592*x4^3*x7*x8+19522*x2*x5*x7*x8+36226*x2*x3*x5*x7*x8+27783*x4*x5*x7*x8+40185*x1*x4*x5*x7*x8+16122*x3*x4*x5*x7*x8+20609*x2*x5^2*x7*x8+6169*x4*x5^2*x7*x8+15371*x4*x5^3*x7*x8+33884*x6*x7*x8+11531*x1*x6*x7*x8+27708*x2^2*x6*x7*x8+30187*x3*x6*x7*x8+26013*x1*x3*x6*x7*x8+8668*x3^2*x6*x7*x8+16541*x2*x4*x6*x7*x8+2895*x4^2*x6*x7*x8+41578*x5*x6*x7*x8+2557*x1*x5*x6*x7*x8+11691*x3*x5*x6*x7*x8+29151*x4^2*x5*x6*x7*x8+28243*x5^2*x6*x7*x8+31852*x3*x5^2*x6*x7*x8+28988*x5^3*x6*x7*x8+7053*x2*x6^2*x7*x8+6222*x4*x6^2*x7*x8+35878*x3*x4*x6^2*x7*x8+25502*x2*x5*x6^2*x7*x8+22901*x4*x5*x6^2*x7*x8+11308*x6^3*x7*x8+18326*x3*x6^3*x7*x8+20603*x5*x6^3*x7*x8+6975*x4*x6^4*x7*x8+3569*x6^5*x7*x8+35138*x2*x7^2*x8+35497*x1*x2*x7^2*x8+25869*x2*x3*x7^2*x8+11526*x4*x7^2*x8+15741*x1*x4*x7^2*x8+20134*x3*x4*x7^2*x8+7260*x4^3*x7^2*x8+36691*x2*x5*x7^2*x8+12231*x4*x5*x7^2*x8+14853*x3*x4*x5*x7^2*x8+10220*x2*x5^2*x7^2*x8+23201*x4*x5^2*x7^2*x8+23711*x6*x7^2*x8+18035*x1*x6*x7^2*x8+26407*x3*x6*x7^2*x8+31889*x3^2*x6*x7^2*x8+19515*x2*x4*x6*x7^2*x8+10583*x4^2*x6*x7^2*x8+32725*x5*x6*x7^2*x8+34738*x3*x5*x6*x7^2*x8+33173*x5^2*x6*x7^2*x8+3394*x2*x6^2*x7^2*x8+21610*x4*x6^2*x7^2*x8+5158*x4*x5*x6^2*x7^2*x8+5926*x6^3*x7^2*x8+27762*x3*x6^3*x7^2*x8+1726*x5*x6^3*x7^2*x8+6341*x2*x7^3*x8+17998*x2*x3*x7^3*x8+18458*x4*x7^3*x8+15260*x1*x4*x7^3*x8+12285*x3*x4*x7^3*x8+31743*x2*x5*x7^3*x8+35095*x4*x5*x7^3*x8+3493*x4*x5^2*x7^3*x8+19713*x6*x7^3*x8+3863*x1*x6*x7^3*x8+38336*x3*x6*x7^3*x8+38542*x4^2*x6*x7^3*x8+32922*x5*x6*x7^3*x8+31001*x3*x5*x6*x7^3*x8+39804*x5^2*x6*x7^3*x8+6942*x2*x6^2*x7^3*x8+10544*x4*x6^2*x7^3*x8+33825*x6^3*x7^3*x8+15437*x2*x7^4*x8+35084*x4*x7^4*x8+18288*x3*x4*x7^4*x8+33558*x2*x5*x7^4*x8+2648*x4*x5*x7^4*x8+1806*x6*x7^4*x8+39920*x3*x6*x7^4*x8+34160*x5*x6*x7^4*x8+8063*x4*x6^2*x7^4*x8+849*x6^3*x7^4*x8+1936*x2*x7^5*x8+35539*x4*x7^5*x8+2161*x4*x5*x7^5*x8+33809*x6*x7^5*x8+15889*x3*x6*x7^5*x8+38901*x5*x6*x7^5*x8+1654*x2*x7^6*x8+15371*x4*x7^6*x8+41160*x6*x7^6*x8+17136*x4*x7^7*x8+41186*x6*x7^7*x8+41600*x8^2+1013*x1*x8^2+32392*x2^2*x8^2+39296*x3*x8^2+11191*x1*x3*x8^2+37329*x3^2*x8^2+14383*x3^3*x8^2+217*x2*x4*x8^2+26372*x2*x3*x4*x8^2+6390*x4^2*x8^2+38494*x1*x4^2*x8^2+2197*x3*x4^2*x8^2+23701*x5*x8^2+16338*x1*x5*x8^2+19175*x2^2*x5*x8^2+8627*x3*x5*x8^2+39260*x1*x3*x5*x8^2+6605*x3^2*x5*x8^2+34189*x2*x4*x5*x8^2+512*x4^2*x5*x8^2+11767*x5^2*x8^2+27889*x1*x5^2*x8^2+26097*x3*x5^2*x8^2+7260*x4^2*x5^2*x8^2+27907*x5^3*x8^2+15815*x3*x5^3*x8^2+23482*x5^4*x8^2+29445*x2*x6*x8^2+18509*x1*x2*x6*x8^2+24240*x2*x3*x6*x8^2+17657*x4*x6*x8^2+26804*x1*x4*x6*x8^2+40385*x3*x4*x6*x8^2+23001*x4^3*x6*x8^2+26170*x2*x5*x6*x8^2+4493*x4*x5*x6*x8^2+35841*x3*x4*x5*x6*x8^2+2331*x2*x5^2*x6*x8^2+26718*x4*x5^2*x6*x8^2+41936*x6^2*x8^2+19586*x1*x6^2*x8^2+9526*x3*x6^2*x8^2+31704*x3^2*x6^2*x8^2+7097*x2*x4*x6^2*x8^2+12692*x4^2*x6^2*x8^2+41904*x5*x6^2*x8^2+18997*x3*x5*x6^2*x8^2+32217*x5^2*x6^2*x8^2+14094*x2*x6^3*x8^2+37371*x4*x6^3*x8^2+3493*x4*x5*x6^3*x8^2+22311*x6^4*x8^2+19630*x3*x6^4*x8^2+5212*x5*x6^4*x8^2+20579*x7*x8^2+7863*x1*x7*x8^2+20460*x2^2*x7*x8^2+28806*x3*x7*x8^2+901*x1*x3*x7*x8^2+40715*x3^2*x7*x8^2+34643*x2*x4*x7*x8^2+13324*x4^2*x7*x8^2+4100*x3*x4^2*x7*x8^2+40855*x5*x7*x8^2+577*x1*x5*x7*x8^2+22847*x3*x5*x7*x8^2+10901*x3^2*x5*x7*x8^2+19552*x2*x4*x5*x7*x8^2+17943*x4^2*x5*x7*x8^2+25406*x5^2*x7*x8^2+34927*x3*x5^2*x7*x8^2+16670*x5^3*x7*x8^2+8514*x2*x6*x7*x8^2+27648*x2*x3*x6*x7*x8^2+29082*x4*x6*x7*x8^2+35249*x1*x4*x6*x7*x8^2+31086*x3*x4*x6*x7*x8^2+25719*x2*x5*x6*x7*x8^2+21102*x4*x5*x6*x7*x8^2+15800*x4*x5^2*x6*x7*x8^2+26557*x6^2*x7*x8^2+16910*x1*x6^2*x7*x8^2+21544*x3*x6^2*x7*x8^2+21121*x4^2*x6^2*x7*x8^2+29998*x5*x6^2*x7*x8^2+9717*x3*x5*x6^2*x7*x8^2+41240*x5^2*x6^2*x7*x8^2+9510*x2*x6^3*x7*x8^2+25843*x4*x6^3*x7*x8^2+30753*x6^4*x7*x8^2+39106*x7^2*x8^2+24370*x1*x7^2*x8^2+4070*x2^2*x7^2*x8^2+19086*x3*x7^2*x8^2+26494*x1*x3*x7^2*x8^2+40951*x3^2*x7^2*x8^2+18201*x2*x4*x7^2*x8^2+32260*x4^2*x7^2*x8^2+19204*x5*x7^2*x8^2+17791*x1*x5*x7^2*x8^2+2931*x3*x5*x7^2*x8^2+26442*x4^2*x5*x7^2*x8^2+14151*x5^2*x7^2*x8^2+17976*x3*x5^2*x7^2*x8^2+39086*x5^3*x7^2*x8^2+16027*x2*x6*x7^2*x8^2+29894*x4*x6*x7^2*x8^2+15245*x3*x4*x6*x7^2*x8^2+30543*x2*x5*x6*x7^2*x8^2+1611*x4*x5*x6*x7^2*x8^2+5416*x6^2*x7^2*x8^2+17540*x3*x6^2*x7^2*x8^2+37336*x5*x6^2*x7^2*x8^2+10805*x4*x6^3*x7^2*x8^2+36007*x6^4*x7^2*x8^2+34506*x7^3*x8^2+11656*x1*x7^3*x8^2+36015*x3*x7^3*x8^2+4951*x3^2*x7^3*x8^2+4559*x2*x4*x7^3*x8^2+6725*x4^2*x7^3*x8^2+5358*x5*x7^3*x8^2+37976*x3*x5*x7^3*x8^2+40860*x5^2*x7^3*x8^2+37655*x2*x6*x7^3*x8^2+33013*x4*x6*x7^3*x8^2+10968*x4*x5*x6*x7^3*x8^2+18189*x6^2*x7^3*x8^2+11197*x3*x6^2*x7^3*x8^2+7607*x5*x6^2*x7^3*x8^2+2308*x7^4*x8^2+21119*x3*x7^4*x8^2+39434*x4^2*x7^4*x8^2+11011*x5*x7^4*x8^2+34494*x3*x5*x7^4*x8^2+39804*x5^2*x7^4*x8^2+26279*x2*x6*x7^4*x8^2+4978*x4*x6*x7^4*x8^2+1278*x6^2*x7^4*x8^2+9804*x7^5*x8^2+41630*x3*x7^5*x8^2+38755*x5*x7^5*x8^2+31678*x4*x6*x7^5*x8^2+4831*x6^2*x7^5*x8^2+29833*x7^6*x8^2+30124*x3*x7^6*x8^2+8716*x5*x7^6*x8^2+6210*x7^7*x8^2+15299*x2*x8^3+34033*x1*x2*x8^3+39730*x2*x3*x8^3+19628*x4*x8^3+39727*x1*x4*x8^3+6832*x3*x4*x8^3+9527*x3^2*x4*x8^3+38066*x2*x4^2*x8^3+28750*x4^3*x8^3+3458*x2*x5*x8^3+23208*x2*x3*x5*x8^3+31171*x4*x5*x8^3+4729*x1*x4*x5*x8^3+6314*x3*x4*x5*x8^3+33541*x2*x5^2*x8^3+14839*x4*x5^2*x8^3+2938*x4*x5^3*x8^3+4824*x6*x8^3+20471*x1*x6*x8^3+18405*x2^2*x6*x8^3+1181*x3*x6*x8^3+28169*x1*x3*x6*x8^3+41469*x3^2*x6*x8^3+33154*x2*x4*x6*x8^3+17170*x4^2*x6*x8^3+22877*x5*x6*x8^3+1781*x1*x5*x6*x8^3+32200*x3*x5*x6*x8^3+7171*x4^2*x5*x6*x8^3+17997*x5^2*x6*x8^3+20729*x3*x5^2*x6*x8^3+3852*x5^3*x6*x8^3+13463*x2*x6^2*x8^3+17146*x4*x6^2*x8^3+1596*x3*x4*x6^2*x8^3+19782*x2*x5*x6^2*x8^3+26293*x4*x5*x6^2*x8^3+40406*x6^3*x8^3+15571*x3*x6^3*x8^3+35718*x5*x6^3*x8^3+914*x4*x6^4*x8^3+39728*x6^5*x8^3+13833*x2*x7*x8^3+10585*x1*x2*x7*x8^3+24134*x2*x3*x7*x8^3+24096*x4*x7*x8^3+33696*x1*x4*x7*x8^3+20178*x3*x4*x7*x8^3+14135*x4^3*x7*x8^3+15073*x2*x5*x7*x8^3+35406*x4*x5*x7*x8^3+10225*x3*x4*x5*x7*x8^3+27486*x2*x5^2*x7*x8^3+36337*x4*x5^2*x7*x8^3+11498*x6*x7*x8^3+15792*x1*x6*x7*x8^3+7855*x3*x6*x7*x8^3+27392*x3^2*x6*x7*x8^3+31929*x2*x4*x6*x7*x8^3+19605*x4^2*x6*x7*x8^3+25678*x5*x6*x7*x8^3+41113*x3*x5*x6*x7*x8^3+23522*x5^2*x6*x7*x8^3+38460*x2*x6^2*x7*x8^3+36517*x4*x6^2*x7*x8^3+326*x4*x5*x6^2*x7*x8^3+14132*x6^3*x7*x8^3+3979*x3*x6^3*x7*x8^3+10244*x5*x6^3*x7*x8^3+32919*x2*x7^2*x8^3+4722*x2*x3*x7^2*x8^3+30299*x4*x7^2*x8^3+30098*x1*x4*x7^2*x8^3+6286*x3*x4*x7^2*x8^3+441*x2*x5*x7^2*x8^3+21597*x4*x5*x7^2*x8^3+36855*x4*x5^2*x7^2*x8^3+31025*x6*x7^2*x8^3+8781*x1*x6*x7^2*x8^3+4385*x3*x6*x7^2*x8^3+21055*x4^2*x6*x7^2*x8^3+9963*x5*x6*x7^2*x8^3+1480*x3*x5*x6*x7^2*x8^3+9195*x5^2*x6*x7^2*x8^3+23940*x2*x6^2*x7^2*x8^3+13406*x4*x6^2*x7^2*x8^3+31548*x6^3*x7^2*x8^3+11916*x2*x7^3*x8^3+29333*x4*x7^3*x8^3+17907*x3*x4*x7^3*x8^3+28684*x2*x5*x7^3*x8^3+2190*x4*x5*x7^3*x8^3+7798*x6*x7^3*x8^3+23109*x3*x6*x7^3*x8^3+5536*x5*x6*x7^3*x8^3+33983*x4*x6^2*x7^3*x8^3+20075*x6^3*x7^3*x8^3+2324*x2*x7^4*x8^3+12214*x4*x7^4*x8^3+9195*x4*x5*x7^4*x8^3+31742*x6*x7^4*x8^3+16750*x3*x6*x7^4*x8^3+40170*x5*x6*x7^4*x8^3+16871*x2*x7^5*x8^3+38216*x4*x7^5*x8^3+20733*x6*x7^5*x8^3+25643*x4*x7^6*x8^3+40925*x6*x7^6*x8^3+15358*x8^4+18323*x1*x8^4+40407*x2^2*x8^4+17803*x3*x8^4+20486*x1*x3*x8^4+9769*x3^2*x8^4+27260*x2*x4*x8^4+1755*x4^2*x8^4+12724*x3*x4^2*x8^4+2600*x5*x8^4+20320*x1*x5*x8^4+1145*x3*x5*x8^4+15593*x3^2*x5*x8^4+32459*x2*x4*x5*x8^4+36830*x4^2*x5*x8^4+18038*x5^2*x8^4+7432*x3*x5^2*x8^4+21461*x5^3*x8^4+41250*x2*x6*x8^4+1077*x2*x3*x6*x8^4+4860*x4*x6*x8^4+22938*x1*x4*x6*x8^4+23083*x3*x4*x6*x8^4+4232*x2*x5*x6*x8^4+24720*x4*x5*x6*x8^4+15767*x4*x5^2*x6*x8^4+23564*x6^2*x8^4+26681*x1*x6^2*x8^4+22182*x3*x6^2*x8^4+34113*x4^2*x6^2*x8^4+14987*x5*x6^2*x8^4+8259*x3*x5*x6^2*x8^4+23961*x5^2*x6^2*x8^4+35974*x2*x6^3*x8^4+36567*x4*x6^3*x8^4+5940*x6^4*x8^4+28130*x7*x8^4+7244*x1*x7*x8^4+13547*x2^2*x7*x8^4+41243*x3*x7*x8^4+8560*x1*x3*x7*x8^4+8988*x3^2*x7*x8^4+28951*x2*x4*x7*x8^4+32255*x4^2*x7*x8^4+14354*x5*x7*x8^4+20613*x1*x5*x7*x8^4+25973*x3*x5*x7*x8^4+20892*x4^2*x5*x7*x8^4+6167*x5^2*x7*x8^4+16148*x3*x5^2*x7*x8^4+1643*x5^3*x7*x8^4+16468*x2*x6*x7*x8^4+16169*x4*x6*x7*x8^4+16311*x3*x4*x6*x7*x8^4+35322*x2*x5*x6*x7*x8^4+17377*x4*x5*x6*x7*x8^4+9587*x6^2*x7*x8^4+7868*x3*x6^2*x7*x8^4+3786*x5*x6^2*x7*x8^4+9195*x4*x6^3*x7*x8^4+40032*x6^4*x7*x8^4+20141*x7^2*x8^4+15054*x1*x7^2*x8^4+26713*x3*x7^2*x8^4+5691*x3^2*x7^2*x8^4+39304*x2*x4*x7^2*x8^4+9956*x4^2*x7^2*x8^4+2577*x5*x7^2*x8^4+1469*x3*x5*x7^2*x8^4+28516*x5^2*x7^2*x8^4+22919*x2*x6*x7^2*x8^4+15166*x4*x6*x7^2*x8^4+25202*x4*x5*x6*x7^2*x8^4+11256*x6^2*x7^2*x8^4+18520*x3*x6^2*x7^2*x8^4+16734*x5*x6^2*x7^2*x8^4+17831*x7^3*x8^4+26617*x3*x7^3*x8^4+6812*x4^2*x7^3*x8^4+33136*x5*x7^3*x8^4+35952*x3*x5*x7^3*x8^4+36159*x5^2*x7^3*x8^4+2099*x2*x6*x7^3*x8^4+24451*x4*x6*x7^3*x8^4+20424*x6^2*x7^3*x8^4+36881*x7^4*x8^4+1293*x3*x7^4*x8^4+30347*x5*x7^4*x8^4+18857*x4*x6*x7^4*x8^4+15877*x6^2*x7^4*x8^4+8733*x7^5*x8^4+17786*x3*x7^5*x8^4+39561*x5*x7^5*x8^4+29060*x7^6*x8^4+2517*x2*x8^5+16137*x1*x2*x8^5+21323*x2*x3*x8^5+31116*x4*x8^5+9852*x1*x4*x8^5+11694*x3*x4*x8^5+29902*x4^3*x8^5+20834*x2*x5*x8^5+33449*x4*x5*x8^5+7445*x3*x4*x5*x8^5+34061*x2*x5^2*x8^5+34607*x4*x5^2*x8^5+28772*x6*x8^5+10101*x1*x6*x8^5+38305*x3*x6*x8^5+5432*x3^2*x6*x8^5+36196*x2*x4*x6*x8^5+22335*x4^2*x6*x8^5+9572*x5*x6*x8^5+25184*x3*x5*x6*x8^5+19112*x5^2*x6*x8^5+19845*x2*x6^2*x8^5+19399*x4*x6^2*x8^5+21369*x4*x5*x6^2*x8^5+30531*x6^3*x8^5+15593*x3*x6^3*x8^5+33634*x5*x6^3*x8^5+5464*x2*x7*x8^5+11441*x2*x3*x7*x8^5+36177*x4*x7*x8^5+33421*x1*x4*x7*x8^5+30224*x3*x4*x7*x8^5+31644*x2*x5*x7*x8^5+4663*x4*x5*x7*x8^5+29295*x4*x5^2*x7*x8^5+21688*x6*x7*x8^5+21480*x1*x6*x7*x8^5+3247*x3*x6*x7*x8^5+32429*x4^2*x6*x7*x8^5+37355*x5*x6*x7*x8^5+4248*x3*x5*x6*x7*x8^5+21175*x5^2*x6*x7*x8^5+16008*x2*x6^2*x7*x8^5+24989*x4*x6^2*x7*x8^5+13869*x6^3*x7*x8^5+9224*x2*x7^2*x8^5+38031*x4*x7^2*x8^5+15826*x3*x4*x7^2*x8^5+14169*x2*x5*x7^2*x8^5+33374*x4*x5*x7^2*x8^5+1201*x6*x7^2*x8^5+6476*x3*x6*x7^2*x8^5+21383*x5*x6*x7^2*x8^5+41340*x4*x6^2*x7^2*x8^5+22689*x6^3*x7^2*x8^5+7314*x2*x7^3*x8^5+673*x4*x7^3*x8^5+6424*x4*x5*x7^3*x8^5+25441*x6*x7^3*x8^5+22172*x3*x6*x7^3*x8^5+12536*x5*x6*x7^3*x8^5+17872*x2*x7^4*x8^5+24944*x4*x7^4*x8^5+27023*x6*x7^4*x8^5+9480*x4*x7^5*x8^5+18313*x6*x7^5*x8^5+21695*x8^6+10682*x1*x8^6+34864*x2^2*x8^6+1024*x3*x8^6+20169*x1*x3*x8^6+13387*x3^2*x8^6+33435*x2*x4*x8^6+27650*x4^2*x8^6+39215*x5*x8^6+12597*x1*x5*x8^6+12444*x3*x5*x8^6+17691*x4^2*x5*x8^6+28112*x5^2*x8^6+27482*x3*x5^2*x8^6+15321*x5^3*x8^6+31282*x2*x6*x8^6+14425*x4*x6*x8^6+21041*x3*x4*x6*x8^6+10361*x2*x5*x6*x8^6+12081*x4*x5*x6*x8^6+29329*x6^2*x8^6+25846*x3*x6^2*x8^6+25642*x5*x6^2*x8^6+15075*x4*x6^3*x8^6+25332*x6^4*x8^6+41263*x7*x8^6+26457*x1*x7*x8^6+20632*x3*x7*x8^6+37437*x3^2*x7*x8^6+41711*x2*x4*x7*x8^6+14969*x4^2*x7*x8^6+3075*x5*x7*x8^6+8457*x3*x5*x7*x8^6+17905*x5^2*x7*x8^6+30559*x2*x6*x7*x8^6+19141*x4*x6*x7*x8^6+27301*x4*x5*x6*x7*x8^6+30119*x6^2*x7*x8^6+28613*x3*x6^2*x7*x8^6+28267*x5*x6^2*x7*x8^6+25724*x7^2*x8^6+17495*x3*x7^2*x8^6+13521*x4^2*x7^2*x8^6+21110*x5*x7^2*x8^6+4127*x3*x5*x7^2*x8^6+10689*x5^2*x7^2*x8^6+27369*x2*x6*x7^2*x8^6+26170*x4*x6*x7^2*x8^6+27718*x6^2*x7^2*x8^6+20141*x7^3*x8^6+8703*x3*x7^3*x8^6+14619*x5*x7^3*x8^6+21291*x4*x6*x7^3*x8^6+9792*x6^2*x7^3*x8^6+4563*x7^4*x8^6+17976*x3*x7^4*x8^6+39086*x5*x7^4*x8^6+30117*x7^5*x8^6+12209*x2*x8^7+38779*x2*x3*x8^7+25283*x4*x8^7+25062*x1*x4*x8^7+15642*x3*x4*x8^7+31953*x2*x5*x8^7+17295*x4*x5*x8^7+25939*x4*x5^2*x8^7+24215*x6*x8^7+21371*x1*x6*x8^7+29490*x3*x6*x8^7+30853*x4^2*x6*x8^7+1197*x5*x6*x8^7+185*x3*x5*x6*x8^7+18716*x5^2*x6*x8^7+27715*x2*x6^2*x8^7+148*x4*x6^2*x8^7+18742*x6^3*x8^7+23790*x2*x7*x8^7+12157*x4*x7*x8^7+37997*x3*x4*x7*x8^7+24133*x2*x5*x7*x8^7+34218*x4*x5*x7*x8^7+3057*x6*x7*x8^7+4228*x3*x6*x7*x8^7+27098*x5*x6*x7*x8^7+28714*x4*x6^2*x7*x8^7+12241*x6^3*x7*x8^7+16050*x2*x7^2*x8^7+35967*x4*x7^2*x8^7+18294*x4*x5*x7^2*x8^7+26320*x6*x7^2*x8^7+20285*x3*x6*x7^2*x8^7+8585*x5*x6*x7^2*x8^7+27486*x2*x7^3*x8^7+11008*x4*x7^3*x8^7+20179*x6*x7^3*x8^7+6039*x4*x7^4*x8^7+5909*x6*x7^4*x8^7+6784*x8^8+32256*x1*x8^8+8903*x3*x8^8+10531*x3^2*x8^8+5617*x2*x4*x8^8+16729*x4^2*x8^8+39512*x5*x8^8+7889*x3*x5*x8^8+17348*x5^2*x8^8+16640*x2*x6*x8^8+41511*x4*x6*x8^8+22975*x4*x5*x6*x8^8+22813*x6^2*x8^8+32729*x3*x6^2*x8^8+28792*x5*x6^2*x8^8+25317*x7*x8^8+39811*x3*x7*x8^8+17765*x4^2*x7*x8^8+1907*x5*x7*x8^8+10309*x3*x5*x7*x8^8+37247*x5^2*x7*x8^8+37547*x2*x6*x7*x8^8+21937*x4*x6*x7*x8^8+10166*x6^2*x7*x8^8+30456*x7^2*x8^8+14050*x3*x7^2*x8^8+9393*x5*x7^2*x8^8+1077*x4*x6*x7^2*x8^8+18314*x6^2*x7^2*x8^8+10875*x7^3*x8^8+21284*x3*x7^3*x8^8+30816*x5*x7^3*x8^8+37238*x7^4*x8^8+20523*x2*x8^9+5635*x4*x8^9+2251*x3*x4*x8^9+14050*x2*x5*x8^9+4798*x4*x5*x8^9+33769*x6*x8^9+38647*x3*x6*x8^9+13215*x5*x6*x8^9+6235*x4*x6^2*x8^9+5419*x6^3*x8^9+26702*x2*x7*x8^9+24979*x4*x7*x8^9+38705*x4*x5*x7*x8^9+3105*x6*x7*x8^9+33453*x3*x6*x7*x8^9+29670*x5*x6*x7*x8^9+27472*x2*x7^2*x8^9+22245*x4*x7^2*x8^9+25543*x6*x7^2*x8^9+2394*x4*x7^3*x8^9+36028*x6*x7^3*x8^9+38070*x8^10+15794*x3*x8^10+11741*x4^2*x8^10+8612*x5*x8^10+39408*x3*x5*x8^10+27519*x5^2*x8^10+26605*x2*x6*x8^10+14593*x4*x6*x8^10+15665*x6^2*x8^10+4259*x7*x8^10+12996*x3*x7*x8^10+15280*x5*x7*x8^10+1987*x4*x6*x7*x8^10+16039*x6^2*x7*x8^10+11842*x7^2*x8^10+16095*x3*x7^2*x8^10+22782*x5*x7^2*x8^10+23756*x7^3*x8^10+18889*x2*x8^11+41245*x4*x8^11+40766*x4*x5*x8^11+20446*x6*x8^11+20988*x3*x6*x8^11+13667*x5*x6*x8^11+31186*x2*x7*x8^11+36136*x4*x7*x8^11+25414*x6*x7*x8^11+28544*x4*x7^2*x8^11+12666*x6*x7^2*x8^11+33484*x8^12+5354*x3*x8^12+3155*x5*x8^12+14383*x4*x6*x8^12+27062*x6^2*x8^12+27425*x7*x8^12+22774*x3*x7*x8^12+27091*x5*x7*x8^12+13535*x7^2*x8^12+3963*x2*x8^13+4568*x4*x8^13+41896*x6*x8^13+32877*x4*x7*x8^13+22840*x6*x7*x8^13+31158*x8^14+11815*x3*x8^14+33482*x5*x8^14+12611*x7*x8^14+35445*x4*x8^15+16420*x6*x8^15+25664*x8^16",
    "31502+39359*x1+33224*x2^2+1828*x3+15330*x1*x3+22562*x3^2+36586*x2*x4+25603*x4^2+10087*x3*x4^2+21627*x5+17575*x1*x5+4574*x3*x5+41421*x3^2*x5+33019*x2*x4*x5+34755*x4^2*x5+8972*x5^2+25838*x1*x5^2+6697*x3*x5^2+6216*x5^3+296*x5^4+10570*x2*x6+18842*x2*x3*x6+6308*x4*x6+16844*x1*x4*x6+31809*x3*x4*x6+22832*x2*x5*x6+25517*x4*x5*x6+14379*x4*x5^2*x6+7643*x6^2+27016*x1*x6^2+13658*x3*x6^2+33591*x4^2*x6^2+35512*x5*x6^2+15526*x3*x5*x6^2+39127*x5^2*x6^2+23504*x2*x6^3+41690*x4*x6^3+7000*x6^4+19249*x5*x6^4+2343*x7+15954*x1*x7+39662*x2^2*x7+18025*x3*x7+1628*x1*x3*x7+24315*x3^2*x7+20535*x2*x4*x7+28888*x4^2*x7+6070*x5*x7+36969*x1*x5*x7+19550*x3*x5*x7+31815*x4^2*x5*x7+19617*x5^2*x7+851*x3*x5^2*x7+14994*x5^3*x7+5700*x2*x6*x7+22523*x4*x6*x7+33332*x3*x4*x6*x7+4810*x2*x5*x6*x7+36569*x4*x5*x6*x7+20744*x6^2*x7+36736*x1*x6^2*x7+12575*x3*x6^2*x7+38954*x5*x6^2*x7+4944*x5^2*x6^2*x7+1066*x4*x6^3*x7+31324*x6^4*x7+22971*x7^2+4806*x1*x7^2+28309*x3*x7^2+29854*x3^2*x7^2+39238*x2*x4*x7^2+11250*x4^2*x7^2+10333*x5*x7^2+40792*x1*x5*x7^2+2030*x3*x5*x7^2+8484*x5^2*x7^2+20914*x5^3*x7^2+33290*x2*x6*x7^2+31865*x4*x6*x7^2+9199*x4*x5*x6*x7^2+24288*x6^2*x7^2+29484*x3*x6^2*x7^2+21289*x5*x6^2*x7^2+33406*x6^4*x7^2+23232*x7^3+27859*x1*x7^3+18930*x3*x7^3+17480*x4^2*x7^3+26553*x5*x7^3+13602*x3*x5*x7^3+14336*x5^2*x7^3+2109*x2*x6*x7^3+23758*x4*x6*x7^3+7908*x6^2*x7^3+1036*x5*x6^2*x7^3+3806*x7^4+12307*x1*x7^4+26276*x3*x7^4+28714*x5*x7^4+33500*x5^2*x7^4+7608*x4*x6*x7^4+8892*x6^2*x7^4+30020*x7^5+19619*x3*x7^5+17069*x5*x7^5+32666*x6^2*x7^5+6888*x7^6+962*x5*x7^6+15731*x7^7+31371*x7^8+29408*x2*x8+23225*x1*x2*x8+37169*x2*x3*x8+39356*x4*x8+5465*x1*x4*x8+15397*x3*x4*x8+34483*x4^3*x8+22966*x2*x5*x8+30929*x4*x5*x8+30022*x3*x4*x5*x8+40755*x2*x5^2*x8+36255*x4*x5^2*x8+16290*x6*x8+20588*x1*x6*x8+16508*x3*x6*x8+18805*x3^2*x6*x8+13896*x2*x4*x6*x8+31679*x4^2*x6*x8+9029*x5*x6*x8+37126*x1*x5*x6*x8+5483*x3*x5*x6*x8+23588*x5^2*x6*x8+20026*x5^3*x6*x8+37185*x2*x6^2*x8+19348*x4*x6^2*x8+2572*x4*x5*x6^2*x8+11126*x6^3*x8+27645*x3*x6^3*x8+40603*x5*x6^3*x8+8814*x6^5*x8+40741*x2*x7*x8+32450*x2*x3*x7*x8+19214*x4*x7*x8+31135*x1*x4*x7*x8+2492*x3*x4*x7*x8+22599*x2*x5*x7*x8+31433*x4*x5*x7*x8+39104*x4*x5^2*x7*x8+6424*x6*x7*x8+21035*x1*x6*x7*x8+435*x3*x6*x7*x8+8573*x4^2*x6*x7*x8+20479*x5*x6*x7*x8+21631*x3*x5*x6*x7*x8+34605*x5^2*x6*x7*x8+12555*x2*x6^2*x7*x8+23926*x4*x6^2*x7*x8+6594*x6^3*x7*x8+3949*x5*x6^3*x7*x8+6974*x2*x7^2*x8+36922*x4*x7^2*x8+29845*x3*x4*x7^2*x8+6526*x2*x5*x7^2*x8+5244*x4*x5*x7^2*x8+32836*x6*x7^2*x8+12765*x1*x6*x7^2*x8+19964*x3*x6*x7^2*x8+39329*x5*x6*x7^2*x8+8482*x5^2*x6*x7^2*x8+38950*x4*x6^2*x7^2*x8+13124*x6^3*x7^2*x8+31562*x2*x7^3*x8+8555*x4*x7^3*x8+32806*x4*x5*x7^3*x8+9394*x6*x7^3*x8+41245*x3*x6*x7^3*x8+33271*x5*x6*x7^3*x8+38934*x6^3*x7^3*x8+24805*x2*x7^4*x8+41944*x4*x7^4*x8+23161*x6*x7^4*x8+10354*x5*x6*x7^4*x8+40251*x4*x7^5*x8+6865*x6*x7^5*x8+3427*x6*x7^6*x8+24446*x8^2+5343*x1*x8^2+27586*x2^2*x8^2+35741*x3*x8^2+35595*x1*x3*x8^2+31365*x3^2*x8^2+29896*x2*x4*x8^2+40601*x4^2*x8^2+11641*x5*x8^2+35604*x1*x5*x8^2+17952*x3*x5*x8^2+15078*x4^2*x5*x8^2+30862*x5^2*x8^2+39363*x3*x5^2*x8^2+37127*x5^3*x8^2+16884*x2*x6*x8^2+35746*x4*x6*x8^2+28972*x3*x4*x6*x8^2+25124*x2*x5*x6*x8^2+27180*x4*x5*x6*x8^2+28464*x6^2*x8^2+19467*x1*x6^2*x8^2+31988*x3*x6^2*x8^2+14365*x5*x6^2*x8^2+25214*x5^2*x6^2*x8^2+8829*x4*x6^3*x8^2+481*x6^4*x8^2+22677*x7*x8^2+26244*x1*x7*x8^2+17012*x3*x7*x8^2+41294*x3^2*x7*x8^2+26181*x2*x4*x7*x8^2+32327*x4^2*x7*x8^2+25930*x5*x7*x8^2+4172*x1*x5*x7*x8^2+22079*x3*x5*x7*x8^2+8468*x5^2*x7*x8^2+11146*x5^3*x7*x8^2+9906*x2*x6*x7*x8^2+1772*x4*x6*x7*x8^2+37133*x4*x5*x6*x7*x8^2+41311*x6^2*x7*x8^2+33334*x3*x6^2*x7*x8^2+4506*x5*x6^2*x7*x8^2+21538*x6^4*x7*x8^2+20572*x7^2*x8^2+12258*x1*x7^2*x8^2+8884*x3*x7^2*x8^2+1904*x4^2*x7^2*x8^2+3400*x5*x7^2*x8^2+10498*x3*x5*x7^2*x8^2+10767*x5^2*x7^2*x8^2+9173*x2*x6*x7^2*x8^2+24420*x4*x6*x7^2*x8^2+31796*x6^2*x7^2*x8^2+41224*x5*x6^2*x7^2*x8^2+11177*x7^3*x8^2+14078*x1*x7^3*x8^2+28064*x3*x7^3*x8^2+33635*x5*x7^3*x8^2+27838*x5^2*x7^3*x8^2+4733*x4*x6*x7^3*x8^2+30170*x6^2*x7^3*x8^2+4261*x7^4*x8^2+16274*x3*x7^4*x8^2+15553*x5*x7^4*x8^2+3826*x6^2*x7^4*x8^2+16325*x7^5*x8^2+1808*x5*x7^5*x8^2+37754*x7^6*x8^2+414*x7^7*x8^2+33921*x2*x8^3+20406*x2*x3*x8^3+7512*x4*x8^3+30049*x1*x4*x8^3+31796*x3*x4*x8^3+1649*x2*x5*x8^3+1316*x4*x5*x8^3+5971*x4*x5^2*x8^3+23610*x6*x8^3+537*x1*x6*x8^3+27688*x3*x6*x8^3+10362*x4^2*x6*x8^3+23702*x5*x6*x8^3+27821*x3*x5*x6*x8^3+7730*x5^2*x6*x8^3+13877*x2*x6^2*x8^3+41881*x4*x6^2*x8^3+18943*x6^3*x8^3+36595*x5*x6^3*x8^3+28636*x2*x7*x8^3+15307*x4*x7*x8^3+7989*x3*x4*x7*x8^3+17168*x2*x5*x7*x8^3+11687*x4*x5*x7*x8^3+19318*x6*x7*x8^3+35045*x1*x6*x7*x8^3+18344*x3*x6*x7*x8^3+41248*x5*x6*x7*x8^3+17808*x5^2*x6*x7*x8^3+39810*x4*x6^2*x7*x8^3+23119*x6^3*x7*x8^3+15226*x2*x7^2*x8^3+38452*x4*x7^2*x8^3+5298*x4*x5*x7^2*x8^3+29829*x6*x7^2*x8^3+24917*x3*x6*x7^2*x8^3+31602*x5*x6*x7^2*x8^3+13118*x6^3*x7^2*x8^3+29613*x2*x7^3*x8^3+16204*x4*x7^3*x8^3+19523*x6*x7^3*x8^3+2345*x5*x6*x7^3*x8^3+16697*x4*x7^4*x8^3+1079*x6*x7^4*x8^3+10899*x6*x7^5*x8^3+11275*x8^4+22027*x1*x8^4+29973*x3*x8^4+4885*x3^2*x8^4+39836*x2*x4*x8^4+24220*x4^2*x8^4+29895*x5*x8^4+24946*x1*x5*x8^4+28996*x3*x5*x8^4+21087*x5^2*x8^4+31807*x5^3*x8^4+39033*x2*x6*x8^4+12925*x4*x6*x8^4+24317*x4*x5*x6*x8^4+28886*x6^2*x8^4+38903*x3*x6^2*x8^4+5823*x5*x6^2*x8^4+8574*x6^4*x8^4+27876*x7*x8^4+36575*x1*x7*x8^4+17637*x3*x7*x8^4+9470*x4^2*x7*x8^4+20506*x5*x7*x8^4+30554*x3*x5*x7*x8^4+26374*x5^2*x7*x8^4+34210*x2*x6*x7*x8^4+7869*x4*x6*x7*x8^4+27663*x6^2*x7*x8^4+23558*x5*x6^2*x7*x8^4+28555*x7^2*x8^4+38035*x1*x7^2*x8^4+38951*x3*x7^2*x8^4+15563*x5*x7^2*x8^4+22364*x5^2*x7^2*x8^4+38112*x4*x6*x7^2*x8^4+4565*x6^2*x7^2*x8^4+32859*x7^3*x8^4+35618*x3*x7^3*x8^4+36224*x5*x7^3*x8^4+18895*x6^2*x7^3*x8^4+29717*x7^4*x8^4+4610*x5*x7^4*x8^4+7219*x7^5*x8^4+13109*x7^6*x8^4+17002*x2*x8^5+10630*x4*x8^5+6817*x3*x4*x8^5+31007*x2*x5*x8^5+11687*x4*x5*x8^5+36644*x6*x8^5+26991*x1*x6*x8^5+35014*x3*x6*x8^5+12770*x5*x6*x8^5+10985*x5^2*x6*x8^5+41368*x4*x6^2*x8^5+35259*x6^3*x8^5+26950*x2*x7*x8^5+39567*x4*x7*x8^5+17317*x4*x5*x7*x8^5+13368*x6*x7*x8^5+27330*x3*x6*x7*x8^5+30995*x5*x6*x7*x8^5+22193*x6^3*x7*x8^5+11683*x2*x7^2*x8^5+14572*x4*x7^2*x8^5+24793*x6*x7^2*x8^5+13759*x5*x6*x7^2*x8^5+24753*x4*x7^3*x8^5+29526*x6*x7^3*x8^5+23914*x6*x7^4*x8^5+34754*x8^6+6138*x1*x8^6+8519*x3*x8^6+17899*x4^2*x8^6+39893*x5*x8^6+38440*x3*x5*x8^6+21287*x5^2*x8^6+35798*x2*x6*x8^6+39362*x4*x6*x8^6+41134*x6^2*x8^6+28463*x5*x6^2*x8^6+25252*x7*x8^6+10052*x1*x7*x8^6+32110*x3*x7*x8^6+10871*x5*x7*x8^6+3432*x5^2*x7*x8^6+38896*x4*x6*x7*x8^6+35447*x6^2*x7*x8^6+36694*x7^2*x8^6+5071*x3*x7^2*x8^6+39794*x5*x7^2*x8^6+35293*x6^2*x7^2*x8^6+7946*x7^3*x8^6+26536*x5*x7^3*x8^6+37601*x7^4*x8^6+27036*x7^5*x8^6+1443*x2*x8^7+23019*x4*x8^7+15161*x4*x5*x8^7+30870*x6*x8^7+8461*x3*x6*x8^7+1314*x5*x6*x8^7+3709*x6^3*x8^7+16685*x2*x7*x8^7+267*x4*x7*x8^7+5045*x6*x7*x8^7+16511*x5*x6*x7*x8^7+3766*x4*x7^2*x8^7+18981*x6*x7^2*x8^7+3381*x6*x7^3*x8^7+39511*x8^8+36910*x1*x8^8+40333*x3*x8^8+2880*x5*x8^8+5677*x5^2*x8^8+25050*x4*x6*x8^8+22979*x6^2*x8^8+28644*x7*x8^8+19389*x3*x7*x8^8+25292*x5*x7*x8^8+34022*x6^2*x7*x8^8+34871*x7^2*x8^8+35819*x5*x7^2*x8^8+36584*x7^3*x8^8+9819*x7^4*x8^8+12226*x2*x8^9+34636*x4*x8^9+11350*x6*x8^9+25486*x5*x6*x8^9+19839*x4*x7*x8^9+6801*x6*x7*x8^9+8881*x6*x7^2*x8^9+41336*x8^10+8281*x3*x8^10+23715*x5*x8^10+22850*x6^2*x8^10+37999*x7*x8^10+11078*x5*x7*x8^10+34928*x7^2*x8^10+31723*x7^3*x8^10+14472*x4*x8^11+24322*x6*x8^11+5022*x6*x7*x8^11+17944*x8^12+16677*x5*x8^12+14822*x7*x8^12+16223*x7^2*x8^12+11175*x6*x8^13+5310*x8^14+30838*x7*x8^14+22198*x8^16",
    "20283+4323*x1+31730*x2^2+15304*x3+14991*x1*x3+34393*x3^2+41717*x3^3+15065*x2*x4+4591*x2*x3*x4+4372*x4^2+8422*x1*x4^2+37600*x3*x4^2+24568*x5+28243*x1*x5+10494*x2^2*x5+32364*x3*x5+13215*x1*x3*x5+33981*x3^2*x5+9088*x2*x4*x5+6335*x4^2*x5+40609*x5^2+14029*x1*x5^2+32370*x3*x5^2+27271*x4^2*x5^2+25411*x5^3+41939*x3*x5^3+41791*x5^4+36213*x2*x6+25818*x1*x2*x6+7075*x2*x3*x6+40401*x4*x6+37131*x1*x4*x6+6026*x3*x4*x6+2209*x4^3*x6+39930*x2*x5*x6+14840*x4*x5*x6+14954*x3*x4*x5*x6+19286*x2*x5^2*x6+34948*x4*x5^2*x6+41829*x6^2+27835*x1*x6^2+37923*x3*x6^2+15112*x3^2*x6^2+14182*x2*x4*x6^2+30399*x4^2*x6^2+18429*x5*x6^2+7497*x1*x5*x6^2+28125*x3*x5*x6^2+18531*x5^2*x6^2+22283*x5^3*x6^2+15418*x2*x6^3+32972*x4*x6^3+32307*x4*x5*x6^3+37349*x6^4+7530*x3*x6^4+38453*x5*x6^4+7704*x6^6+34863*x7+34646*x1*x7+22890*x2^2*x7+40192*x3*x7+14547*x1*x3*x7+23075*x3^2*x7+27421*x2*x4*x7+12055*x4^2*x7+32429*x3*x4^2*x7+25521*x5*x7+17433*x1*x5*x7+12847*x3*x5*x7+36053*x3^2*x5*x7+19071*x2*x4*x5*x7+38808*x4^2*x5*x7+36689*x5^2*x7+41495*x1*x5^2*x7+21728*x3*x5^2*x7+17685*x5^3*x7+185*x5^4*x7+22633*x2*x6*x7+1083*x2*x3*x6*x7+32713*x4*x6*x7+38912*x1*x4*x6*x7+18496*x3*x4*x6*x7+18926*x2*x5*x6*x7+31206*x4*x5*x6*x7+40074*x4*x5^2*x6*x7+8687*x6^2*x7+20359*x1*x6^2*x7+19323*x3*x6^2*x7+21643*x4^2*x6^2*x7+10424*x5*x6^2*x7+13661*x3*x5*x6^2*x7+850*x5^2*x6^2*x7+21396*x2*x6^3*x7+21434*x4*x6^3*x7+33226*x6^4*x7+17288*x5*x6^4*x7+23870*x7^2+10435*x1*x7^2+23889*x2^2*x7^2+29293*x3*x7^2+1332*x1*x3*x7^2+11002*x3^2*x7^2+14157*x2*x4*x7^2+32353*x4^2*x7^2+18789*x5*x7^2+21469*x1*x5*x7^2+28100*x3*x5*x7^2+14683*x4^2*x5*x7^2+39919*x5^2*x7^2+20877*x3*x5^2*x7^2+32370*x5^3*x7^2+777*x2*x6*x7^2+21412*x4*x6*x7^2+23275*x3*x4*x6*x7^2+40799*x2*x5*x6*x7^2+39571*x4*x5*x6*x7^2+16845*x6^2*x7^2+22231*x1*x6^2*x7^2+29957*x3*x6^2*x7^2+32231*x5*x6^2*x7^2+9303*x5^2*x6^2*x7^2+41288*x4*x6^3*x7^2+15342*x6^4*x7^2+5335*x7^3+25648*x1*x7^3+19529*x3*x7^3+41273*x3^2*x7^3+30229*x2*x4*x7^3+9594*x4^2*x7^3+360*x5*x7^3+21247*x1*x5*x7^3+38155*x3*x5*x7^3+212*x5^2*x7^3+41680*x5^3*x7^3+15250*x2*x6*x7^3+6737*x4*x6*x7^3+10753*x4*x5*x6*x7^3+32899*x6^2*x7^3+2139*x3*x6^2*x7^3+14536*x5*x6^2*x7^3+7911*x6^4*x7^3+21736*x7^4+4951*x1*x7^4+36470*x3*x7^4+11863*x4^2*x7^4+26928*x5*x7^4+28317*x3*x5*x7^4+17157*x5^2*x7^4+37479*x2*x6*x7^4+29422*x4*x6*x7^4+11714*x6^2*x7^4+20218*x5*x6^2*x7^4+5534*x7^5+18156*x3*x7^5+27688*x5*x7^5+148*x5^2*x7^5+2383*x4*x6*x7^5+16910*x6^2*x7^5+18124*x7^6+41939*x3*x7^6+20951*x5*x7^6+7149*x6^2*x7^6+25342*x7^7+20988*x5*x7^7+15778*x7^8+25358*x2*x8+18581*x1*x2*x8+20876*x2*x3*x8+11751*x4*x8+12459*x1*x4*x8+41118*x3*x4*x8+1100*x3^2*x4*x8+10194*x2*x4^2*x8+11254*x4^3*x8+37034*x2*x5*x8+11900*x2*x3*x5*x8+40824*x4*x5*x8+35700*x1*x4*x5*x8+3933*x3*x4*x5*x8+8858*x2*x5^2*x8+40863*x4*x5^2*x8+36137*x4*x5^3*x8+14802*x6*x8+18967*x1*x6*x8+30483*x2^2*x6*x8+39545*x3*x6*x8+3017*x1*x3*x6*x8+20531*x3^2*x6*x8+9379*x2*x4*x6*x8+11255*x4^2*x6*x8+31988*x5*x6*x8+13727*x1*x5*x6*x8+12373*x3*x5*x6*x8+38128*x4^2*x5*x6*x8+39181*x5^2*x6*x8+29491*x3*x5^2*x6*x8+37506*x5^3*x6*x8+3608*x2*x6^2*x8+11066*x4*x6^2*x8+9913*x3*x4*x6^2*x8+27474*x2*x5*x6^2*x8+1623*x4*x5*x6^2*x8+15643*x6^3*x8+27552*x1*x6^3*x8+38809*x3*x6^3*x8+17258*x5*x6^3*x8+30476*x5^2*x6^3*x8+10435*x4*x6^4*x8+29510*x6^5*x8+17971*x2*x7*x8+6098*x1*x2*x7*x8+41903*x2*x3*x7*x8+16339*x4*x7*x8+2012*x1*x4*x7*x8+29398*x3*x4*x7*x8+4955*x4^3*x7*x8+20702*x2*x5*x7*x8+34813*x4*x5*x7*x8+35827*x3*x4*x5*x7*x8+3789*x2*x5^2*x7*x8+15225*x4*x5^2*x7*x8+4457*x6*x7*x8+21189*x1*x6*x7*x8+33850*x3*x6*x7*x8+23038*x3^2*x6*x7*x8+26487*x2*x4*x6*x7*x8+8752*x4^2*x6*x7*x8+27172*x5*x6*x7*x8+35707*x1*x5*x6*x7*x8+11680*x3*x5*x6*x7*x8+19544*x5^2*x6*x7*x8+4611*x5^3*x6*x7*x8+624*x2*x6^2*x7*x8+33553*x4*x6^2*x7*x8+14950*x4*x5*x6^2*x7*x8+23960*x6^3*x7*x8+28007*x3*x6^3*x7*x8+13215*x5*x6^3*x7*x8+27737*x6^5*x7*x8+37943*x2*x7^2*x8+6942*x2*x3*x7^2*x8+28133*x4*x7^2*x8+2428*x1*x4*x7^2*x8+41905*x3*x4*x7^2*x8+23708*x2*x5*x7^2*x8+34420*x4*x5*x7^2*x8+5328*x4*x5^2*x7^2*x8+20497*x6*x7^2*x8+6070*x1*x6*x7^2*x8+34732*x3*x6*x7^2*x8+10101*x4^2*x6*x7^2*x8+12355*x5*x6*x7^2*x8+33059*x3*x5*x6*x7^2*x8+18990*x5^2*x6*x7^2*x8+10569*x2*x6^2*x7^2*x8+2489*x4*x6^2*x7^2*x8+2951*x6^3*x7^2*x8+11047*x5*x6^3*x7^2*x8+11889*x2*x7^3*x8+31837*x4*x7^3*x8+26555*x3*x4*x7^3*x8+31001*x2*x5*x7^3*x8+37609*x4*x5*x7^3*x8+31125*x6*x7^3*x8+26561*x1*x6*x7^3*x8+1491*x3*x6*x7^3*x8+11684*x5*x6*x7^3*x8+16976*x5^2*x6*x7^3*x8+40599*x4*x6^2*x7^3*x8+4072*x6^3*x7^3*x8+28985*x2*x7^4*x8+10774*x4*x7^4*x8+21055*x4*x5*x7^4*x8+24916*x6*x7^4*x8+14759*x3*x6*x7^4*x8+25495*x5*x6*x7^4*x8+38617*x6^3*x7^4*x8+18309*x2*x7^5*x8+4567*x4*x7^5*x8+3678*x6*x7^5*x8+10302*x5*x6*x7^5*x8+32592*x4*x7^6*x8+21654*x6*x7^6*x8+3308*x6*x7^7*x8+6783*x8^2+26052*x1*x8^2+20967*x2^2*x8^2+38392*x3*x8^2+28977*x1*x3*x8^2+11037*x3^2*x8^2+41060*x2*x4*x8^2+10759*x4^2*x8^2+6154*x3*x4^2*x8^2+7906*x5*x8^2+9520*x1*x5*x8^2+10211*x3*x5*x8^2+35027*x3^2*x5*x8^2+7771*x2*x4*x5*x8^2+20030*x4^2*x5*x8^2+32401*x5^2*x8^2+16518*x1*x5^2*x8^2+9859*x3*x5^2*x8^2+38630*x5^3*x8^2+31149*x5^4*x8^2+25540*x2*x6*x8^2+22975*x2*x3*x6*x8^2+38870*x4*x6*x8^2+29177*x1*x4*x6*x8^2+12159*x3*x4*x6*x8^2+37749*x2*x5*x6*x8^2+1929*x4*x5*x6*x8^2+17458*x4*x5^2*x6*x8^2+32361*x6^2*x8^2+11859*x1*x6^2*x8^2+38917*x3*x6^2*x8^2+1776*x4^2*x6^2*x8^2+34408*x5*x6^2*x8^2+30913*x3*x5*x6^2*x8^2+2246*x5^2*x6^2*x8^2+40526*x2*x6^3*x8^2+9857*x4*x6^3*x8^2+29344*x6^4*x8^2+1176*x5*x6^4*x8^2+19715*x7*x8^2+39596*x1*x7*x8^2+13569*x2^2*x7*x8^2+15577*x3*x7*x8^2+35153*x1*x3*x7*x8^2+12879*x3^2*x7*x8^2+4887*x2*x4*x7*x8^2+22578*x4^2*x7*x8^2+14168*x5*x7*x8^2+10327*x1*x5*x7*x8^2+7710*x3*x5*x7*x8^2+41701*x4^2*x5*x7*x8^2+39724*x5^2*x7*x8^2+27012*x3*x5^2*x7*x8^2+26700*x5^3*x7*x8^2+41189*x2*x6*x7*x8^2+20968*x4*x6*x7*x8^2+29098*x3*x4*x6*x7*x8^2+127*x2*x5*x6*x7*x8^2+34543*x4*x5*x6*x7*x8^2+16318*x6^2*x7*x8^2+16386*x1*x6^2*x7*x8^2+5059*x3*x6^2*x7*x8^2+18222*x5*x6^2*x7*x8^2+15672*x5^2*x6^2*x7*x8^2+26367*x4*x6^3*x7*x8^2+33618*x6^4*x7*x8^2+18255*x7^2*x8^2+11376*x1*x7^2*x8^2+14355*x3*x7^2*x8^2+9946*x3^2*x7^2*x8^2+29283*x2*x4*x7^2*x8^2+3551*x4^2*x7^2*x8^2+5727*x5*x7^2*x8^2+9088*x1*x5*x7^2*x8^2+26007*x3*x5*x7^2*x8^2+3154*x5^2*x7^2*x8^2+18183*x5^3*x7^2*x8^2+24316*x2*x6*x7^2*x8^2+11098*x4*x6*x7^2*x8^2+9695*x4*x5*x6*x7^2*x8^2+3837*x6^2*x7^2*x8^2+11928*x3*x6^2*x7^2*x8^2+16300*x5*x6^2*x7^2*x8^2+24024*x6^4*x7^2*x8^2+35977*x7^3*x8^2+27750*x1*x7^3*x8^2+30022*x3*x7^3*x8^2+30706*x4^2*x7^3*x8^2+37091*x5*x7^3*x8^2+12448*x3*x5*x7^3*x8^2+27363*x5^2*x7^3*x8^2+17879*x2*x6*x7^3*x8^2+8633*x4*x6*x7^3*x8^2+17807*x6^2*x7^3*x8^2+485*x5*x6^2*x7^3*x8^2+377*x7^4*x8^2+22108*x3*x7^4*x8^2+30831*x5*x7^4*x8^2+3101*x5^2*x7^4*x8^2+29021*x4*x6*x7^4*x8^2+10196*x6^2*x7^4*x8^2+12476*x7^5*x8^2+3974*x3*x7^5*x8^2+40531*x5*x7^5*x8^2+22689*x6^2*x7^5*x8^2+22933*x7^6*x8^2+29321*x5*x7^6*x8^2+40511*x7^7*x8^2+38581*x2*x8^3+35857*x1*x2*x8^3+8090*x2*x3*x8^3+1963*x4*x8^3+1708*x1*x4*x8^3+34890*x3*x4*x8^3+8207*x4^3*x8^3+11036*x2*x5*x8^3+2421*x4*x5*x8^3+30840*x3*x4*x5*x8^3+38668*x2*x5^2*x8^3+37154*x4*x5^2*x8^3+40878*x6*x8^3+37852*x1*x6*x8^3+6010*x3*x6*x8^3+5876*x3^2*x6*x8^3+31869*x2*x4*x6*x8^3+20760*x4^2*x6*x8^3+12033*x5*x6*x8^3+4315*x1*x5*x6*x8^3+21790*x3*x5*x6*x8^3+22928*x5^2*x6*x8^3+31045*x5^3*x6*x8^3+3264*x2*x6^2*x8^3+937*x4*x6^2*x8^3+3374*x4*x5*x6^2*x8^3+30606*x6^3*x8^3+18967*x3*x6^3*x8^3+16496*x5*x6^3*x8^3+9140*x6^5*x8^3+13036*x2*x7*x8^3+34839*x2*x3*x7*x8^3+5446*x4*x7*x8^3+26952*x1*x4*x7*x8^3+15462*x3*x4*x7*x8^3+21118*x2*x5*x7*x8^3+8076*x4*x5*x7*x8^3+35331*x4*x5^2*x7*x8^3+3508*x6*x7*x8^3+7069*x1*x6*x7*x8^3+2817*x3*x6*x7*x8^3+18932*x4^2*x6*x7*x8^3+35033*x5*x6*x7*x8^3+10451*x3*x5*x6*x7*x8^3+20315*x5^2*x6*x7*x8^3+24699*x2*x6^2*x7*x8^3+9492*x4*x6^2*x7*x8^3+31746*x6^3*x7*x8^3+21399*x5*x6^3*x7*x8^3+32730*x2*x7^2*x8^3+14707*x4*x7^2*x8^3+31728*x3*x4*x7^2*x8^3+35234*x2*x5*x7^2*x8^3+34846*x4*x5*x7^2*x8^3+15295*x6*x7^2*x8^3+6889*x1*x6*x7^2*x8^3+16316*x3*x6*x7^2*x8^3+38408*x5*x6*x7^2*x8^3+23566*x5^2*x6*x7^2*x8^3+29574*x4*x6^2*x7^2*x8^3+29173*x6^3*x7^2*x8^3+11119*x2*x7^3*x8^3+11517*x4*x7^3*x8^3+15954*x4*x5*x7^3*x8^3+9780*x6*x7^3*x8^3+22121*x3*x6*x7^3*x8^3+20450*x5*x6*x7^3*x8^3+3726*x6^3*x7^3*x8^3+7831*x2*x7^4*x8^3+30883*x4*x7^4*x8^3+28411*x6*x7^4*x8^3+33463*x5*x6*x7^4*x8^3+27897*x4*x7^5*x8^3+27525*x6*x7^5*x8^3+4352*x6*x7^6*x8^3+32222*x8^4+17776*x1*x8^4+10827*x2^2*x8^4+37168*x3*x8^4+34748*x1*x3*x8^4+31376*x3^2*x8^4+27925*x2*x4*x8^4+24126*x4^2*x8^4+4370*x5*x8^4+10561*x1*x5*x8^4+21877*x3*x5*x8^4+19575*x4^2*x5*x8^4+11569*x5^2*x8^4+17976*x3*x5^2*x8^4+15657*x5^3*x8^4+12281*x2*x6*x8^4+35168*x4*x6*x8^4+19274*x3*x4*x6*x8^4+14179*x2*x5*x6*x8^4+37651*x4*x5*x6*x8^4+21460*x6^2*x8^4+19315*x1*x6^2*x8^4+33714*x3*x6^2*x8^4+10861*x5*x6^2*x8^4+24090*x5^2*x6^2*x8^4+22687*x4*x6^3*x8^4+37519*x6^4*x8^4+4101*x7*x8^4+35718*x1*x7*x8^4+3880*x3*x7*x8^4+39655*x3^2*x7*x8^4+17148*x2*x4*x7*x8^4+14737*x4^2*x7*x8^4+15045*x5*x7*x8^4+32666*x1*x5*x7*x8^4+27396*x3*x5*x7*x8^4+27521*x5^2*x7*x8^4+29151*x5^3*x7*x8^4+8895*x2*x6*x7*x8^4+5278*x4*x6*x7*x8^4+36366*x4*x5*x6*x7*x8^4+37215*x6^2*x7*x8^4+33578*x3*x6^2*x7*x8^4+16834*x5*x6^2*x7*x8^4+7924*x6^4*x7*x8^4+39117*x7^2*x8^4+38536*x1*x7^2*x8^4+20904*x3*x7^2*x8^4+18707*x4^2*x7^2*x8^4+27326*x5*x7^2*x8^4+10501*x3*x5*x7^2*x8^4+2318*x5^2*x7^2*x8^4+40608*x2*x6*x7^2*x8^4+12465*x4*x6*x7^2*x8^4+9312*x6^2*x7^2*x8^4+14861*x5*x6^2*x7^2*x8^4+36929*x7^3*x8^4+38124*x3*x7^3*x8^4+12037*x5*x7^3*x8^4+36366*x5^2*x7^3*x8^4+31653*x4*x6*x7^3*x8^4+20369*x6^2*x7^3*x8^4+36367*x7^4*x8^4+41124*x3*x7^4*x8^4+31667*x5*x7^4*x8^4+20518*x6^2*x7^4*x8^4+28035*x7^5*x8^4+19323*x5*x7^5*x8^4+26521*x7^6*x8^4+14540*x2*x8^5+38039*x2*x3*x8^5+31542*x4*x8^5+36485*x1*x4*x8^5+21235*x3*x4*x8^5+40809*x2*x5*x8^5+16111*x4*x5*x8^5+281*x4*x5^2*x8^5+25261*x6*x8^5+164*x1*x6*x8^5+17954*x3*x6*x8^5+10871*x4^2*x6*x8^5+14459*x5*x6*x8^5+27597*x3*x5*x6*x8^5+13676*x5^2*x6*x8^5+39760*x2*x6^2*x8^5+38602*x4*x6^2*x8^5+11245*x6^3*x8^5+36106*x5*x6^3*x8^5+6422*x2*x7*x8^5+38901*x4*x7*x8^5+3973*x3*x4*x7*x8^5+9939*x2*x5*x7*x8^5+23291*x4*x5*x7*x8^5+2918*x6*x7*x8^5+40119*x1*x6*x7*x8^5+28814*x3*x6*x7*x8^5+34967*x5*x6*x7*x8^5+15384*x5^2*x6*x7*x8^5+36236*x4*x6^2*x7*x8^5+8461*x6^3*x7*x8^5+41856*x2*x7^2*x8^5+31886*x4*x7^2*x8^5+11554*x4*x5*x7^2*x8^5+39743*x6*x7^2*x8^5+40769*x3*x6*x7^2*x8^5+27870*x5*x6*x7^2*x8^5+35283*x6^3*x7^2*x8^5+30927*x2*x7^3*x8^5+39904*x4*x7^3*x8^5+31984*x6*x7^3*x8^5+15234*x5*x6*x7^3*x8^5+9738*x4*x7^4*x8^5+38803*x6*x7^4*x8^5+10774*x6*x7^5*x8^5+3632*x8^6+10822*x1*x8^6+19188*x3*x8^6+13987*x3^2*x8^6+33068*x2*x4*x8^6+41230*x4^2*x8^6+37226*x5*x8^6+5025*x1*x5*x8^6+5575*x3*x5*x8^6+381*x5^2*x8^6+3160*x5^3*x8^6+31149*x2*x6*x8^6+33841*x4*x6*x8^6+18261*x4*x5*x6*x8^6+16260*x6^2*x8^6+33724*x3*x6^2*x8^6+18589*x5*x6^2*x8^6+24711*x6^4*x8^6+17933*x7*x8^6+35172*x1*x7*x8^6+9972*x3*x7*x8^6+27949*x4^2*x7*x8^6+3826*x5*x7*x8^6+29822*x3*x5*x7*x8^6+8252*x5^2*x7*x8^6+8763*x2*x6*x7*x8^6+17387*x4*x6*x7*x8^6+25361*x6^2*x7*x8^6+17306*x5*x6^2*x7*x8^6+11517*x7^2*x8^6+28397*x3*x7^2*x8^6+1993*x5*x7^2*x8^6+17251*x5^2*x7^2*x8^6+14090*x4*x6*x7^2*x8^6+25524*x6^2*x7^2*x8^6+37052*x7^3*x8^6+14712*x3*x7^3*x8^6+33242*x5*x7^3*x8^6+2845*x6^2*x7^3*x8^6+20229*x7^4*x8^6+18183*x5*x7^4*x8^6+15237*x7^5*x8^6+34266*x2*x8^7+21830*x4*x8^7+25970*x3*x4*x8^7+25025*x2*x5*x8^7+1586*x4*x5*x8^7+16152*x6*x8^7+40555*x1*x6*x8^7+35294*x3*x6*x8^7+13945*x5*x6*x8^7+6202*x5^2*x6*x8^7+40052*x4*x6^2*x8^7+29882*x6^3*x8^7+10706*x2*x7*x8^7+529*x4*x7*x8^7+19189*x4*x5*x7*x8^7+25594*x6*x7*x8^7+31687*x3*x6*x7*x8^7+10850*x5*x6*x7*x8^7+35062*x6^3*x7*x8^7+26605*x2*x7^2*x8^7+40559*x4*x7^2*x8^7+30390*x6*x7^2*x8^7+19217*x5*x6*x7^2*x8^7+34569*x4*x7^3*x8^7+32981*x6*x7^3*x8^7+18377*x6*x7^4*x8^7+1291*x8^8+28661*x1*x8^8+28035*x3*x8^8+17221*x4^2*x8^8+32908*x5*x8^8+31889*x3*x5*x8^8+23873*x5^2*x8^8+25347*x2*x6*x8^8+35029*x4*x6*x8^8+13362*x6^2*x8^8+33376*x5*x6^2*x8^8+35966*x7*x8^8+26116*x3*x7*x8^8+17577*x5*x7*x8^8+22172*x5^2*x7*x8^8+36411*x4*x6*x7*x8^8+35182*x6^2*x7*x8^8+20224*x7^2*x8^8+13743*x3*x7^2*x8^8+34023*x5*x7^2*x8^8+10770*x6^2*x7^2*x8^8+14705*x7^3*x8^8+40348*x5*x7^3*x8^8+31641*x7^4*x8^8+16715*x2*x8^9+32076*x4*x8^9+19915*x4*x5*x8^9+18511*x6*x8^9+16148*x3*x6*x8^9+25438*x5*x6*x8^9+20337*x6^3*x8^9+37548*x2*x7*x8^9+37608*x4*x7*x8^9+31024*x6*x7*x8^9+18280*x5*x6*x7*x8^9+20958*x4*x7^2*x8^9+19076*x6*x7^2*x8^9+23940*x6*x7^3*x8^9+22802*x8^10+15322*x3*x8^10+21641*x5*x8^10+15630*x5^2*x8^10+1654*x4*x6*x8^10+20567*x6^2*x8^10+34532*x7*x8^10+25823*x3*x7*x8^10+21232*x5*x7*x8^10+19870*x6^2*x7*x8^10+23450*x7^2*x8^10+29469*x5*x7^2*x8^10+16034*x7^3*x8^10+1321*x2*x8^11+6477*x4*x8^11+27574*x6*x8^11+29654*x5*x6*x8^11+31804*x4*x7*x8^11+11448*x6*x7*x8^11+33362*x6*x7^2*x8^11+37267*x8^12+30161*x3*x8^12+18263*x5*x8^12+17791*x6^2*x8^12+23255*x7*x8^12+31408*x5*x7*x8^12+16661*x7^2*x8^12+18457*x4*x8^13+1491*x6*x8^13+34679*x6*x7*x8^13+4468*x8^14+13136*x5*x8^14+1077*x7*x8^14+18346*x6*x8^15+8716*x8^16"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function zhang_l10_m5(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 11
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "z$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "2*z2^13- 4*z2^12*z3- 4*z2^12*z4+ 6*z2^11*z3*z4- 4*z2^12*z5+ 6*z2^11*z3*z5+
    6*z2^11*z4*z5- 8*z2^10*z3*z4*z5- 4*z2^12*z6+ 6*z2^11*z3*z6+ 6*z2^11*z4*z6-
    8*z2^10*z3*z4*z6+ 6*z2^11*z5*z6- 8*z2^10*z3*z5*z6- 8*z2^10*z4*z5*z6+
    10*z2^9*z3*z4*z5*z6+ 8*z2^11+ 4491*z2^10*z3+ 4491*z2^10*z4+ 5*z2^9*z3*z4+
    4491*z2^10*z5+ 5*z2^9*z3*z5+ 5*z2^9*z4*z5- 4493*z2^8*z3*z4*z5+
    4491*z2^10*z6+ 5*z2^9*z3*z6+ 5*z2^9*z4*z6- 4493*z2^8*z3*z4*z6+ 5*z2^9*z5*z6-
    4493*z2^8*z3*z5*z6- 4493*z2^8*z4*z5*z6- 30*z2^7*z3*z4*z5*z6+ 2261*z2^9+
    4496*z2^8*z3+ 4496*z2^8*z4- 2257*z2^7*z3*z4+ 4496*z2^8*z5- 2257*z2^7*z3*z5-
    2257*z2^7*z4*z5- 4490*z2^6*z3*z4*z5+ 4496*z2^8*z6- 2257*z2^7*z3*z6-
    2257*z2^7*z4*z6- 4490*z2^6*z3*z4*z6- 2257*z2^7*z5*z6- 4490*z2^6*z3*z5*z6-
    4490*z2^6*z4*z5*z6+ 2266*z2^5*z3*z4*z5*z6+ 1130*z2^7+ 2816*z2^6*z3+
    2816*z2^6*z4+ 4496*z2^5*z3*z4+ 2816*z2^6*z5+ 4496*z2^5*z3*z5+
    4496*z2^5*z4*z5+ 1683*z2^4*z3*z4*z5+ 2816*z2^6*z6+ 4496*z2^5*z3*z6+
    4496*z2^5*z4*z6+ 1683*z2^4*z3*z4*z6+ 4496*z2^5*z5*z6+ 1683*z2^4*z3*z5*z6+
    1683*z2^4*z4*z5*z6- 1127*z2^3*z3*z4*z5*z6+ 3867*z2^5+ 1549*z2^4*z3+
    1549*z2^4*z4- 2460*z2^3*z3*z4+ 1549*z2^4*z5- 2460*z2^3*z3*z5-
    2460*z2^3*z4*z5+ 1688*z2^2*z3*z4*z5+ 1549*z2^4*z6- 2460*z2^3*z3*z6-
    2460*z2^3*z4*z6+ 1688*z2^2*z3*z4*z6- 2460*z2^3*z5*z6+ 1688*z2^2*z3*z5*z6+
    1688*z2^2*z4*z5*z6+ 211*z2*z3*z4*z5*z6+ 3445*z2^3- 4448*z2^2*z3-
    4448*z2^2*z4- 1090*z2*z3*z4- 4448*z2^2*z5- 1090*z2*z3*z5- 1090*z2*z4*z5-
    4061*z3*z4*z5- 4448*z2^2*z6- 1090*z2*z3*z6- 1090*z2*z4*z6- 4061*z3*z4*z6-
    1090*z2*z5*z6- 4061*z3*z5*z6- 4061*z4*z5*z6+ 1969*z2+ 4061*z3+ 4061*z4+
    4061*z5+ 4061*z6",
    "- 4*z2*z3^12+ 2*z3^13+ 6*z2*z3^11*z4- 4*z3^12*z4+ 6*z2*z3^11*z5-
    4*z3^12*z5- 8*z2*z3^10*z4*z5+ 6*z3^11*z4*z5+ 6*z2*z3^11*z6- 4*z3^12*z6-
    8*z2*z3^10*z4*z6+ 6*z3^11*z4*z6- 8*z2*z3^10*z5*z6+ 6*z3^11*z5*z6+
    10*z2*z3^9*z4*z5*z6- 8*z3^10*z4*z5*z6+ 4491*z2*z3^10+ 8*z3^11+ 5*z2*z3^9*z4+
    4491*z3^10*z4+ 5*z2*z3^9*z5+ 4491*z3^10*z5- 4493*z2*z3^8*z4*z5+
    5*z3^9*z4*z5+ 5*z2*z3^9*z6+ 4491*z3^10*z6- 4493*z2*z3^8*z4*z6+ 5*z3^9*z4*z6-
    4493*z2*z3^8*z5*z6+ 5*z3^9*z5*z6- 30*z2*z3^7*z4*z5*z6- 4493*z3^8*z4*z5*z6+
    4496*z2*z3^8+ 2261*z3^9- 2257*z2*z3^7*z4+ 4496*z3^8*z4- 2257*z2*z3^7*z5+
    4496*z3^8*z5- 4490*z2*z3^6*z4*z5- 2257*z3^7*z4*z5- 2257*z2*z3^7*z6+
    4496*z3^8*z6- 4490*z2*z3^6*z4*z6- 2257*z3^7*z4*z6- 4490*z2*z3^6*z5*z6-
    2257*z3^7*z5*z6+ 2266*z2*z3^5*z4*z5*z6- 4490*z3^6*z4*z5*z6+ 2816*z2*z3^6+
    1130*z3^7+ 4496*z2*z3^5*z4+ 2816*z3^6*z4+ 4496*z2*z3^5*z5+ 2816*z3^6*z5+
    1683*z2*z3^4*z4*z5+ 4496*z3^5*z4*z5+ 4496*z2*z3^5*z6+ 2816*z3^6*z6+
    1683*z2*z3^4*z4*z6+ 4496*z3^5*z4*z6+ 1683*z2*z3^4*z5*z6+ 4496*z3^5*z5*z6-
    1127*z2*z3^3*z4*z5*z6+ 1683*z3^4*z4*z5*z6+ 1549*z2*z3^4+ 3867*z3^5-
    2460*z2*z3^3*z4+ 1549*z3^4*z4- 2460*z2*z3^3*z5+ 1549*z3^4*z5+
    1688*z2*z3^2*z4*z5- 2460*z3^3*z4*z5- 2460*z2*z3^3*z6+ 1549*z3^4*z6+
    1688*z2*z3^2*z4*z6- 2460*z3^3*z4*z6+ 1688*z2*z3^2*z5*z6- 2460*z3^3*z5*z6+
    211*z2*z3*z4*z5*z6+ 1688*z3^2*z4*z5*z6- 4448*z2*z3^2+ 3445*z3^3-
    1090*z2*z3*z4- 4448*z3^2*z4- 1090*z2*z3*z5- 4448*z3^2*z5- 4061*z2*z4*z5-
    1090*z3*z4*z5- 1090*z2*z3*z6- 4448*z3^2*z6- 4061*z2*z4*z6- 1090*z3*z4*z6-
    4061*z2*z5*z6- 1090*z3*z5*z6- 4061*z4*z5*z6+ 4061*z2+ 1969*z3+ 4061*z4+
    4061*z5+ 4061*z6",
    "6*z2*z3*z4^11- 4*z2*z4^12- 4*z3*z4^12+ 2*z4^13- 8*z2*z3*z4^10*z5+
    6*z2*z4^11*z5+ 6*z3*z4^11*z5- 4*z4^12*z5- 8*z2*z3*z4^10*z6+ 6*z2*z4^11*z6+
    6*z3*z4^11*z6- 4*z4^12*z6+ 10*z2*z3*z4^9*z5*z6- 8*z2*z4^10*z5*z6-
    8*z3*z4^10*z5*z6+ 6*z4^11*z5*z6+ 5*z2*z3*z4^9+ 4491*z2*z4^10+ 4491*z3*z4^10+
    8*z4^11- 4493*z2*z3*z4^8*z5+ 5*z2*z4^9*z5+ 5*z3*z4^9*z5+ 4491*z4^10*z5-
    4493*z2*z3*z4^8*z6+ 5*z2*z4^9*z6+ 5*z3*z4^9*z6+ 4491*z4^10*z6-
    30*z2*z3*z4^7*z5*z6- 4493*z2*z4^8*z5*z6- 4493*z3*z4^8*z5*z6+ 5*z4^9*z5*z6-
    2257*z2*z3*z4^7+ 4496*z2*z4^8+ 4496*z3*z4^8+ 2261*z4^9- 4490*z2*z3*z4^6*z5-
    2257*z2*z4^7*z5- 2257*z3*z4^7*z5+ 4496*z4^8*z5- 4490*z2*z3*z4^6*z6-
    2257*z2*z4^7*z6- 2257*z3*z4^7*z6+ 4496*z4^8*z6+ 2266*z2*z3*z4^5*z5*z6-
    4490*z2*z4^6*z5*z6- 4490*z3*z4^6*z5*z6- 2257*z4^7*z5*z6+ 4496*z2*z3*z4^5+
    2816*z2*z4^6+ 2816*z3*z4^6+ 1130*z4^7+ 1683*z2*z3*z4^4*z5+ 4496*z2*z4^5*z5+
    4496*z3*z4^5*z5+ 2816*z4^6*z5+ 1683*z2*z3*z4^4*z6+ 4496*z2*z4^5*z6+
    4496*z3*z4^5*z6+ 2816*z4^6*z6- 1127*z2*z3*z4^3*z5*z6+ 1683*z2*z4^4*z5*z6+
    1683*z3*z4^4*z5*z6+ 4496*z4^5*z5*z6- 2460*z2*z3*z4^3+ 1549*z2*z4^4+
    1549*z3*z4^4+ 3867*z4^5+ 1688*z2*z3*z4^2*z5- 2460*z2*z4^3*z5-
    2460*z3*z4^3*z5+ 1549*z4^4*z5+ 1688*z2*z3*z4^2*z6- 2460*z2*z4^3*z6-
    2460*z3*z4^3*z6+ 1549*z4^4*z6+ 211*z2*z3*z4*z5*z6+ 1688*z2*z4^2*z5*z6+
    1688*z3*z4^2*z5*z6- 2460*z4^3*z5*z6- 1090*z2*z3*z4- 4448*z2*z4^2-
    4448*z3*z4^2+ 3445*z4^3- 4061*z2*z3*z5- 1090*z2*z4*z5- 1090*z3*z4*z5-
    4448*z4^2*z5- 4061*z2*z3*z6- 1090*z2*z4*z6- 1090*z3*z4*z6- 4448*z4^2*z6-
    4061*z2*z5*z6- 4061*z3*z5*z6- 1090*z4*z5*z6+ 4061*z2+ 4061*z3+ 1969*z4+
    4061*z5+ 4061*z6",
    "- 8*z2*z3*z4*z5^10+ 6*z2*z3*z5^11+ 6*z2*z4*z5^11+ 6*z3*z4*z5^11-
    4*z2*z5^12- 4*z3*z5^12- 4*z4*z5^12+ 2*z5^13+ 10*z2*z3*z4*z5^9*z6-
    8*z2*z3*z5^10*z6- 8*z2*z4*z5^10*z6- 8*z3*z4*z5^10*z6+ 6*z2*z5^11*z6+
    6*z3*z5^11*z6+ 6*z4*z5^11*z6- 4*z5^12*z6- 4493*z2*z3*z4*z5^8+ 5*z2*z3*z5^9+
    5*z2*z4*z5^9+ 5*z3*z4*z5^9+ 4491*z2*z5^10+ 4491*z3*z5^10+ 4491*z4*z5^10+
    8*z5^11- 30*z2*z3*z4*z5^7*z6- 4493*z2*z3*z5^8*z6- 4493*z2*z4*z5^8*z6-
    4493*z3*z4*z5^8*z6+ 5*z2*z5^9*z6+ 5*z3*z5^9*z6+ 5*z4*z5^9*z6+ 4491*z5^10*z6-
    4490*z2*z3*z4*z5^6- 2257*z2*z3*z5^7- 2257*z2*z4*z5^7- 2257*z3*z4*z5^7+
    4496*z2*z5^8+ 4496*z3*z5^8+ 4496*z4*z5^8+ 2261*z5^9+ 2266*z2*z3*z4*z5^5*z6-
    4490*z2*z3*z5^6*z6- 4490*z2*z4*z5^6*z6- 4490*z3*z4*z5^6*z6- 2257*z2*z5^7*z6-
    2257*z3*z5^7*z6- 2257*z4*z5^7*z6+ 4496*z5^8*z6+ 1683*z2*z3*z4*z5^4+
    4496*z2*z3*z5^5+ 4496*z2*z4*z5^5+ 4496*z3*z4*z5^5+ 2816*z2*z5^6+
    2816*z3*z5^6+ 2816*z4*z5^6+ 1130*z5^7- 1127*z2*z3*z4*z5^3*z6+
    1683*z2*z3*z5^4*z6+ 1683*z2*z4*z5^4*z6+ 1683*z3*z4*z5^4*z6+ 4496*z2*z5^5*z6+
    4496*z3*z5^5*z6+ 4496*z4*z5^5*z6+ 2816*z5^6*z6+ 1688*z2*z3*z4*z5^2-
    2460*z2*z3*z5^3- 2460*z2*z4*z5^3- 2460*z3*z4*z5^3+ 1549*z2*z5^4+
    1549*z3*z5^4+ 1549*z4*z5^4+ 3867*z5^5+ 211*z2*z3*z4*z5*z6+
    1688*z2*z3*z5^2*z6+ 1688*z2*z4*z5^2*z6+ 1688*z3*z4*z5^2*z6- 2460*z2*z5^3*z6-
    2460*z3*z5^3*z6- 2460*z4*z5^3*z6+ 1549*z5^4*z6- 4061*z2*z3*z4-
    1090*z2*z3*z5- 1090*z2*z4*z5- 1090*z3*z4*z5- 4448*z2*z5^2- 4448*z3*z5^2-
    4448*z4*z5^2+ 3445*z5^3- 4061*z2*z3*z6- 4061*z2*z4*z6- 4061*z3*z4*z6-
    1090*z2*z5*z6- 1090*z3*z5*z6- 1090*z4*z5*z6- 4448*z5^2*z6+ 4061*z2+ 4061*z3+
    4061*z4+ 1969*z5+ 4061*z6",
    "10*z2*z3*z4*z5*z6^9- 8*z2*z3*z4*z6^10- 8*z2*z3*z5*z6^10- 8*z2*z4*z5*z6^10-
    8*z3*z4*z5*z6^10+ 6*z2*z3*z6^11+ 6*z2*z4*z6^11+ 6*z3*z4*z6^11+
    6*z2*z5*z6^11+ 6*z3*z5*z6^11+ 6*z4*z5*z6^11- 4*z2*z6^12- 4*z3*z6^12-
    4*z4*z6^12- 4*z5*z6^12+ 2*z6^13- 30*z2*z3*z4*z5*z6^7- 4493*z2*z3*z4*z6^8-
    4493*z2*z3*z5*z6^8- 4493*z2*z4*z5*z6^8- 4493*z3*z4*z5*z6^8+ 5*z2*z3*z6^9+
    5*z2*z4*z6^9+ 5*z3*z4*z6^9+ 5*z2*z5*z6^9+ 5*z3*z5*z6^9+ 5*z4*z5*z6^9+
    4491*z2*z6^10+ 4491*z3*z6^10+ 4491*z4*z6^10+ 4491*z5*z6^10+ 8*z6^11+
    2266*z2*z3*z4*z5*z6^5- 4490*z2*z3*z4*z6^6- 4490*z2*z3*z5*z6^6-
    4490*z2*z4*z5*z6^6- 4490*z3*z4*z5*z6^6- 2257*z2*z3*z6^7- 2257*z2*z4*z6^7-
    2257*z3*z4*z6^7- 2257*z2*z5*z6^7- 2257*z3*z5*z6^7- 2257*z4*z5*z6^7+
    4496*z2*z6^8+ 4496*z3*z6^8+ 4496*z4*z6^8+ 4496*z5*z6^8+ 2261*z6^9-
    1127*z2*z3*z4*z5*z6^3+ 1683*z2*z3*z4*z6^4+ 1683*z2*z3*z5*z6^4+
    1683*z2*z4*z5*z6^4+ 1683*z3*z4*z5*z6^4+ 4496*z2*z3*z6^5+ 4496*z2*z4*z6^5+
    4496*z3*z4*z6^5+ 4496*z2*z5*z6^5+ 4496*z3*z5*z6^5+ 4496*z4*z5*z6^5+
    2816*z2*z6^6+ 2816*z3*z6^6+ 2816*z4*z6^6+ 2816*z5*z6^6+ 1130*z6^7+
    211*z2*z3*z4*z5*z6+ 1688*z2*z3*z4*z6^2+ 1688*z2*z3*z5*z6^2+
    1688*z2*z4*z5*z6^2+ 1688*z3*z4*z5*z6^2- 2460*z2*z3*z6^3- 2460*z2*z4*z6^3-
    2460*z3*z4*z6^3- 2460*z2*z5*z6^3- 2460*z3*z5*z6^3- 2460*z4*z5*z6^3+
    1549*z2*z6^4+ 1549*z3*z6^4+ 1549*z4*z6^4+ 1549*z5*z6^4+ 3867*z6^5-
    4061*z2*z3*z4- 4061*z2*z3*z5- 4061*z2*z4*z5- 4061*z3*z4*z5- 1090*z2*z3*z6-
    1090*z2*z4*z6- 1090*z3*z4*z6- 1090*z2*z5*z6- 1090*z3*z5*z6- 1090*z4*z5*z6-
    4448*z2*z6^2- 4448*z3*z6^2- 4448*z4*z6^2- 4448*z5*z6^2+ 3445*z6^3+ 4061*z2+
    4061*z3+ 4061*z4+ 4061*z5+ 1969*z6",
    "2*z2^12- 2*z2^11*z3- 2*z2^10*z3^2- 2*z2^9*z3^3- 2*z2^8*z3^4- 2*z2^7*z3^5-
    2*z2^6*z3^6- 2*z2^5*z3^7- 2*z2^4*z3^8- 2*z2^3*z3^9- 2*z2^2*z3^10-
    2*z2*z3^11+ 2*z3^12- 4*z2^11*z4+ 2*z2^10*z3*z4+ 2*z2^9*z3^2*z4+
    2*z2^8*z3^3*z4+ 2*z2^7*z3^4*z4+ 2*z2^6*z3^5*z4+ 2*z2^5*z3^6*z4+
    2*z2^4*z3^7*z4+ 2*z2^3*z3^8*z4+ 2*z2^2*z3^9*z4+ 2*z2*z3^10*z4- 4*z3^11*z4-
    4*z2^11*z5+ 2*z2^10*z3*z5+ 2*z2^9*z3^2*z5+ 2*z2^8*z3^3*z5+ 2*z2^7*z3^4*z5+
    2*z2^6*z3^5*z5+ 2*z2^5*z3^6*z5+ 2*z2^4*z3^7*z5+ 2*z2^3*z3^8*z5+
    2*z2^2*z3^9*z5+ 2*z2*z3^10*z5- 4*z3^11*z5+ 6*z2^10*z4*z5- 2*z2^9*z3*z4*z5-
    2*z2^8*z3^2*z4*z5- 2*z2^7*z3^3*z4*z5- 2*z2^6*z3^4*z4*z5- 2*z2^5*z3^5*z4*z5-
    2*z2^4*z3^6*z4*z5- 2*z2^3*z3^7*z4*z5- 2*z2^2*z3^8*z4*z5- 2*z2*z3^9*z4*z5+
    6*z3^10*z4*z5- 4*z2^11*z6+ 2*z2^10*z3*z6+ 2*z2^9*z3^2*z6+ 2*z2^8*z3^3*z6+
    2*z2^7*z3^4*z6+ 2*z2^6*z3^5*z6+ 2*z2^5*z3^6*z6+ 2*z2^4*z3^7*z6+
    2*z2^3*z3^8*z6+ 2*z2^2*z3^9*z6+ 2*z2*z3^10*z6- 4*z3^11*z6+ 6*z2^10*z4*z6-
    2*z2^9*z3*z4*z6- 2*z2^8*z3^2*z4*z6- 2*z2^7*z3^3*z4*z6- 2*z2^6*z3^4*z4*z6-
    2*z2^5*z3^5*z4*z6- 2*z2^4*z3^6*z4*z6- 2*z2^3*z3^7*z4*z6- 2*z2^2*z3^8*z4*z6-
    2*z2*z3^9*z4*z6+ 6*z3^10*z4*z6+ 6*z2^10*z5*z6- 2*z2^9*z3*z5*z6-
    2*z2^8*z3^2*z5*z6- 2*z2^7*z3^3*z5*z6- 2*z2^6*z3^4*z5*z6- 2*z2^5*z3^5*z5*z6-
    2*z2^4*z3^6*z5*z6- 2*z2^3*z3^7*z5*z6- 2*z2^2*z3^8*z5*z6- 2*z2*z3^9*z5*z6+
    6*z3^10*z5*z6- 8*z2^9*z4*z5*z6+ 2*z2^8*z3*z4*z5*z6+ 2*z2^7*z3^2*z4*z5*z6+
    2*z2^6*z3^3*z4*z5*z6+ 2*z2^5*z3^4*z4*z5*z6+ 2*z2^4*z3^5*z4*z5*z6+
    2*z2^3*z3^6*z4*z5*z6+ 2*z2^2*z3^7*z4*z5*z6+ 2*z2*z3^8*z4*z5*z6-
    8*z3^9*z4*z5*z6+ 8*z2^10+ 4499*z2^9*z3+ 4499*z2^8*z3^2+ 4499*z2^7*z3^3+
    4499*z2^6*z3^4+ 4499*z2^5*z3^5+ 4499*z2^4*z3^6+ 4499*z2^3*z3^7+
    4499*z2^2*z3^8+ 4499*z2*z3^9+ 8*z3^10+ 4491*z2^9*z4+ 4496*z2^8*z3*z4+
    4496*z2^7*z3^2*z4+ 4496*z2^6*z3^3*z4+ 4496*z2^5*z3^4*z4+ 4496*z2^4*z3^5*z4+
    4496*z2^3*z3^6*z4+ 4496*z2^2*z3^7*z4+ 4496*z2*z3^8*z4+ 4491*z3^9*z4+
    4491*z2^9*z5+ 4496*z2^8*z3*z5+ 4496*z2^7*z3^2*z5+ 4496*z2^6*z3^3*z5+
    4496*z2^5*z3^4*z5+ 4496*z2^4*z3^5*z5+ 4496*z2^3*z3^6*z5+ 4496*z2^2*z3^7*z5+
    4496*z2*z3^8*z5+ 4491*z3^9*z5+ 5*z2^8*z4*z5- 4488*z2^7*z3*z4*z5-
    4488*z2^6*z3^2*z4*z5- 4488*z2^5*z3^3*z4*z5- 4488*z2^4*z3^4*z4*z5-
    4488*z2^3*z3^5*z4*z5- 4488*z2^2*z3^6*z4*z5- 4488*z2*z3^7*z4*z5+
    5*z3^8*z4*z5+ 4491*z2^9*z6+ 4496*z2^8*z3*z6+ 4496*z2^7*z3^2*z6+
    4496*z2^6*z3^3*z6+ 4496*z2^5*z3^4*z6+ 4496*z2^4*z3^5*z6+ 4496*z2^3*z3^6*z6+
    4496*z2^2*z3^7*z6+ 4496*z2*z3^8*z6+ 4491*z3^9*z6+ 5*z2^8*z4*z6-
    4488*z2^7*z3*z4*z6- 4488*z2^6*z3^2*z4*z6- 4488*z2^5*z3^3*z4*z6-
    4488*z2^4*z3^4*z4*z6- 4488*z2^3*z3^5*z4*z6- 4488*z2^2*z3^6*z4*z6-
    4488*z2*z3^7*z4*z6+ 5*z3^8*z4*z6+ 5*z2^8*z5*z6- 4488*z2^7*z3*z5*z6-
    4488*z2^6*z3^2*z5*z6- 4488*z2^5*z3^3*z5*z6- 4488*z2^4*z3^4*z5*z6-
    4488*z2^3*z3^5*z5*z6- 4488*z2^2*z3^6*z5*z6- 4488*z2*z3^7*z5*z6+
    5*z3^8*z5*z6- 4493*z2^7*z4*z5*z6+ 4478*z2^6*z3*z4*z5*z6+
    4478*z2^5*z3^2*z4*z5*z6+ 4478*z2^4*z3^3*z4*z5*z6+ 4478*z2^3*z3^4*z4*z5*z6+
    4478*z2^2*z3^5*z4*z5*z6+ 4478*z2*z3^6*z4*z5*z6- 4493*z3^7*z4*z5*z6+
    2261*z2^8- 2244*z2^7*z3- 2244*z2^6*z3^2- 2244*z2^5*z3^3- 2244*z2^4*z3^4-
    2244*z2^3*z3^5- 2244*z2^2*z3^6- 2244*z2*z3^7+ 2261*z3^8+ 4496*z2^7*z4+
    2239*z2^6*z3*z4+ 2239*z2^5*z3^2*z4+ 2239*z2^4*z3^3*z4+ 2239*z2^3*z3^4*z4+
    2239*z2^2*z3^5*z4+ 2239*z2*z3^6*z4+ 4496*z3^7*z4+ 4496*z2^7*z5+
    2239*z2^6*z3*z5+ 2239*z2^5*z3^2*z5+ 2239*z2^4*z3^3*z5+ 2239*z2^3*z3^4*z5+
    2239*z2^2*z3^5*z5+ 2239*z2*z3^6*z5+ 4496*z3^7*z5- 2257*z2^6*z4*z5+
    2254*z2^5*z3*z4*z5+ 2254*z2^4*z3^2*z4*z5+ 2254*z2^3*z3^3*z4*z5+
    2254*z2^2*z3^4*z4*z5+ 2254*z2*z3^5*z4*z5- 2257*z3^6*z4*z5+ 4496*z2^7*z6+
    2239*z2^6*z3*z6+ 2239*z2^5*z3^2*z6+ 2239*z2^4*z3^3*z6+ 2239*z2^3*z3^4*z6+
    2239*z2^2*z3^5*z6+ 2239*z2*z3^6*z6+ 4496*z3^7*z6- 2257*z2^6*z4*z6+
    2254*z2^5*z3*z4*z6+ 2254*z2^4*z3^2*z4*z6+ 2254*z2^3*z3^3*z4*z6+
    2254*z2^2*z3^4*z4*z6+ 2254*z2*z3^5*z4*z6- 2257*z3^6*z4*z6- 2257*z2^6*z5*z6+
    2254*z2^5*z3*z5*z6+ 2254*z2^4*z3^2*z5*z6+ 2254*z2^3*z3^3*z5*z6+
    2254*z2^2*z3^4*z5*z6+ 2254*z2*z3^5*z5*z6- 2257*z3^6*z5*z6-
    4490*z2^5*z4*z5*z6- 2224*z2^4*z3*z4*z5*z6- 2224*z2^3*z3^2*z4*z5*z6-
    2224*z2^2*z3^3*z4*z5*z6- 2224*z2*z3^4*z4*z5*z6- 4490*z3^5*z4*z5*z6+
    1130*z2^6+ 3946*z2^5*z3+ 3946*z2^4*z3^2+ 3946*z2^3*z3^3+ 3946*z2^2*z3^4+
    3946*z2*z3^5+ 1130*z3^6+ 2816*z2^5*z4- 1689*z2^4*z3*z4- 1689*z2^3*z3^2*z4-
    1689*z2^2*z3^3*z4- 1689*z2*z3^4*z4+ 2816*z3^5*z4+ 2816*z2^5*z5-
    1689*z2^4*z3*z5- 1689*z2^3*z3^2*z5- 1689*z2^2*z3^3*z5- 1689*z2*z3^4*z5+
    2816*z3^5*z5+ 4496*z2^4*z4*z5- 2822*z2^3*z3*z4*z5- 2822*z2^2*z3^2*z4*z5-
    2822*z2*z3^3*z4*z5+ 4496*z3^4*z4*z5+ 2816*z2^5*z6- 1689*z2^4*z3*z6-
    1689*z2^3*z3^2*z6- 1689*z2^2*z3^3*z6- 1689*z2*z3^4*z6+ 2816*z3^5*z6+
    4496*z2^4*z4*z6- 2822*z2^3*z3*z4*z6- 2822*z2^2*z3^2*z4*z6-
    2822*z2*z3^3*z4*z6+ 4496*z3^4*z4*z6+ 4496*z2^4*z5*z6- 2822*z2^3*z3*z5*z6-
    2822*z2^2*z3^2*z5*z6- 2822*z2*z3^3*z5*z6+ 4496*z3^4*z5*z6+
    1683*z2^3*z4*z5*z6+ 556*z2^2*z3*z4*z5*z6+ 556*z2*z3^2*z4*z5*z6+
    1683*z3^3*z4*z5*z6+ 3867*z2^4- 3585*z2^3*z3- 3585*z2^2*z3^2- 3585*z2*z3^3+
    3867*z3^4+ 1549*z2^3*z4- 911*z2^2*z3*z4- 911*z2*z3^2*z4+ 1549*z3^3*z4+
    1549*z2^3*z5- 911*z2^2*z3*z5- 911*z2*z3^2*z5+ 1549*z3^3*z5- 2460*z2^2*z4*z5-
    772*z2*z3*z4*z5- 2460*z3^2*z4*z5+ 1549*z2^3*z6- 911*z2^2*z3*z6-
    911*z2*z3^2*z6+ 1549*z3^3*z6- 2460*z2^2*z4*z6- 772*z2*z3*z4*z6-
    2460*z3^2*z4*z6- 2460*z2^2*z5*z6- 772*z2*z3*z5*z6- 2460*z3^2*z5*z6+
    1688*z2*z4*z5*z6+ 1688*z3*z4*z5*z6+ 3445*z2^2- 1003*z2*z3+ 3445*z3^2-
    4448*z2*z4- 4448*z3*z4- 4448*z2*z5- 4448*z3*z5+ 2971*z4*z5- 4448*z2*z6-
    4448*z3*z6+ 2971*z4*z6+ 2971*z5*z6- 2092",
    "2*z2^12- 4*z2^11*z3- 2*z2^11*z4+ 2*z2^10*z3*z4- 2*z2^10*z4^2+
    2*z2^9*z3*z4^2- 2*z2^9*z4^3+ 2*z2^8*z3*z4^3- 2*z2^8*z4^4+ 2*z2^7*z3*z4^4-
    2*z2^7*z4^5+ 2*z2^6*z3*z4^5- 2*z2^6*z4^6+ 2*z2^5*z3*z4^6- 2*z2^5*z4^7+
    2*z2^4*z3*z4^7- 2*z2^4*z4^8+ 2*z2^3*z3*z4^8- 2*z2^3*z4^9+ 2*z2^2*z3*z4^9-
    2*z2^2*z4^10+ 2*z2*z3*z4^10- 2*z2*z4^11- 4*z3*z4^11+ 2*z4^12- 4*z2^11*z5+
    6*z2^10*z3*z5+ 2*z2^10*z4*z5- 2*z2^9*z3*z4*z5+ 2*z2^9*z4^2*z5-
    2*z2^8*z3*z4^2*z5+ 2*z2^8*z4^3*z5- 2*z2^7*z3*z4^3*z5+ 2*z2^7*z4^4*z5-
    2*z2^6*z3*z4^4*z5+ 2*z2^6*z4^5*z5- 2*z2^5*z3*z4^5*z5+ 2*z2^5*z4^6*z5-
    2*z2^4*z3*z4^6*z5+ 2*z2^4*z4^7*z5- 2*z2^3*z3*z4^7*z5+ 2*z2^3*z4^8*z5-
    2*z2^2*z3*z4^8*z5+ 2*z2^2*z4^9*z5- 2*z2*z3*z4^9*z5+ 2*z2*z4^10*z5+
    6*z3*z4^10*z5- 4*z4^11*z5- 4*z2^11*z6+ 6*z2^10*z3*z6+ 2*z2^10*z4*z6-
    2*z2^9*z3*z4*z6+ 2*z2^9*z4^2*z6- 2*z2^8*z3*z4^2*z6+ 2*z2^8*z4^3*z6-
    2*z2^7*z3*z4^3*z6+ 2*z2^7*z4^4*z6- 2*z2^6*z3*z4^4*z6+ 2*z2^6*z4^5*z6-
    2*z2^5*z3*z4^5*z6+ 2*z2^5*z4^6*z6- 2*z2^4*z3*z4^6*z6+ 2*z2^4*z4^7*z6-
    2*z2^3*z3*z4^7*z6+ 2*z2^3*z4^8*z6- 2*z2^2*z3*z4^8*z6+ 2*z2^2*z4^9*z6-
    2*z2*z3*z4^9*z6+ 2*z2*z4^10*z6+ 6*z3*z4^10*z6- 4*z4^11*z6+ 6*z2^10*z5*z6-
    8*z2^9*z3*z5*z6- 2*z2^9*z4*z5*z6+ 2*z2^8*z3*z4*z5*z6- 2*z2^8*z4^2*z5*z6+
    2*z2^7*z3*z4^2*z5*z6- 2*z2^7*z4^3*z5*z6+ 2*z2^6*z3*z4^3*z5*z6-
    2*z2^6*z4^4*z5*z6+ 2*z2^5*z3*z4^4*z5*z6- 2*z2^5*z4^5*z5*z6+
    2*z2^4*z3*z4^5*z5*z6- 2*z2^4*z4^6*z5*z6+ 2*z2^3*z3*z4^6*z5*z6-
    2*z2^3*z4^7*z5*z6+ 2*z2^2*z3*z4^7*z5*z6- 2*z2^2*z4^8*z5*z6+
    2*z2*z3*z4^8*z5*z6- 2*z2*z4^9*z5*z6- 8*z3*z4^9*z5*z6+ 6*z4^10*z5*z6+
    8*z2^10+ 4491*z2^9*z3+ 4499*z2^9*z4+ 4496*z2^8*z3*z4+ 4499*z2^8*z4^2+
    4496*z2^7*z3*z4^2+ 4499*z2^7*z4^3+ 4496*z2^6*z3*z4^3+ 4499*z2^6*z4^4+
    4496*z2^5*z3*z4^4+ 4499*z2^5*z4^5+ 4496*z2^4*z3*z4^5+ 4499*z2^4*z4^6+
    4496*z2^3*z3*z4^6+ 4499*z2^3*z4^7+ 4496*z2^2*z3*z4^7+ 4499*z2^2*z4^8+
    4496*z2*z3*z4^8+ 4499*z2*z4^9+ 4491*z3*z4^9+ 8*z4^10+ 4491*z2^9*z5+
    5*z2^8*z3*z5+ 4496*z2^8*z4*z5- 4488*z2^7*z3*z4*z5+ 4496*z2^7*z4^2*z5-
    4488*z2^6*z3*z4^2*z5+ 4496*z2^6*z4^3*z5- 4488*z2^5*z3*z4^3*z5+
    4496*z2^5*z4^4*z5- 4488*z2^4*z3*z4^4*z5+ 4496*z2^4*z4^5*z5-
    4488*z2^3*z3*z4^5*z5+ 4496*z2^3*z4^6*z5- 4488*z2^2*z3*z4^6*z5+
    4496*z2^2*z4^7*z5- 4488*z2*z3*z4^7*z5+ 4496*z2*z4^8*z5+ 5*z3*z4^8*z5+
    4491*z4^9*z5+ 4491*z2^9*z6+ 5*z2^8*z3*z6+ 4496*z2^8*z4*z6-
    4488*z2^7*z3*z4*z6+ 4496*z2^7*z4^2*z6- 4488*z2^6*z3*z4^2*z6+
    4496*z2^6*z4^3*z6- 4488*z2^5*z3*z4^3*z6+ 4496*z2^5*z4^4*z6-
    4488*z2^4*z3*z4^4*z6+ 4496*z2^4*z4^5*z6- 4488*z2^3*z3*z4^5*z6+
    4496*z2^3*z4^6*z6- 4488*z2^2*z3*z4^6*z6+ 4496*z2^2*z4^7*z6-
    4488*z2*z3*z4^7*z6+ 4496*z2*z4^8*z6+ 5*z3*z4^8*z6+ 4491*z4^9*z6+
    5*z2^8*z5*z6- 4493*z2^7*z3*z5*z6- 4488*z2^7*z4*z5*z6+ 4478*z2^6*z3*z4*z5*z6-
    4488*z2^6*z4^2*z5*z6+ 4478*z2^5*z3*z4^2*z5*z6- 4488*z2^5*z4^3*z5*z6+
    4478*z2^4*z3*z4^3*z5*z6- 4488*z2^4*z4^4*z5*z6+ 4478*z2^3*z3*z4^4*z5*z6-
    4488*z2^3*z4^5*z5*z6+ 4478*z2^2*z3*z4^5*z5*z6- 4488*z2^2*z4^6*z5*z6+
    4478*z2*z3*z4^6*z5*z6- 4488*z2*z4^7*z5*z6- 4493*z3*z4^7*z5*z6+ 5*z4^8*z5*z6+
    2261*z2^8+ 4496*z2^7*z3- 2244*z2^7*z4+ 2239*z2^6*z3*z4- 2244*z2^6*z4^2+
    2239*z2^5*z3*z4^2- 2244*z2^5*z4^3+ 2239*z2^4*z3*z4^3- 2244*z2^4*z4^4+
    2239*z2^3*z3*z4^4- 2244*z2^3*z4^5+ 2239*z2^2*z3*z4^5- 2244*z2^2*z4^6+
    2239*z2*z3*z4^6- 2244*z2*z4^7+ 4496*z3*z4^7+ 2261*z4^8+ 4496*z2^7*z5-
    2257*z2^6*z3*z5+ 2239*z2^6*z4*z5+ 2254*z2^5*z3*z4*z5+ 2239*z2^5*z4^2*z5+
    2254*z2^4*z3*z4^2*z5+ 2239*z2^4*z4^3*z5+ 2254*z2^3*z3*z4^3*z5+
    2239*z2^3*z4^4*z5+ 2254*z2^2*z3*z4^4*z5+ 2239*z2^2*z4^5*z5+
    2254*z2*z3*z4^5*z5+ 2239*z2*z4^6*z5- 2257*z3*z4^6*z5+ 4496*z4^7*z5+
    4496*z2^7*z6- 2257*z2^6*z3*z6+ 2239*z2^6*z4*z6+ 2254*z2^5*z3*z4*z6+
    2239*z2^5*z4^2*z6+ 2254*z2^4*z3*z4^2*z6+ 2239*z2^4*z4^3*z6+
    2254*z2^3*z3*z4^3*z6+ 2239*z2^3*z4^4*z6+ 2254*z2^2*z3*z4^4*z6+
    2239*z2^2*z4^5*z6+ 2254*z2*z3*z4^5*z6+ 2239*z2*z4^6*z6- 2257*z3*z4^6*z6+
    4496*z4^7*z6- 2257*z2^6*z5*z6- 4490*z2^5*z3*z5*z6+ 2254*z2^5*z4*z5*z6-
    2224*z2^4*z3*z4*z5*z6+ 2254*z2^4*z4^2*z5*z6- 2224*z2^3*z3*z4^2*z5*z6+
    2254*z2^3*z4^3*z5*z6- 2224*z2^2*z3*z4^3*z5*z6+ 2254*z2^2*z4^4*z5*z6-
    2224*z2*z3*z4^4*z5*z6+ 2254*z2*z4^5*z5*z6- 4490*z3*z4^5*z5*z6-
    2257*z4^6*z5*z6+ 1130*z2^6+ 2816*z2^5*z3+ 3946*z2^5*z4- 1689*z2^4*z3*z4+
    3946*z2^4*z4^2- 1689*z2^3*z3*z4^2+ 3946*z2^3*z4^3- 1689*z2^2*z3*z4^3+
    3946*z2^2*z4^4- 1689*z2*z3*z4^4+ 3946*z2*z4^5+ 2816*z3*z4^5+ 1130*z4^6+
    2816*z2^5*z5+ 4496*z2^4*z3*z5- 1689*z2^4*z4*z5- 2822*z2^3*z3*z4*z5-
    1689*z2^3*z4^2*z5- 2822*z2^2*z3*z4^2*z5- 1689*z2^2*z4^3*z5-
    2822*z2*z3*z4^3*z5- 1689*z2*z4^4*z5+ 4496*z3*z4^4*z5+ 2816*z4^5*z5+
    2816*z2^5*z6+ 4496*z2^4*z3*z6- 1689*z2^4*z4*z6- 2822*z2^3*z3*z4*z6-
    1689*z2^3*z4^2*z6- 2822*z2^2*z3*z4^2*z6- 1689*z2^2*z4^3*z6-
    2822*z2*z3*z4^3*z6- 1689*z2*z4^4*z6+ 4496*z3*z4^4*z6+ 2816*z4^5*z6+
    4496*z2^4*z5*z6+ 1683*z2^3*z3*z5*z6- 2822*z2^3*z4*z5*z6+
    556*z2^2*z3*z4*z5*z6- 2822*z2^2*z4^2*z5*z6+ 556*z2*z3*z4^2*z5*z6-
    2822*z2*z4^3*z5*z6+ 1683*z3*z4^3*z5*z6+ 4496*z4^4*z5*z6+ 3867*z2^4+
    1549*z2^3*z3- 3585*z2^3*z4- 911*z2^2*z3*z4- 3585*z2^2*z4^2- 911*z2*z3*z4^2-
    3585*z2*z4^3+ 1549*z3*z4^3+ 3867*z4^4+ 1549*z2^3*z5- 2460*z2^2*z3*z5-
    911*z2^2*z4*z5- 772*z2*z3*z4*z5- 911*z2*z4^2*z5- 2460*z3*z4^2*z5+
    1549*z4^3*z5+ 1549*z2^3*z6- 2460*z2^2*z3*z6- 911*z2^2*z4*z6-
    772*z2*z3*z4*z6- 911*z2*z4^2*z6- 2460*z3*z4^2*z6+ 1549*z4^3*z6-
    2460*z2^2*z5*z6+ 1688*z2*z3*z5*z6- 772*z2*z4*z5*z6+ 1688*z3*z4*z5*z6-
    2460*z4^2*z5*z6+ 3445*z2^2- 4448*z2*z3- 1003*z2*z4- 4448*z3*z4+ 3445*z4^2-
    4448*z2*z5+ 2971*z3*z5- 4448*z4*z5- 4448*z2*z6+ 2971*z3*z6- 4448*z4*z6+
    2971*z5*z6- 2092",
    "2*z2^12- 4*z2^11*z3- 4*z2^11*z4+ 6*z2^10*z3*z4- 2*z2^11*z5+ 2*z2^10*z3*z5+
    2*z2^10*z4*z5- 2*z2^9*z3*z4*z5- 2*z2^10*z5^2+ 2*z2^9*z3*z5^2+
    2*z2^9*z4*z5^2- 2*z2^8*z3*z4*z5^2- 2*z2^9*z5^3+ 2*z2^8*z3*z5^3+
    2*z2^8*z4*z5^3- 2*z2^7*z3*z4*z5^3- 2*z2^8*z5^4+ 2*z2^7*z3*z5^4+
    2*z2^7*z4*z5^4- 2*z2^6*z3*z4*z5^4- 2*z2^7*z5^5+ 2*z2^6*z3*z5^5+
    2*z2^6*z4*z5^5- 2*z2^5*z3*z4*z5^5- 2*z2^6*z5^6+ 2*z2^5*z3*z5^6+
    2*z2^5*z4*z5^6- 2*z2^4*z3*z4*z5^6- 2*z2^5*z5^7+ 2*z2^4*z3*z5^7+
    2*z2^4*z4*z5^7- 2*z2^3*z3*z4*z5^7- 2*z2^4*z5^8+ 2*z2^3*z3*z5^8+
    2*z2^3*z4*z5^8- 2*z2^2*z3*z4*z5^8- 2*z2^3*z5^9+ 2*z2^2*z3*z5^9+
    2*z2^2*z4*z5^9- 2*z2*z3*z4*z5^9- 2*z2^2*z5^10+ 2*z2*z3*z5^10+ 2*z2*z4*z5^10+
    6*z3*z4*z5^10- 2*z2*z5^11- 4*z3*z5^11- 4*z4*z5^11+ 2*z5^12- 4*z2^11*z6+
    6*z2^10*z3*z6+ 6*z2^10*z4*z6- 8*z2^9*z3*z4*z6+ 2*z2^10*z5*z6-
    2*z2^9*z3*z5*z6- 2*z2^9*z4*z5*z6+ 2*z2^8*z3*z4*z5*z6+ 2*z2^9*z5^2*z6-
    2*z2^8*z3*z5^2*z6- 2*z2^8*z4*z5^2*z6+ 2*z2^7*z3*z4*z5^2*z6+ 2*z2^8*z5^3*z6-
    2*z2^7*z3*z5^3*z6- 2*z2^7*z4*z5^3*z6+ 2*z2^6*z3*z4*z5^3*z6+ 2*z2^7*z5^4*z6-
    2*z2^6*z3*z5^4*z6- 2*z2^6*z4*z5^4*z6+ 2*z2^5*z3*z4*z5^4*z6+ 2*z2^6*z5^5*z6-
    2*z2^5*z3*z5^5*z6- 2*z2^5*z4*z5^5*z6+ 2*z2^4*z3*z4*z5^5*z6+ 2*z2^5*z5^6*z6-
    2*z2^4*z3*z5^6*z6- 2*z2^4*z4*z5^6*z6+ 2*z2^3*z3*z4*z5^6*z6+ 2*z2^4*z5^7*z6-
    2*z2^3*z3*z5^7*z6- 2*z2^3*z4*z5^7*z6+ 2*z2^2*z3*z4*z5^7*z6+ 2*z2^3*z5^8*z6-
    2*z2^2*z3*z5^8*z6- 2*z2^2*z4*z5^8*z6+ 2*z2*z3*z4*z5^8*z6+ 2*z2^2*z5^9*z6-
    2*z2*z3*z5^9*z6- 2*z2*z4*z5^9*z6- 8*z3*z4*z5^9*z6+ 2*z2*z5^10*z6+
    6*z3*z5^10*z6+ 6*z4*z5^10*z6- 4*z5^11*z6+ 8*z2^10+ 4491*z2^9*z3+
    4491*z2^9*z4+ 5*z2^8*z3*z4+ 4499*z2^9*z5+ 4496*z2^8*z3*z5+ 4496*z2^8*z4*z5-
    4488*z2^7*z3*z4*z5+ 4499*z2^8*z5^2+ 4496*z2^7*z3*z5^2+ 4496*z2^7*z4*z5^2-
    4488*z2^6*z3*z4*z5^2+ 4499*z2^7*z5^3+ 4496*z2^6*z3*z5^3+ 4496*z2^6*z4*z5^3-
    4488*z2^5*z3*z4*z5^3+ 4499*z2^6*z5^4+ 4496*z2^5*z3*z5^4+ 4496*z2^5*z4*z5^4-
    4488*z2^4*z3*z4*z5^4+ 4499*z2^5*z5^5+ 4496*z2^4*z3*z5^5+ 4496*z2^4*z4*z5^5-
    4488*z2^3*z3*z4*z5^5+ 4499*z2^4*z5^6+ 4496*z2^3*z3*z5^6+ 4496*z2^3*z4*z5^6-
    4488*z2^2*z3*z4*z5^6+ 4499*z2^3*z5^7+ 4496*z2^2*z3*z5^7+ 4496*z2^2*z4*z5^7-
    4488*z2*z3*z4*z5^7+ 4499*z2^2*z5^8+ 4496*z2*z3*z5^8+ 4496*z2*z4*z5^8+
    5*z3*z4*z5^8+ 4499*z2*z5^9+ 4491*z3*z5^9+ 4491*z4*z5^9+ 8*z5^10+
    4491*z2^9*z6+ 5*z2^8*z3*z6+ 5*z2^8*z4*z6- 4493*z2^7*z3*z4*z6+
    4496*z2^8*z5*z6- 4488*z2^7*z3*z5*z6- 4488*z2^7*z4*z5*z6+
    4478*z2^6*z3*z4*z5*z6+ 4496*z2^7*z5^2*z6- 4488*z2^6*z3*z5^2*z6-
    4488*z2^6*z4*z5^2*z6+ 4478*z2^5*z3*z4*z5^2*z6+ 4496*z2^6*z5^3*z6-
    4488*z2^5*z3*z5^3*z6- 4488*z2^5*z4*z5^3*z6+ 4478*z2^4*z3*z4*z5^3*z6+
    4496*z2^5*z5^4*z6- 4488*z2^4*z3*z5^4*z6- 4488*z2^4*z4*z5^4*z6+
    4478*z2^3*z3*z4*z5^4*z6+ 4496*z2^4*z5^5*z6- 4488*z2^3*z3*z5^5*z6-
    4488*z2^3*z4*z5^5*z6+ 4478*z2^2*z3*z4*z5^5*z6+ 4496*z2^3*z5^6*z6-
    4488*z2^2*z3*z5^6*z6- 4488*z2^2*z4*z5^6*z6+ 4478*z2*z3*z4*z5^6*z6+
    4496*z2^2*z5^7*z6- 4488*z2*z3*z5^7*z6- 4488*z2*z4*z5^7*z6-
    4493*z3*z4*z5^7*z6+ 4496*z2*z5^8*z6+ 5*z3*z5^8*z6+ 5*z4*z5^8*z6+
    4491*z5^9*z6+ 2261*z2^8+ 4496*z2^7*z3+ 4496*z2^7*z4- 2257*z2^6*z3*z4-
    2244*z2^7*z5+ 2239*z2^6*z3*z5+ 2239*z2^6*z4*z5+ 2254*z2^5*z3*z4*z5-
    2244*z2^6*z5^2+ 2239*z2^5*z3*z5^2+ 2239*z2^5*z4*z5^2+ 2254*z2^4*z3*z4*z5^2-
    2244*z2^5*z5^3+ 2239*z2^4*z3*z5^3+ 2239*z2^4*z4*z5^3+ 2254*z2^3*z3*z4*z5^3-
    2244*z2^4*z5^4+ 2239*z2^3*z3*z5^4+ 2239*z2^3*z4*z5^4+ 2254*z2^2*z3*z4*z5^4-
    2244*z2^3*z5^5+ 2239*z2^2*z3*z5^5+ 2239*z2^2*z4*z5^5+ 2254*z2*z3*z4*z5^5-
    2244*z2^2*z5^6+ 2239*z2*z3*z5^6+ 2239*z2*z4*z5^6- 2257*z3*z4*z5^6-
    2244*z2*z5^7+ 4496*z3*z5^7+ 4496*z4*z5^7+ 2261*z5^8+ 4496*z2^7*z6-
    2257*z2^6*z3*z6- 2257*z2^6*z4*z6- 4490*z2^5*z3*z4*z6+ 2239*z2^6*z5*z6+
    2254*z2^5*z3*z5*z6+ 2254*z2^5*z4*z5*z6- 2224*z2^4*z3*z4*z5*z6+
    2239*z2^5*z5^2*z6+ 2254*z2^4*z3*z5^2*z6+ 2254*z2^4*z4*z5^2*z6-
    2224*z2^3*z3*z4*z5^2*z6+ 2239*z2^4*z5^3*z6+ 2254*z2^3*z3*z5^3*z6+
    2254*z2^3*z4*z5^3*z6- 2224*z2^2*z3*z4*z5^3*z6+ 2239*z2^3*z5^4*z6+
    2254*z2^2*z3*z5^4*z6+ 2254*z2^2*z4*z5^4*z6- 2224*z2*z3*z4*z5^4*z6+
    2239*z2^2*z5^5*z6+ 2254*z2*z3*z5^5*z6+ 2254*z2*z4*z5^5*z6-
    4490*z3*z4*z5^5*z6+ 2239*z2*z5^6*z6- 2257*z3*z5^6*z6- 2257*z4*z5^6*z6+
    4496*z5^7*z6+ 1130*z2^6+ 2816*z2^5*z3+ 2816*z2^5*z4+ 4496*z2^4*z3*z4+
    3946*z2^5*z5- 1689*z2^4*z3*z5- 1689*z2^4*z4*z5- 2822*z2^3*z3*z4*z5+
    3946*z2^4*z5^2- 1689*z2^3*z3*z5^2- 1689*z2^3*z4*z5^2- 2822*z2^2*z3*z4*z5^2+
    3946*z2^3*z5^3- 1689*z2^2*z3*z5^3- 1689*z2^2*z4*z5^3- 2822*z2*z3*z4*z5^3+
    3946*z2^2*z5^4- 1689*z2*z3*z5^4- 1689*z2*z4*z5^4+ 4496*z3*z4*z5^4+
    3946*z2*z5^5+ 2816*z3*z5^5+ 2816*z4*z5^5+ 1130*z5^6+ 2816*z2^5*z6+
    4496*z2^4*z3*z6+ 4496*z2^4*z4*z6+ 1683*z2^3*z3*z4*z6- 1689*z2^4*z5*z6-
    2822*z2^3*z3*z5*z6- 2822*z2^3*z4*z5*z6+ 556*z2^2*z3*z4*z5*z6-
    1689*z2^3*z5^2*z6- 2822*z2^2*z3*z5^2*z6- 2822*z2^2*z4*z5^2*z6+
    556*z2*z3*z4*z5^2*z6- 1689*z2^2*z5^3*z6- 2822*z2*z3*z5^3*z6-
    2822*z2*z4*z5^3*z6+ 1683*z3*z4*z5^3*z6- 1689*z2*z5^4*z6+ 4496*z3*z5^4*z6+
    4496*z4*z5^4*z6+ 2816*z5^5*z6+ 3867*z2^4+ 1549*z2^3*z3+ 1549*z2^3*z4-
    2460*z2^2*z3*z4- 3585*z2^3*z5- 911*z2^2*z3*z5- 911*z2^2*z4*z5-
    772*z2*z3*z4*z5- 3585*z2^2*z5^2- 911*z2*z3*z5^2- 911*z2*z4*z5^2-
    2460*z3*z4*z5^2- 3585*z2*z5^3+ 1549*z3*z5^3+ 1549*z4*z5^3+ 3867*z5^4+
    1549*z2^3*z6- 2460*z2^2*z3*z6- 2460*z2^2*z4*z6+ 1688*z2*z3*z4*z6-
    911*z2^2*z5*z6- 772*z2*z3*z5*z6- 772*z2*z4*z5*z6+ 1688*z3*z4*z5*z6-
    911*z2*z5^2*z6- 2460*z3*z5^2*z6- 2460*z4*z5^2*z6+ 1549*z5^3*z6+ 3445*z2^2-
    4448*z2*z3- 4448*z2*z4+ 2971*z3*z4- 1003*z2*z5- 4448*z3*z5- 4448*z4*z5+
    3445*z5^2- 4448*z2*z6+ 2971*z3*z6+ 2971*z4*z6- 4448*z5*z6- 2092",
    "2*z2^12- 4*z2^11*z3- 4*z2^11*z4+ 6*z2^10*z3*z4- 4*z2^11*z5+ 6*z2^10*z3*z5+
    6*z2^10*z4*z5- 8*z2^9*z3*z4*z5- 2*z2^11*z6+ 2*z2^10*z3*z6+ 2*z2^10*z4*z6-
    2*z2^9*z3*z4*z6+ 2*z2^10*z5*z6- 2*z2^9*z3*z5*z6- 2*z2^9*z4*z5*z6+
    2*z2^8*z3*z4*z5*z6- 2*z2^10*z6^2+ 2*z2^9*z3*z6^2+ 2*z2^9*z4*z6^2-
    2*z2^8*z3*z4*z6^2+ 2*z2^9*z5*z6^2- 2*z2^8*z3*z5*z6^2- 2*z2^8*z4*z5*z6^2+
    2*z2^7*z3*z4*z5*z6^2- 2*z2^9*z6^3+ 2*z2^8*z3*z6^3+ 2*z2^8*z4*z6^3-
    2*z2^7*z3*z4*z6^3+ 2*z2^8*z5*z6^3- 2*z2^7*z3*z5*z6^3- 2*z2^7*z4*z5*z6^3+
    2*z2^6*z3*z4*z5*z6^3- 2*z2^8*z6^4+ 2*z2^7*z3*z6^4+ 2*z2^7*z4*z6^4-
    2*z2^6*z3*z4*z6^4+ 2*z2^7*z5*z6^4- 2*z2^6*z3*z5*z6^4- 2*z2^6*z4*z5*z6^4+
    2*z2^5*z3*z4*z5*z6^4- 2*z2^7*z6^5+ 2*z2^6*z3*z6^5+ 2*z2^6*z4*z6^5-
    2*z2^5*z3*z4*z6^5+ 2*z2^6*z5*z6^5- 2*z2^5*z3*z5*z6^5- 2*z2^5*z4*z5*z6^5+
    2*z2^4*z3*z4*z5*z6^5- 2*z2^6*z6^6+ 2*z2^5*z3*z6^6+ 2*z2^5*z4*z6^6-
    2*z2^4*z3*z4*z6^6+ 2*z2^5*z5*z6^6- 2*z2^4*z3*z5*z6^6- 2*z2^4*z4*z5*z6^6+
    2*z2^3*z3*z4*z5*z6^6- 2*z2^5*z6^7+ 2*z2^4*z3*z6^7+ 2*z2^4*z4*z6^7-
    2*z2^3*z3*z4*z6^7+ 2*z2^4*z5*z6^7- 2*z2^3*z3*z5*z6^7- 2*z2^3*z4*z5*z6^7+
    2*z2^2*z3*z4*z5*z6^7- 2*z2^4*z6^8+ 2*z2^3*z3*z6^8+ 2*z2^3*z4*z6^8-
    2*z2^2*z3*z4*z6^8+ 2*z2^3*z5*z6^8- 2*z2^2*z3*z5*z6^8- 2*z2^2*z4*z5*z6^8+
    2*z2*z3*z4*z5*z6^8- 2*z2^3*z6^9+ 2*z2^2*z3*z6^9+ 2*z2^2*z4*z6^9-
    2*z2*z3*z4*z6^9+ 2*z2^2*z5*z6^9- 2*z2*z3*z5*z6^9- 2*z2*z4*z5*z6^9-
    8*z3*z4*z5*z6^9- 2*z2^2*z6^10+ 2*z2*z3*z6^10+ 2*z2*z4*z6^10+ 6*z3*z4*z6^10+
    2*z2*z5*z6^10+ 6*z3*z5*z6^10+ 6*z4*z5*z6^10- 2*z2*z6^11- 4*z3*z6^11-
    4*z4*z6^11- 4*z5*z6^11+ 2*z6^12+ 8*z2^10+ 4491*z2^9*z3+ 4491*z2^9*z4+
    5*z2^8*z3*z4+ 4491*z2^9*z5+ 5*z2^8*z3*z5+ 5*z2^8*z4*z5- 4493*z2^7*z3*z4*z5+
    4499*z2^9*z6+ 4496*z2^8*z3*z6+ 4496*z2^8*z4*z6- 4488*z2^7*z3*z4*z6+
    4496*z2^8*z5*z6- 4488*z2^7*z3*z5*z6- 4488*z2^7*z4*z5*z6+
    4478*z2^6*z3*z4*z5*z6+ 4499*z2^8*z6^2+ 4496*z2^7*z3*z6^2+ 4496*z2^7*z4*z6^2-
    4488*z2^6*z3*z4*z6^2+ 4496*z2^7*z5*z6^2- 4488*z2^6*z3*z5*z6^2-
    4488*z2^6*z4*z5*z6^2+ 4478*z2^5*z3*z4*z5*z6^2+ 4499*z2^7*z6^3+
    4496*z2^6*z3*z6^3+ 4496*z2^6*z4*z6^3- 4488*z2^5*z3*z4*z6^3+
    4496*z2^6*z5*z6^3- 4488*z2^5*z3*z5*z6^3- 4488*z2^5*z4*z5*z6^3+
    4478*z2^4*z3*z4*z5*z6^3+ 4499*z2^6*z6^4+ 4496*z2^5*z3*z6^4+
    4496*z2^5*z4*z6^4- 4488*z2^4*z3*z4*z6^4+ 4496*z2^5*z5*z6^4-
    4488*z2^4*z3*z5*z6^4- 4488*z2^4*z4*z5*z6^4+ 4478*z2^3*z3*z4*z5*z6^4+
    4499*z2^5*z6^5+ 4496*z2^4*z3*z6^5+ 4496*z2^4*z4*z6^5- 4488*z2^3*z3*z4*z6^5+
    4496*z2^4*z5*z6^5- 4488*z2^3*z3*z5*z6^5- 4488*z2^3*z4*z5*z6^5+
    4478*z2^2*z3*z4*z5*z6^5+ 4499*z2^4*z6^6+ 4496*z2^3*z3*z6^6+
    4496*z2^3*z4*z6^6- 4488*z2^2*z3*z4*z6^6+ 4496*z2^3*z5*z6^6-
    4488*z2^2*z3*z5*z6^6- 4488*z2^2*z4*z5*z6^6+ 4478*z2*z3*z4*z5*z6^6+
    4499*z2^3*z6^7+ 4496*z2^2*z3*z6^7+ 4496*z2^2*z4*z6^7- 4488*z2*z3*z4*z6^7+
    4496*z2^2*z5*z6^7- 4488*z2*z3*z5*z6^7- 4488*z2*z4*z5*z6^7-
    4493*z3*z4*z5*z6^7+ 4499*z2^2*z6^8+ 4496*z2*z3*z6^8+ 4496*z2*z4*z6^8+
    5*z3*z4*z6^8+ 4496*z2*z5*z6^8+ 5*z3*z5*z6^8+ 5*z4*z5*z6^8+ 4499*z2*z6^9+
    4491*z3*z6^9+ 4491*z4*z6^9+ 4491*z5*z6^9+ 8*z6^10+ 2261*z2^8+ 4496*z2^7*z3+
    4496*z2^7*z4- 2257*z2^6*z3*z4+ 4496*z2^7*z5- 2257*z2^6*z3*z5-
    2257*z2^6*z4*z5- 4490*z2^5*z3*z4*z5- 2244*z2^7*z6+ 2239*z2^6*z3*z6+
    2239*z2^6*z4*z6+ 2254*z2^5*z3*z4*z6+ 2239*z2^6*z5*z6+ 2254*z2^5*z3*z5*z6+
    2254*z2^5*z4*z5*z6- 2224*z2^4*z3*z4*z5*z6- 2244*z2^6*z6^2+
    2239*z2^5*z3*z6^2+ 2239*z2^5*z4*z6^2+ 2254*z2^4*z3*z4*z6^2+
    2239*z2^5*z5*z6^2+ 2254*z2^4*z3*z5*z6^2+ 2254*z2^4*z4*z5*z6^2-
    2224*z2^3*z3*z4*z5*z6^2- 2244*z2^5*z6^3+ 2239*z2^4*z3*z6^3+
    2239*z2^4*z4*z6^3+ 2254*z2^3*z3*z4*z6^3+ 2239*z2^4*z5*z6^3+
    2254*z2^3*z3*z5*z6^3+ 2254*z2^3*z4*z5*z6^3- 2224*z2^2*z3*z4*z5*z6^3-
    2244*z2^4*z6^4+ 2239*z2^3*z3*z6^4+ 2239*z2^3*z4*z6^4+ 2254*z2^2*z3*z4*z6^4+
    2239*z2^3*z5*z6^4+ 2254*z2^2*z3*z5*z6^4+ 2254*z2^2*z4*z5*z6^4-
    2224*z2*z3*z4*z5*z6^4- 2244*z2^3*z6^5+ 2239*z2^2*z3*z6^5+ 2239*z2^2*z4*z6^5+
    2254*z2*z3*z4*z6^5+ 2239*z2^2*z5*z6^5+ 2254*z2*z3*z5*z6^5+
    2254*z2*z4*z5*z6^5- 4490*z3*z4*z5*z6^5- 2244*z2^2*z6^6+ 2239*z2*z3*z6^6+
    2239*z2*z4*z6^6- 2257*z3*z4*z6^6+ 2239*z2*z5*z6^6- 2257*z3*z5*z6^6-
    2257*z4*z5*z6^6- 2244*z2*z6^7+ 4496*z3*z6^7+ 4496*z4*z6^7+ 4496*z5*z6^7+
    2261*z6^8+ 1130*z2^6+ 2816*z2^5*z3+ 2816*z2^5*z4+ 4496*z2^4*z3*z4+
    2816*z2^5*z5+ 4496*z2^4*z3*z5+ 4496*z2^4*z4*z5+ 1683*z2^3*z3*z4*z5+
    3946*z2^5*z6- 1689*z2^4*z3*z6- 1689*z2^4*z4*z6- 2822*z2^3*z3*z4*z6-
    1689*z2^4*z5*z6- 2822*z2^3*z3*z5*z6- 2822*z2^3*z4*z5*z6+
    556*z2^2*z3*z4*z5*z6+ 3946*z2^4*z6^2- 1689*z2^3*z3*z6^2- 1689*z2^3*z4*z6^2-
    2822*z2^2*z3*z4*z6^2- 1689*z2^3*z5*z6^2- 2822*z2^2*z3*z5*z6^2-
    2822*z2^2*z4*z5*z6^2+ 556*z2*z3*z4*z5*z6^2+ 3946*z2^3*z6^3-
    1689*z2^2*z3*z6^3- 1689*z2^2*z4*z6^3- 2822*z2*z3*z4*z6^3- 1689*z2^2*z5*z6^3-
    2822*z2*z3*z5*z6^3- 2822*z2*z4*z5*z6^3+ 1683*z3*z4*z5*z6^3+ 3946*z2^2*z6^4-
    1689*z2*z3*z6^4- 1689*z2*z4*z6^4+ 4496*z3*z4*z6^4- 1689*z2*z5*z6^4+
    4496*z3*z5*z6^4+ 4496*z4*z5*z6^4+ 3946*z2*z6^5+ 2816*z3*z6^5+ 2816*z4*z6^5+
    2816*z5*z6^5+ 1130*z6^6+ 3867*z2^4+ 1549*z2^3*z3+ 1549*z2^3*z4-
    2460*z2^2*z3*z4+ 1549*z2^3*z5- 2460*z2^2*z3*z5- 2460*z2^2*z4*z5+
    1688*z2*z3*z4*z5- 3585*z2^3*z6- 911*z2^2*z3*z6- 911*z2^2*z4*z6-
    772*z2*z3*z4*z6- 911*z2^2*z5*z6- 772*z2*z3*z5*z6- 772*z2*z4*z5*z6+
    1688*z3*z4*z5*z6- 3585*z2^2*z6^2- 911*z2*z3*z6^2- 911*z2*z4*z6^2-
    2460*z3*z4*z6^2- 911*z2*z5*z6^2- 2460*z3*z5*z6^2- 2460*z4*z5*z6^2-
    3585*z2*z6^3+ 1549*z3*z6^3+ 1549*z4*z6^3+ 1549*z5*z6^3+ 3867*z6^4+
    3445*z2^2- 4448*z2*z3- 4448*z2*z4+ 2971*z3*z4- 4448*z2*z5+ 2971*z3*z5+
    2971*z4*z5- 1003*z2*z6- 4448*z3*z6- 4448*z4*z6- 4448*z5*z6+ 3445*z6^2- 2092",
    "- 4*z2*z3^11+ 2*z3^12+ 2*z2*z3^10*z4- 2*z3^11*z4+ 2*z2*z3^9*z4^2-
    2*z3^10*z4^2+ 2*z2*z3^8*z4^3- 2*z3^9*z4^3+ 2*z2*z3^7*z4^4- 2*z3^8*z4^4+
    2*z2*z3^6*z4^5- 2*z3^7*z4^5+ 2*z2*z3^5*z4^6- 2*z3^6*z4^6+ 2*z2*z3^4*z4^7-
    2*z3^5*z4^7+ 2*z2*z3^3*z4^8- 2*z3^4*z4^8+ 2*z2*z3^2*z4^9- 2*z3^3*z4^9+
    2*z2*z3*z4^10- 2*z3^2*z4^10- 4*z2*z4^11- 2*z3*z4^11+ 2*z4^12+ 6*z2*z3^10*z5-
    4*z3^11*z5- 2*z2*z3^9*z4*z5+ 2*z3^10*z4*z5- 2*z2*z3^8*z4^2*z5+
    2*z3^9*z4^2*z5- 2*z2*z3^7*z4^3*z5+ 2*z3^8*z4^3*z5- 2*z2*z3^6*z4^4*z5+
    2*z3^7*z4^4*z5- 2*z2*z3^5*z4^5*z5+ 2*z3^6*z4^5*z5- 2*z2*z3^4*z4^6*z5+
    2*z3^5*z4^6*z5- 2*z2*z3^3*z4^7*z5+ 2*z3^4*z4^7*z5- 2*z2*z3^2*z4^8*z5+
    2*z3^3*z4^8*z5- 2*z2*z3*z4^9*z5+ 2*z3^2*z4^9*z5+ 6*z2*z4^10*z5+
    2*z3*z4^10*z5- 4*z4^11*z5+ 6*z2*z3^10*z6- 4*z3^11*z6- 2*z2*z3^9*z4*z6+
    2*z3^10*z4*z6- 2*z2*z3^8*z4^2*z6+ 2*z3^9*z4^2*z6- 2*z2*z3^7*z4^3*z6+
    2*z3^8*z4^3*z6- 2*z2*z3^6*z4^4*z6+ 2*z3^7*z4^4*z6- 2*z2*z3^5*z4^5*z6+
    2*z3^6*z4^5*z6- 2*z2*z3^4*z4^6*z6+ 2*z3^5*z4^6*z6- 2*z2*z3^3*z4^7*z6+
    2*z3^4*z4^7*z6- 2*z2*z3^2*z4^8*z6+ 2*z3^3*z4^8*z6- 2*z2*z3*z4^9*z6+
    2*z3^2*z4^9*z6+ 6*z2*z4^10*z6+ 2*z3*z4^10*z6- 4*z4^11*z6- 8*z2*z3^9*z5*z6+
    6*z3^10*z5*z6+ 2*z2*z3^8*z4*z5*z6- 2*z3^9*z4*z5*z6+ 2*z2*z3^7*z4^2*z5*z6-
    2*z3^8*z4^2*z5*z6+ 2*z2*z3^6*z4^3*z5*z6- 2*z3^7*z4^3*z5*z6+
    2*z2*z3^5*z4^4*z5*z6- 2*z3^6*z4^4*z5*z6+ 2*z2*z3^4*z4^5*z5*z6-
    2*z3^5*z4^5*z5*z6+ 2*z2*z3^3*z4^6*z5*z6- 2*z3^4*z4^6*z5*z6+
    2*z2*z3^2*z4^7*z5*z6- 2*z3^3*z4^7*z5*z6+ 2*z2*z3*z4^8*z5*z6-
    2*z3^2*z4^8*z5*z6- 8*z2*z4^9*z5*z6- 2*z3*z4^9*z5*z6+ 6*z4^10*z5*z6+
    4491*z2*z3^9+ 8*z3^10+ 4496*z2*z3^8*z4+ 4499*z3^9*z4+ 4496*z2*z3^7*z4^2+
    4499*z3^8*z4^2+ 4496*z2*z3^6*z4^3+ 4499*z3^7*z4^3+ 4496*z2*z3^5*z4^4+
    4499*z3^6*z4^4+ 4496*z2*z3^4*z4^5+ 4499*z3^5*z4^5+ 4496*z2*z3^3*z4^6+
    4499*z3^4*z4^6+ 4496*z2*z3^2*z4^7+ 4499*z3^3*z4^7+ 4496*z2*z3*z4^8+
    4499*z3^2*z4^8+ 4491*z2*z4^9+ 4499*z3*z4^9+ 8*z4^10+ 5*z2*z3^8*z5+
    4491*z3^9*z5- 4488*z2*z3^7*z4*z5+ 4496*z3^8*z4*z5- 4488*z2*z3^6*z4^2*z5+
    4496*z3^7*z4^2*z5- 4488*z2*z3^5*z4^3*z5+ 4496*z3^6*z4^3*z5-
    4488*z2*z3^4*z4^4*z5+ 4496*z3^5*z4^4*z5- 4488*z2*z3^3*z4^5*z5+
    4496*z3^4*z4^5*z5- 4488*z2*z3^2*z4^6*z5+ 4496*z3^3*z4^6*z5-
    4488*z2*z3*z4^7*z5+ 4496*z3^2*z4^7*z5+ 5*z2*z4^8*z5+ 4496*z3*z4^8*z5+
    4491*z4^9*z5+ 5*z2*z3^8*z6+ 4491*z3^9*z6- 4488*z2*z3^7*z4*z6+
    4496*z3^8*z4*z6- 4488*z2*z3^6*z4^2*z6+ 4496*z3^7*z4^2*z6-
    4488*z2*z3^5*z4^3*z6+ 4496*z3^6*z4^3*z6- 4488*z2*z3^4*z4^4*z6+
    4496*z3^5*z4^4*z6- 4488*z2*z3^3*z4^5*z6+ 4496*z3^4*z4^5*z6-
    4488*z2*z3^2*z4^6*z6+ 4496*z3^3*z4^6*z6- 4488*z2*z3*z4^7*z6+
    4496*z3^2*z4^7*z6+ 5*z2*z4^8*z6+ 4496*z3*z4^8*z6+ 4491*z4^9*z6-
    4493*z2*z3^7*z5*z6+ 5*z3^8*z5*z6+ 4478*z2*z3^6*z4*z5*z6- 4488*z3^7*z4*z5*z6+
    4478*z2*z3^5*z4^2*z5*z6- 4488*z3^6*z4^2*z5*z6+ 4478*z2*z3^4*z4^3*z5*z6-
    4488*z3^5*z4^3*z5*z6+ 4478*z2*z3^3*z4^4*z5*z6- 4488*z3^4*z4^4*z5*z6+
    4478*z2*z3^2*z4^5*z5*z6- 4488*z3^3*z4^5*z5*z6+ 4478*z2*z3*z4^6*z5*z6-
    4488*z3^2*z4^6*z5*z6- 4493*z2*z4^7*z5*z6- 4488*z3*z4^7*z5*z6+ 5*z4^8*z5*z6+
    4496*z2*z3^7+ 2261*z3^8+ 2239*z2*z3^6*z4- 2244*z3^7*z4+ 2239*z2*z3^5*z4^2-
    2244*z3^6*z4^2+ 2239*z2*z3^4*z4^3- 2244*z3^5*z4^3+ 2239*z2*z3^3*z4^4-
    2244*z3^4*z4^4+ 2239*z2*z3^2*z4^5- 2244*z3^3*z4^5+ 2239*z2*z3*z4^6-
    2244*z3^2*z4^6+ 4496*z2*z4^7- 2244*z3*z4^7+ 2261*z4^8- 2257*z2*z3^6*z5+
    4496*z3^7*z5+ 2254*z2*z3^5*z4*z5+ 2239*z3^6*z4*z5+ 2254*z2*z3^4*z4^2*z5+
    2239*z3^5*z4^2*z5+ 2254*z2*z3^3*z4^3*z5+ 2239*z3^4*z4^3*z5+
    2254*z2*z3^2*z4^4*z5+ 2239*z3^3*z4^4*z5+ 2254*z2*z3*z4^5*z5+
    2239*z3^2*z4^5*z5- 2257*z2*z4^6*z5+ 2239*z3*z4^6*z5+ 4496*z4^7*z5-
    2257*z2*z3^6*z6+ 4496*z3^7*z6+ 2254*z2*z3^5*z4*z6+ 2239*z3^6*z4*z6+
    2254*z2*z3^4*z4^2*z6+ 2239*z3^5*z4^2*z6+ 2254*z2*z3^3*z4^3*z6+
    2239*z3^4*z4^3*z6+ 2254*z2*z3^2*z4^4*z6+ 2239*z3^3*z4^4*z6+
    2254*z2*z3*z4^5*z6+ 2239*z3^2*z4^5*z6- 2257*z2*z4^6*z6+ 2239*z3*z4^6*z6+
    4496*z4^7*z6- 4490*z2*z3^5*z5*z6- 2257*z3^6*z5*z6- 2224*z2*z3^4*z4*z5*z6+
    2254*z3^5*z4*z5*z6- 2224*z2*z3^3*z4^2*z5*z6+ 2254*z3^4*z4^2*z5*z6-
    2224*z2*z3^2*z4^3*z5*z6+ 2254*z3^3*z4^3*z5*z6- 2224*z2*z3*z4^4*z5*z6+
    2254*z3^2*z4^4*z5*z6- 4490*z2*z4^5*z5*z6+ 2254*z3*z4^5*z5*z6-
    2257*z4^6*z5*z6+ 2816*z2*z3^5+ 1130*z3^6- 1689*z2*z3^4*z4+ 3946*z3^5*z4-
    1689*z2*z3^3*z4^2+ 3946*z3^4*z4^2- 1689*z2*z3^2*z4^3+ 3946*z3^3*z4^3-
    1689*z2*z3*z4^4+ 3946*z3^2*z4^4+ 2816*z2*z4^5+ 3946*z3*z4^5+ 1130*z4^6+
    4496*z2*z3^4*z5+ 2816*z3^5*z5- 2822*z2*z3^3*z4*z5- 1689*z3^4*z4*z5-
    2822*z2*z3^2*z4^2*z5- 1689*z3^3*z4^2*z5- 2822*z2*z3*z4^3*z5-
    1689*z3^2*z4^3*z5+ 4496*z2*z4^4*z5- 1689*z3*z4^4*z5+ 2816*z4^5*z5+
    4496*z2*z3^4*z6+ 2816*z3^5*z6- 2822*z2*z3^3*z4*z6- 1689*z3^4*z4*z6-
    2822*z2*z3^2*z4^2*z6- 1689*z3^3*z4^2*z6- 2822*z2*z3*z4^3*z6-
    1689*z3^2*z4^3*z6+ 4496*z2*z4^4*z6- 1689*z3*z4^4*z6+ 2816*z4^5*z6+
    1683*z2*z3^3*z5*z6+ 4496*z3^4*z5*z6+ 556*z2*z3^2*z4*z5*z6-
    2822*z3^3*z4*z5*z6+ 556*z2*z3*z4^2*z5*z6- 2822*z3^2*z4^2*z5*z6+
    1683*z2*z4^3*z5*z6- 2822*z3*z4^3*z5*z6+ 4496*z4^4*z5*z6+ 1549*z2*z3^3+
    3867*z3^4- 911*z2*z3^2*z4- 3585*z3^3*z4- 911*z2*z3*z4^2- 3585*z3^2*z4^2+
    1549*z2*z4^3- 3585*z3*z4^3+ 3867*z4^4- 2460*z2*z3^2*z5+ 1549*z3^3*z5-
    772*z2*z3*z4*z5- 911*z3^2*z4*z5- 2460*z2*z4^2*z5- 911*z3*z4^2*z5+
    1549*z4^3*z5- 2460*z2*z3^2*z6+ 1549*z3^3*z6- 772*z2*z3*z4*z6-
    911*z3^2*z4*z6- 2460*z2*z4^2*z6- 911*z3*z4^2*z6+ 1549*z4^3*z6+
    1688*z2*z3*z5*z6- 2460*z3^2*z5*z6+ 1688*z2*z4*z5*z6- 772*z3*z4*z5*z6-
    2460*z4^2*z5*z6- 4448*z2*z3+ 3445*z3^2- 4448*z2*z4- 1003*z3*z4+ 3445*z4^2+
    2971*z2*z5- 4448*z3*z5- 4448*z4*z5+ 2971*z2*z6- 4448*z3*z6- 4448*z4*z6+
    2971*z5*z6- 2092",
    "- 4*z2*z3^11+ 2*z3^12+ 6*z2*z3^10*z4- 4*z3^11*z4+ 2*z2*z3^10*z5-
    2*z3^11*z5- 2*z2*z3^9*z4*z5+ 2*z3^10*z4*z5+ 2*z2*z3^9*z5^2- 2*z3^10*z5^2-
    2*z2*z3^8*z4*z5^2+ 2*z3^9*z4*z5^2+ 2*z2*z3^8*z5^3- 2*z3^9*z5^3-
    2*z2*z3^7*z4*z5^3+ 2*z3^8*z4*z5^3+ 2*z2*z3^7*z5^4- 2*z3^8*z5^4-
    2*z2*z3^6*z4*z5^4+ 2*z3^7*z4*z5^4+ 2*z2*z3^6*z5^5- 2*z3^7*z5^5-
    2*z2*z3^5*z4*z5^5+ 2*z3^6*z4*z5^5+ 2*z2*z3^5*z5^6- 2*z3^6*z5^6-
    2*z2*z3^4*z4*z5^6+ 2*z3^5*z4*z5^6+ 2*z2*z3^4*z5^7- 2*z3^5*z5^7-
    2*z2*z3^3*z4*z5^7+ 2*z3^4*z4*z5^7+ 2*z2*z3^3*z5^8- 2*z3^4*z5^8-
    2*z2*z3^2*z4*z5^8+ 2*z3^3*z4*z5^8+ 2*z2*z3^2*z5^9- 2*z3^3*z5^9-
    2*z2*z3*z4*z5^9+ 2*z3^2*z4*z5^9+ 2*z2*z3*z5^10- 2*z3^2*z5^10+ 6*z2*z4*z5^10+
    2*z3*z4*z5^10- 4*z2*z5^11- 2*z3*z5^11- 4*z4*z5^11+ 2*z5^12+ 6*z2*z3^10*z6-
    4*z3^11*z6- 8*z2*z3^9*z4*z6+ 6*z3^10*z4*z6- 2*z2*z3^9*z5*z6+ 2*z3^10*z5*z6+
    2*z2*z3^8*z4*z5*z6- 2*z3^9*z4*z5*z6- 2*z2*z3^8*z5^2*z6+ 2*z3^9*z5^2*z6+
    2*z2*z3^7*z4*z5^2*z6- 2*z3^8*z4*z5^2*z6- 2*z2*z3^7*z5^3*z6+ 2*z3^8*z5^3*z6+
    2*z2*z3^6*z4*z5^3*z6- 2*z3^7*z4*z5^3*z6- 2*z2*z3^6*z5^4*z6+ 2*z3^7*z5^4*z6+
    2*z2*z3^5*z4*z5^4*z6- 2*z3^6*z4*z5^4*z6- 2*z2*z3^5*z5^5*z6+ 2*z3^6*z5^5*z6+
    2*z2*z3^4*z4*z5^5*z6- 2*z3^5*z4*z5^5*z6- 2*z2*z3^4*z5^6*z6+ 2*z3^5*z5^6*z6+
    2*z2*z3^3*z4*z5^6*z6- 2*z3^4*z4*z5^6*z6- 2*z2*z3^3*z5^7*z6+ 2*z3^4*z5^7*z6+
    2*z2*z3^2*z4*z5^7*z6- 2*z3^3*z4*z5^7*z6- 2*z2*z3^2*z5^8*z6+ 2*z3^3*z5^8*z6+
    2*z2*z3*z4*z5^8*z6- 2*z3^2*z4*z5^8*z6- 2*z2*z3*z5^9*z6+ 2*z3^2*z5^9*z6-
    8*z2*z4*z5^9*z6- 2*z3*z4*z5^9*z6+ 6*z2*z5^10*z6+ 2*z3*z5^10*z6+
    6*z4*z5^10*z6- 4*z5^11*z6+ 4491*z2*z3^9+ 8*z3^10+ 5*z2*z3^8*z4+
    4491*z3^9*z4+ 4496*z2*z3^8*z5+ 4499*z3^9*z5- 4488*z2*z3^7*z4*z5+
    4496*z3^8*z4*z5+ 4496*z2*z3^7*z5^2+ 4499*z3^8*z5^2- 4488*z2*z3^6*z4*z5^2+
    4496*z3^7*z4*z5^2+ 4496*z2*z3^6*z5^3+ 4499*z3^7*z5^3- 4488*z2*z3^5*z4*z5^3+
    4496*z3^6*z4*z5^3+ 4496*z2*z3^5*z5^4+ 4499*z3^6*z5^4- 4488*z2*z3^4*z4*z5^4+
    4496*z3^5*z4*z5^4+ 4496*z2*z3^4*z5^5+ 4499*z3^5*z5^5- 4488*z2*z3^3*z4*z5^5+
    4496*z3^4*z4*z5^5+ 4496*z2*z3^3*z5^6+ 4499*z3^4*z5^6- 4488*z2*z3^2*z4*z5^6+
    4496*z3^3*z4*z5^6+ 4496*z2*z3^2*z5^7+ 4499*z3^3*z5^7- 4488*z2*z3*z4*z5^7+
    4496*z3^2*z4*z5^7+ 4496*z2*z3*z5^8+ 4499*z3^2*z5^8+ 5*z2*z4*z5^8+
    4496*z3*z4*z5^8+ 4491*z2*z5^9+ 4499*z3*z5^9+ 4491*z4*z5^9+ 8*z5^10+
    5*z2*z3^8*z6+ 4491*z3^9*z6- 4493*z2*z3^7*z4*z6+ 5*z3^8*z4*z6-
    4488*z2*z3^7*z5*z6+ 4496*z3^8*z5*z6+ 4478*z2*z3^6*z4*z5*z6-
    4488*z3^7*z4*z5*z6- 4488*z2*z3^6*z5^2*z6+ 4496*z3^7*z5^2*z6+
    4478*z2*z3^5*z4*z5^2*z6- 4488*z3^6*z4*z5^2*z6- 4488*z2*z3^5*z5^3*z6+
    4496*z3^6*z5^3*z6+ 4478*z2*z3^4*z4*z5^3*z6- 4488*z3^5*z4*z5^3*z6-
    4488*z2*z3^4*z5^4*z6+ 4496*z3^5*z5^4*z6+ 4478*z2*z3^3*z4*z5^4*z6-
    4488*z3^4*z4*z5^4*z6- 4488*z2*z3^3*z5^5*z6+ 4496*z3^4*z5^5*z6+
    4478*z2*z3^2*z4*z5^5*z6- 4488*z3^3*z4*z5^5*z6- 4488*z2*z3^2*z5^6*z6+
    4496*z3^3*z5^6*z6+ 4478*z2*z3*z4*z5^6*z6- 4488*z3^2*z4*z5^6*z6-
    4488*z2*z3*z5^7*z6+ 4496*z3^2*z5^7*z6- 4493*z2*z4*z5^7*z6-
    4488*z3*z4*z5^7*z6+ 5*z2*z5^8*z6+ 4496*z3*z5^8*z6+ 5*z4*z5^8*z6+
    4491*z5^9*z6+ 4496*z2*z3^7+ 2261*z3^8- 2257*z2*z3^6*z4+ 4496*z3^7*z4+
    2239*z2*z3^6*z5- 2244*z3^7*z5+ 2254*z2*z3^5*z4*z5+ 2239*z3^6*z4*z5+
    2239*z2*z3^5*z5^2- 2244*z3^6*z5^2+ 2254*z2*z3^4*z4*z5^2+ 2239*z3^5*z4*z5^2+
    2239*z2*z3^4*z5^3- 2244*z3^5*z5^3+ 2254*z2*z3^3*z4*z5^3+ 2239*z3^4*z4*z5^3+
    2239*z2*z3^3*z5^4- 2244*z3^4*z5^4+ 2254*z2*z3^2*z4*z5^4+ 2239*z3^3*z4*z5^4+
    2239*z2*z3^2*z5^5- 2244*z3^3*z5^5+ 2254*z2*z3*z4*z5^5+ 2239*z3^2*z4*z5^5+
    2239*z2*z3*z5^6- 2244*z3^2*z5^6- 2257*z2*z4*z5^6+ 2239*z3*z4*z5^6+
    4496*z2*z5^7- 2244*z3*z5^7+ 4496*z4*z5^7+ 2261*z5^8- 2257*z2*z3^6*z6+
    4496*z3^7*z6- 4490*z2*z3^5*z4*z6- 2257*z3^6*z4*z6+ 2254*z2*z3^5*z5*z6+
    2239*z3^6*z5*z6- 2224*z2*z3^4*z4*z5*z6+ 2254*z3^5*z4*z5*z6+
    2254*z2*z3^4*z5^2*z6+ 2239*z3^5*z5^2*z6- 2224*z2*z3^3*z4*z5^2*z6+
    2254*z3^4*z4*z5^2*z6+ 2254*z2*z3^3*z5^3*z6+ 2239*z3^4*z5^3*z6-
    2224*z2*z3^2*z4*z5^3*z6+ 2254*z3^3*z4*z5^3*z6+ 2254*z2*z3^2*z5^4*z6+
    2239*z3^3*z5^4*z6- 2224*z2*z3*z4*z5^4*z6+ 2254*z3^2*z4*z5^4*z6+
    2254*z2*z3*z5^5*z6+ 2239*z3^2*z5^5*z6- 4490*z2*z4*z5^5*z6+
    2254*z3*z4*z5^5*z6- 2257*z2*z5^6*z6+ 2239*z3*z5^6*z6- 2257*z4*z5^6*z6+
    4496*z5^7*z6+ 2816*z2*z3^5+ 1130*z3^6+ 4496*z2*z3^4*z4+ 2816*z3^5*z4-
    1689*z2*z3^4*z5+ 3946*z3^5*z5- 2822*z2*z3^3*z4*z5- 1689*z3^4*z4*z5-
    1689*z2*z3^3*z5^2+ 3946*z3^4*z5^2- 2822*z2*z3^2*z4*z5^2- 1689*z3^3*z4*z5^2-
    1689*z2*z3^2*z5^3+ 3946*z3^3*z5^3- 2822*z2*z3*z4*z5^3- 1689*z3^2*z4*z5^3-
    1689*z2*z3*z5^4+ 3946*z3^2*z5^4+ 4496*z2*z4*z5^4- 1689*z3*z4*z5^4+
    2816*z2*z5^5+ 3946*z3*z5^5+ 2816*z4*z5^5+ 1130*z5^6+ 4496*z2*z3^4*z6+
    2816*z3^5*z6+ 1683*z2*z3^3*z4*z6+ 4496*z3^4*z4*z6- 2822*z2*z3^3*z5*z6-
    1689*z3^4*z5*z6+ 556*z2*z3^2*z4*z5*z6- 2822*z3^3*z4*z5*z6-
    2822*z2*z3^2*z5^2*z6- 1689*z3^3*z5^2*z6+ 556*z2*z3*z4*z5^2*z6-
    2822*z3^2*z4*z5^2*z6- 2822*z2*z3*z5^3*z6- 1689*z3^2*z5^3*z6+
    1683*z2*z4*z5^3*z6- 2822*z3*z4*z5^3*z6+ 4496*z2*z5^4*z6- 1689*z3*z5^4*z6+
    4496*z4*z5^4*z6+ 2816*z5^5*z6+ 1549*z2*z3^3+ 3867*z3^4- 2460*z2*z3^2*z4+
    1549*z3^3*z4- 911*z2*z3^2*z5- 3585*z3^3*z5- 772*z2*z3*z4*z5- 911*z3^2*z4*z5-
    911*z2*z3*z5^2- 3585*z3^2*z5^2- 2460*z2*z4*z5^2- 911*z3*z4*z5^2+
    1549*z2*z5^3- 3585*z3*z5^3+ 1549*z4*z5^3+ 3867*z5^4- 2460*z2*z3^2*z6+
    1549*z3^3*z6+ 1688*z2*z3*z4*z6- 2460*z3^2*z4*z6- 772*z2*z3*z5*z6-
    911*z3^2*z5*z6+ 1688*z2*z4*z5*z6- 772*z3*z4*z5*z6- 2460*z2*z5^2*z6-
    911*z3*z5^2*z6- 2460*z4*z5^2*z6+ 1549*z5^3*z6- 4448*z2*z3+ 3445*z3^2+
    2971*z2*z4- 4448*z3*z4- 4448*z2*z5- 1003*z3*z5- 4448*z4*z5+ 3445*z5^2+
    2971*z2*z6- 4448*z3*z6+ 2971*z4*z6- 4448*z5*z6- 2092",
    "- 4*z2*z3^11+ 2*z3^12+ 6*z2*z3^10*z4- 4*z3^11*z4+ 6*z2*z3^10*z5-
    4*z3^11*z5- 8*z2*z3^9*z4*z5+ 6*z3^10*z4*z5+ 2*z2*z3^10*z6- 2*z3^11*z6-
    2*z2*z3^9*z4*z6+ 2*z3^10*z4*z6- 2*z2*z3^9*z5*z6+ 2*z3^10*z5*z6+
    2*z2*z3^8*z4*z5*z6- 2*z3^9*z4*z5*z6+ 2*z2*z3^9*z6^2- 2*z3^10*z6^2-
    2*z2*z3^8*z4*z6^2+ 2*z3^9*z4*z6^2- 2*z2*z3^8*z5*z6^2+ 2*z3^9*z5*z6^2+
    2*z2*z3^7*z4*z5*z6^2- 2*z3^8*z4*z5*z6^2+ 2*z2*z3^8*z6^3- 2*z3^9*z6^3-
    2*z2*z3^7*z4*z6^3+ 2*z3^8*z4*z6^3- 2*z2*z3^7*z5*z6^3+ 2*z3^8*z5*z6^3+
    2*z2*z3^6*z4*z5*z6^3- 2*z3^7*z4*z5*z6^3+ 2*z2*z3^7*z6^4- 2*z3^8*z6^4-
    2*z2*z3^6*z4*z6^4+ 2*z3^7*z4*z6^4- 2*z2*z3^6*z5*z6^4+ 2*z3^7*z5*z6^4+
    2*z2*z3^5*z4*z5*z6^4- 2*z3^6*z4*z5*z6^4+ 2*z2*z3^6*z6^5- 2*z3^7*z6^5-
    2*z2*z3^5*z4*z6^5+ 2*z3^6*z4*z6^5- 2*z2*z3^5*z5*z6^5+ 2*z3^6*z5*z6^5+
    2*z2*z3^4*z4*z5*z6^5- 2*z3^5*z4*z5*z6^5+ 2*z2*z3^5*z6^6- 2*z3^6*z6^6-
    2*z2*z3^4*z4*z6^6+ 2*z3^5*z4*z6^6- 2*z2*z3^4*z5*z6^6+ 2*z3^5*z5*z6^6+
    2*z2*z3^3*z4*z5*z6^6- 2*z3^4*z4*z5*z6^6+ 2*z2*z3^4*z6^7- 2*z3^5*z6^7-
    2*z2*z3^3*z4*z6^7+ 2*z3^4*z4*z6^7- 2*z2*z3^3*z5*z6^7+ 2*z3^4*z5*z6^7+
    2*z2*z3^2*z4*z5*z6^7- 2*z3^3*z4*z5*z6^7+ 2*z2*z3^3*z6^8- 2*z3^4*z6^8-
    2*z2*z3^2*z4*z6^8+ 2*z3^3*z4*z6^8- 2*z2*z3^2*z5*z6^8+ 2*z3^3*z5*z6^8+
    2*z2*z3*z4*z5*z6^8- 2*z3^2*z4*z5*z6^8+ 2*z2*z3^2*z6^9- 2*z3^3*z6^9-
    2*z2*z3*z4*z6^9+ 2*z3^2*z4*z6^9- 2*z2*z3*z5*z6^9+ 2*z3^2*z5*z6^9-
    8*z2*z4*z5*z6^9- 2*z3*z4*z5*z6^9+ 2*z2*z3*z6^10- 2*z3^2*z6^10+
    6*z2*z4*z6^10+ 2*z3*z4*z6^10+ 6*z2*z5*z6^10+ 2*z3*z5*z6^10+ 6*z4*z5*z6^10-
    4*z2*z6^11- 2*z3*z6^11- 4*z4*z6^11- 4*z5*z6^11+ 2*z6^12+ 4491*z2*z3^9+
    8*z3^10+ 5*z2*z3^8*z4+ 4491*z3^9*z4+ 5*z2*z3^8*z5+ 4491*z3^9*z5-
    4493*z2*z3^7*z4*z5+ 5*z3^8*z4*z5+ 4496*z2*z3^8*z6+ 4499*z3^9*z6-
    4488*z2*z3^7*z4*z6+ 4496*z3^8*z4*z6- 4488*z2*z3^7*z5*z6+ 4496*z3^8*z5*z6+
    4478*z2*z3^6*z4*z5*z6- 4488*z3^7*z4*z5*z6+ 4496*z2*z3^7*z6^2+
    4499*z3^8*z6^2- 4488*z2*z3^6*z4*z6^2+ 4496*z3^7*z4*z6^2-
    4488*z2*z3^6*z5*z6^2+ 4496*z3^7*z5*z6^2+ 4478*z2*z3^5*z4*z5*z6^2-
    4488*z3^6*z4*z5*z6^2+ 4496*z2*z3^6*z6^3+ 4499*z3^7*z6^3-
    4488*z2*z3^5*z4*z6^3+ 4496*z3^6*z4*z6^3- 4488*z2*z3^5*z5*z6^3+
    4496*z3^6*z5*z6^3+ 4478*z2*z3^4*z4*z5*z6^3- 4488*z3^5*z4*z5*z6^3+
    4496*z2*z3^5*z6^4+ 4499*z3^6*z6^4- 4488*z2*z3^4*z4*z6^4+ 4496*z3^5*z4*z6^4-
    4488*z2*z3^4*z5*z6^4+ 4496*z3^5*z5*z6^4+ 4478*z2*z3^3*z4*z5*z6^4-
    4488*z3^4*z4*z5*z6^4+ 4496*z2*z3^4*z6^5+ 4499*z3^5*z6^5-
    4488*z2*z3^3*z4*z6^5+ 4496*z3^4*z4*z6^5- 4488*z2*z3^3*z5*z6^5+
    4496*z3^4*z5*z6^5+ 4478*z2*z3^2*z4*z5*z6^5- 4488*z3^3*z4*z5*z6^5+
    4496*z2*z3^3*z6^6+ 4499*z3^4*z6^6- 4488*z2*z3^2*z4*z6^6+ 4496*z3^3*z4*z6^6-
    4488*z2*z3^2*z5*z6^6+ 4496*z3^3*z5*z6^6+ 4478*z2*z3*z4*z5*z6^6-
    4488*z3^2*z4*z5*z6^6+ 4496*z2*z3^2*z6^7+ 4499*z3^3*z6^7- 4488*z2*z3*z4*z6^7+
    4496*z3^2*z4*z6^7- 4488*z2*z3*z5*z6^7+ 4496*z3^2*z5*z6^7-
    4493*z2*z4*z5*z6^7- 4488*z3*z4*z5*z6^7+ 4496*z2*z3*z6^8+ 4499*z3^2*z6^8+
    5*z2*z4*z6^8+ 4496*z3*z4*z6^8+ 5*z2*z5*z6^8+ 4496*z3*z5*z6^8+ 5*z4*z5*z6^8+
    4491*z2*z6^9+ 4499*z3*z6^9+ 4491*z4*z6^9+ 4491*z5*z6^9+ 8*z6^10+
    4496*z2*z3^7+ 2261*z3^8- 2257*z2*z3^6*z4+ 4496*z3^7*z4- 2257*z2*z3^6*z5+
    4496*z3^7*z5- 4490*z2*z3^5*z4*z5- 2257*z3^6*z4*z5+ 2239*z2*z3^6*z6-
    2244*z3^7*z6+ 2254*z2*z3^5*z4*z6+ 2239*z3^6*z4*z6+ 2254*z2*z3^5*z5*z6+
    2239*z3^6*z5*z6- 2224*z2*z3^4*z4*z5*z6+ 2254*z3^5*z4*z5*z6+
    2239*z2*z3^5*z6^2- 2244*z3^6*z6^2+ 2254*z2*z3^4*z4*z6^2+ 2239*z3^5*z4*z6^2+
    2254*z2*z3^4*z5*z6^2+ 2239*z3^5*z5*z6^2- 2224*z2*z3^3*z4*z5*z6^2+
    2254*z3^4*z4*z5*z6^2+ 2239*z2*z3^4*z6^3- 2244*z3^5*z6^3+
    2254*z2*z3^3*z4*z6^3+ 2239*z3^4*z4*z6^3+ 2254*z2*z3^3*z5*z6^3+
    2239*z3^4*z5*z6^3- 2224*z2*z3^2*z4*z5*z6^3+ 2254*z3^3*z4*z5*z6^3+
    2239*z2*z3^3*z6^4- 2244*z3^4*z6^4+ 2254*z2*z3^2*z4*z6^4+ 2239*z3^3*z4*z6^4+
    2254*z2*z3^2*z5*z6^4+ 2239*z3^3*z5*z6^4- 2224*z2*z3*z4*z5*z6^4+
    2254*z3^2*z4*z5*z6^4+ 2239*z2*z3^2*z6^5- 2244*z3^3*z6^5+ 2254*z2*z3*z4*z6^5+
    2239*z3^2*z4*z6^5+ 2254*z2*z3*z5*z6^5+ 2239*z3^2*z5*z6^5-
    4490*z2*z4*z5*z6^5+ 2254*z3*z4*z5*z6^5+ 2239*z2*z3*z6^6- 2244*z3^2*z6^6-
    2257*z2*z4*z6^6+ 2239*z3*z4*z6^6- 2257*z2*z5*z6^6+ 2239*z3*z5*z6^6-
    2257*z4*z5*z6^6+ 4496*z2*z6^7- 2244*z3*z6^7+ 4496*z4*z6^7+ 4496*z5*z6^7+
    2261*z6^8+ 2816*z2*z3^5+ 1130*z3^6+ 4496*z2*z3^4*z4+ 2816*z3^5*z4+
    4496*z2*z3^4*z5+ 2816*z3^5*z5+ 1683*z2*z3^3*z4*z5+ 4496*z3^4*z4*z5-
    1689*z2*z3^4*z6+ 3946*z3^5*z6- 2822*z2*z3^3*z4*z6- 1689*z3^4*z4*z6-
    2822*z2*z3^3*z5*z6- 1689*z3^4*z5*z6+ 556*z2*z3^2*z4*z5*z6-
    2822*z3^3*z4*z5*z6- 1689*z2*z3^3*z6^2+ 3946*z3^4*z6^2- 2822*z2*z3^2*z4*z6^2-
    1689*z3^3*z4*z6^2- 2822*z2*z3^2*z5*z6^2- 1689*z3^3*z5*z6^2+
    556*z2*z3*z4*z5*z6^2- 2822*z3^2*z4*z5*z6^2- 1689*z2*z3^2*z6^3+
    3946*z3^3*z6^3- 2822*z2*z3*z4*z6^3- 1689*z3^2*z4*z6^3- 2822*z2*z3*z5*z6^3-
    1689*z3^2*z5*z6^3+ 1683*z2*z4*z5*z6^3- 2822*z3*z4*z5*z6^3- 1689*z2*z3*z6^4+
    3946*z3^2*z6^4+ 4496*z2*z4*z6^4- 1689*z3*z4*z6^4+ 4496*z2*z5*z6^4-
    1689*z3*z5*z6^4+ 4496*z4*z5*z6^4+ 2816*z2*z6^5+ 3946*z3*z6^5+ 2816*z4*z6^5+
    2816*z5*z6^5+ 1130*z6^6+ 1549*z2*z3^3+ 3867*z3^4- 2460*z2*z3^2*z4+
    1549*z3^3*z4- 2460*z2*z3^2*z5+ 1549*z3^3*z5+ 1688*z2*z3*z4*z5-
    2460*z3^2*z4*z5- 911*z2*z3^2*z6- 3585*z3^3*z6- 772*z2*z3*z4*z6-
    911*z3^2*z4*z6- 772*z2*z3*z5*z6- 911*z3^2*z5*z6+ 1688*z2*z4*z5*z6-
    772*z3*z4*z5*z6- 911*z2*z3*z6^2- 3585*z3^2*z6^2- 2460*z2*z4*z6^2-
    911*z3*z4*z6^2- 2460*z2*z5*z6^2- 911*z3*z5*z6^2- 2460*z4*z5*z6^2+
    1549*z2*z6^3- 3585*z3*z6^3+ 1549*z4*z6^3+ 1549*z5*z6^3+ 3867*z6^4-
    4448*z2*z3+ 3445*z3^2+ 2971*z2*z4- 4448*z3*z4+ 2971*z2*z5- 4448*z3*z5+
    2971*z4*z5- 4448*z2*z6- 1003*z3*z6- 4448*z4*z6- 4448*z5*z6+ 3445*z6^2- 2092",
    "6*z2*z3*z4^10- 4*z2*z4^11- 4*z3*z4^11+ 2*z4^12- 2*z2*z3*z4^9*z5+
    2*z2*z4^10*z5+ 2*z3*z4^10*z5- 2*z4^11*z5- 2*z2*z3*z4^8*z5^2+ 2*z2*z4^9*z5^2+
    2*z3*z4^9*z5^2- 2*z4^10*z5^2- 2*z2*z3*z4^7*z5^3+ 2*z2*z4^8*z5^3+
    2*z3*z4^8*z5^3- 2*z4^9*z5^3- 2*z2*z3*z4^6*z5^4+ 2*z2*z4^7*z5^4+
    2*z3*z4^7*z5^4- 2*z4^8*z5^4- 2*z2*z3*z4^5*z5^5+ 2*z2*z4^6*z5^5+
    2*z3*z4^6*z5^5- 2*z4^7*z5^5- 2*z2*z3*z4^4*z5^6+ 2*z2*z4^5*z5^6+
    2*z3*z4^5*z5^6- 2*z4^6*z5^6- 2*z2*z3*z4^3*z5^7+ 2*z2*z4^4*z5^7+
    2*z3*z4^4*z5^7- 2*z4^5*z5^7- 2*z2*z3*z4^2*z5^8+ 2*z2*z4^3*z5^8+
    2*z3*z4^3*z5^8- 2*z4^4*z5^8- 2*z2*z3*z4*z5^9+ 2*z2*z4^2*z5^9+
    2*z3*z4^2*z5^9- 2*z4^3*z5^9+ 6*z2*z3*z5^10+ 2*z2*z4*z5^10+ 2*z3*z4*z5^10-
    2*z4^2*z5^10- 4*z2*z5^11- 4*z3*z5^11- 2*z4*z5^11+ 2*z5^12- 8*z2*z3*z4^9*z6+
    6*z2*z4^10*z6+ 6*z3*z4^10*z6- 4*z4^11*z6+ 2*z2*z3*z4^8*z5*z6-
    2*z2*z4^9*z5*z6- 2*z3*z4^9*z5*z6+ 2*z4^10*z5*z6+ 2*z2*z3*z4^7*z5^2*z6-
    2*z2*z4^8*z5^2*z6- 2*z3*z4^8*z5^2*z6+ 2*z4^9*z5^2*z6+ 2*z2*z3*z4^6*z5^3*z6-
    2*z2*z4^7*z5^3*z6- 2*z3*z4^7*z5^3*z6+ 2*z4^8*z5^3*z6+ 2*z2*z3*z4^5*z5^4*z6-
    2*z2*z4^6*z5^4*z6- 2*z3*z4^6*z5^4*z6+ 2*z4^7*z5^4*z6+ 2*z2*z3*z4^4*z5^5*z6-
    2*z2*z4^5*z5^5*z6- 2*z3*z4^5*z5^5*z6+ 2*z4^6*z5^5*z6+ 2*z2*z3*z4^3*z5^6*z6-
    2*z2*z4^4*z5^6*z6- 2*z3*z4^4*z5^6*z6+ 2*z4^5*z5^6*z6+ 2*z2*z3*z4^2*z5^7*z6-
    2*z2*z4^3*z5^7*z6- 2*z3*z4^3*z5^7*z6+ 2*z4^4*z5^7*z6+ 2*z2*z3*z4*z5^8*z6-
    2*z2*z4^2*z5^8*z6- 2*z3*z4^2*z5^8*z6+ 2*z4^3*z5^8*z6- 8*z2*z3*z5^9*z6-
    2*z2*z4*z5^9*z6- 2*z3*z4*z5^9*z6+ 2*z4^2*z5^9*z6+ 6*z2*z5^10*z6+
    6*z3*z5^10*z6+ 2*z4*z5^10*z6- 4*z5^11*z6+ 5*z2*z3*z4^8+ 4491*z2*z4^9+
    4491*z3*z4^9+ 8*z4^10- 4488*z2*z3*z4^7*z5+ 4496*z2*z4^8*z5+ 4496*z3*z4^8*z5+
    4499*z4^9*z5- 4488*z2*z3*z4^6*z5^2+ 4496*z2*z4^7*z5^2+ 4496*z3*z4^7*z5^2+
    4499*z4^8*z5^2- 4488*z2*z3*z4^5*z5^3+ 4496*z2*z4^6*z5^3+ 4496*z3*z4^6*z5^3+
    4499*z4^7*z5^3- 4488*z2*z3*z4^4*z5^4+ 4496*z2*z4^5*z5^4+ 4496*z3*z4^5*z5^4+
    4499*z4^6*z5^4- 4488*z2*z3*z4^3*z5^5+ 4496*z2*z4^4*z5^5+ 4496*z3*z4^4*z5^5+
    4499*z4^5*z5^5- 4488*z2*z3*z4^2*z5^6+ 4496*z2*z4^3*z5^6+ 4496*z3*z4^3*z5^6+
    4499*z4^4*z5^6- 4488*z2*z3*z4*z5^7+ 4496*z2*z4^2*z5^7+ 4496*z3*z4^2*z5^7+
    4499*z4^3*z5^7+ 5*z2*z3*z5^8+ 4496*z2*z4*z5^8+ 4496*z3*z4*z5^8+
    4499*z4^2*z5^8+ 4491*z2*z5^9+ 4491*z3*z5^9+ 4499*z4*z5^9+ 8*z5^10-
    4493*z2*z3*z4^7*z6+ 5*z2*z4^8*z6+ 5*z3*z4^8*z6+ 4491*z4^9*z6+
    4478*z2*z3*z4^6*z5*z6- 4488*z2*z4^7*z5*z6- 4488*z3*z4^7*z5*z6+
    4496*z4^8*z5*z6+ 4478*z2*z3*z4^5*z5^2*z6- 4488*z2*z4^6*z5^2*z6-
    4488*z3*z4^6*z5^2*z6+ 4496*z4^7*z5^2*z6+ 4478*z2*z3*z4^4*z5^3*z6-
    4488*z2*z4^5*z5^3*z6- 4488*z3*z4^5*z5^3*z6+ 4496*z4^6*z5^3*z6+
    4478*z2*z3*z4^3*z5^4*z6- 4488*z2*z4^4*z5^4*z6- 4488*z3*z4^4*z5^4*z6+
    4496*z4^5*z5^4*z6+ 4478*z2*z3*z4^2*z5^5*z6- 4488*z2*z4^3*z5^5*z6-
    4488*z3*z4^3*z5^5*z6+ 4496*z4^4*z5^5*z6+ 4478*z2*z3*z4*z5^6*z6-
    4488*z2*z4^2*z5^6*z6- 4488*z3*z4^2*z5^6*z6+ 4496*z4^3*z5^6*z6-
    4493*z2*z3*z5^7*z6- 4488*z2*z4*z5^7*z6- 4488*z3*z4*z5^7*z6+
    4496*z4^2*z5^7*z6+ 5*z2*z5^8*z6+ 5*z3*z5^8*z6+ 4496*z4*z5^8*z6+
    4491*z5^9*z6- 2257*z2*z3*z4^6+ 4496*z2*z4^7+ 4496*z3*z4^7+ 2261*z4^8+
    2254*z2*z3*z4^5*z5+ 2239*z2*z4^6*z5+ 2239*z3*z4^6*z5- 2244*z4^7*z5+
    2254*z2*z3*z4^4*z5^2+ 2239*z2*z4^5*z5^2+ 2239*z3*z4^5*z5^2- 2244*z4^6*z5^2+
    2254*z2*z3*z4^3*z5^3+ 2239*z2*z4^4*z5^3+ 2239*z3*z4^4*z5^3- 2244*z4^5*z5^3+
    2254*z2*z3*z4^2*z5^4+ 2239*z2*z4^3*z5^4+ 2239*z3*z4^3*z5^4- 2244*z4^4*z5^4+
    2254*z2*z3*z4*z5^5+ 2239*z2*z4^2*z5^5+ 2239*z3*z4^2*z5^5- 2244*z4^3*z5^5-
    2257*z2*z3*z5^6+ 2239*z2*z4*z5^6+ 2239*z3*z4*z5^6- 2244*z4^2*z5^6+
    4496*z2*z5^7+ 4496*z3*z5^7- 2244*z4*z5^7+ 2261*z5^8- 4490*z2*z3*z4^5*z6-
    2257*z2*z4^6*z6- 2257*z3*z4^6*z6+ 4496*z4^7*z6- 2224*z2*z3*z4^4*z5*z6+
    2254*z2*z4^5*z5*z6+ 2254*z3*z4^5*z5*z6+ 2239*z4^6*z5*z6-
    2224*z2*z3*z4^3*z5^2*z6+ 2254*z2*z4^4*z5^2*z6+ 2254*z3*z4^4*z5^2*z6+
    2239*z4^5*z5^2*z6- 2224*z2*z3*z4^2*z5^3*z6+ 2254*z2*z4^3*z5^3*z6+
    2254*z3*z4^3*z5^3*z6+ 2239*z4^4*z5^3*z6- 2224*z2*z3*z4*z5^4*z6+
    2254*z2*z4^2*z5^4*z6+ 2254*z3*z4^2*z5^4*z6+ 2239*z4^3*z5^4*z6-
    4490*z2*z3*z5^5*z6+ 2254*z2*z4*z5^5*z6+ 2254*z3*z4*z5^5*z6+
    2239*z4^2*z5^5*z6- 2257*z2*z5^6*z6- 2257*z3*z5^6*z6+ 2239*z4*z5^6*z6+
    4496*z5^7*z6+ 4496*z2*z3*z4^4+ 2816*z2*z4^5+ 2816*z3*z4^5+ 1130*z4^6-
    2822*z2*z3*z4^3*z5- 1689*z2*z4^4*z5- 1689*z3*z4^4*z5+ 3946*z4^5*z5-
    2822*z2*z3*z4^2*z5^2- 1689*z2*z4^3*z5^2- 1689*z3*z4^3*z5^2+ 3946*z4^4*z5^2-
    2822*z2*z3*z4*z5^3- 1689*z2*z4^2*z5^3- 1689*z3*z4^2*z5^3+ 3946*z4^3*z5^3+
    4496*z2*z3*z5^4- 1689*z2*z4*z5^4- 1689*z3*z4*z5^4+ 3946*z4^2*z5^4+
    2816*z2*z5^5+ 2816*z3*z5^5+ 3946*z4*z5^5+ 1130*z5^6+ 1683*z2*z3*z4^3*z6+
    4496*z2*z4^4*z6+ 4496*z3*z4^4*z6+ 2816*z4^5*z6+ 556*z2*z3*z4^2*z5*z6-
    2822*z2*z4^3*z5*z6- 2822*z3*z4^3*z5*z6- 1689*z4^4*z5*z6+
    556*z2*z3*z4*z5^2*z6- 2822*z2*z4^2*z5^2*z6- 2822*z3*z4^2*z5^2*z6-
    1689*z4^3*z5^2*z6+ 1683*z2*z3*z5^3*z6- 2822*z2*z4*z5^3*z6-
    2822*z3*z4*z5^3*z6- 1689*z4^2*z5^3*z6+ 4496*z2*z5^4*z6+ 4496*z3*z5^4*z6-
    1689*z4*z5^4*z6+ 2816*z5^5*z6- 2460*z2*z3*z4^2+ 1549*z2*z4^3+ 1549*z3*z4^3+
    3867*z4^4- 772*z2*z3*z4*z5- 911*z2*z4^2*z5- 911*z3*z4^2*z5- 3585*z4^3*z5-
    2460*z2*z3*z5^2- 911*z2*z4*z5^2- 911*z3*z4*z5^2- 3585*z4^2*z5^2+
    1549*z2*z5^3+ 1549*z3*z5^3- 3585*z4*z5^3+ 3867*z5^4+ 1688*z2*z3*z4*z6-
    2460*z2*z4^2*z6- 2460*z3*z4^2*z6+ 1549*z4^3*z6+ 1688*z2*z3*z5*z6-
    772*z2*z4*z5*z6- 772*z3*z4*z5*z6- 911*z4^2*z5*z6- 2460*z2*z5^2*z6-
    2460*z3*z5^2*z6- 911*z4*z5^2*z6+ 1549*z5^3*z6+ 2971*z2*z3- 4448*z2*z4-
    4448*z3*z4+ 3445*z4^2- 4448*z2*z5- 4448*z3*z5- 1003*z4*z5+ 3445*z5^2+
    2971*z2*z6+ 2971*z3*z6- 4448*z4*z6- 4448*z5*z6- 2092",
    "6*z2*z3*z4^10- 4*z2*z4^11- 4*z3*z4^11+ 2*z4^12- 8*z2*z3*z4^9*z5+
    6*z2*z4^10*z5+ 6*z3*z4^10*z5- 4*z4^11*z5- 2*z2*z3*z4^9*z6+ 2*z2*z4^10*z6+
    2*z3*z4^10*z6- 2*z4^11*z6+ 2*z2*z3*z4^8*z5*z6- 2*z2*z4^9*z5*z6-
    2*z3*z4^9*z5*z6+ 2*z4^10*z5*z6- 2*z2*z3*z4^8*z6^2+ 2*z2*z4^9*z6^2+
    2*z3*z4^9*z6^2- 2*z4^10*z6^2+ 2*z2*z3*z4^7*z5*z6^2- 2*z2*z4^8*z5*z6^2-
    2*z3*z4^8*z5*z6^2+ 2*z4^9*z5*z6^2- 2*z2*z3*z4^7*z6^3+ 2*z2*z4^8*z6^3+
    2*z3*z4^8*z6^3- 2*z4^9*z6^3+ 2*z2*z3*z4^6*z5*z6^3- 2*z2*z4^7*z5*z6^3-
    2*z3*z4^7*z5*z6^3+ 2*z4^8*z5*z6^3- 2*z2*z3*z4^6*z6^4+ 2*z2*z4^7*z6^4+
    2*z3*z4^7*z6^4- 2*z4^8*z6^4+ 2*z2*z3*z4^5*z5*z6^4- 2*z2*z4^6*z5*z6^4-
    2*z3*z4^6*z5*z6^4+ 2*z4^7*z5*z6^4- 2*z2*z3*z4^5*z6^5+ 2*z2*z4^6*z6^5+
    2*z3*z4^6*z6^5- 2*z4^7*z6^5+ 2*z2*z3*z4^4*z5*z6^5- 2*z2*z4^5*z5*z6^5-
    2*z3*z4^5*z5*z6^5+ 2*z4^6*z5*z6^5- 2*z2*z3*z4^4*z6^6+ 2*z2*z4^5*z6^6+
    2*z3*z4^5*z6^6- 2*z4^6*z6^6+ 2*z2*z3*z4^3*z5*z6^6- 2*z2*z4^4*z5*z6^6-
    2*z3*z4^4*z5*z6^6+ 2*z4^5*z5*z6^6- 2*z2*z3*z4^3*z6^7+ 2*z2*z4^4*z6^7+
    2*z3*z4^4*z6^7- 2*z4^5*z6^7+ 2*z2*z3*z4^2*z5*z6^7- 2*z2*z4^3*z5*z6^7-
    2*z3*z4^3*z5*z6^7+ 2*z4^4*z5*z6^7- 2*z2*z3*z4^2*z6^8+ 2*z2*z4^3*z6^8+
    2*z3*z4^3*z6^8- 2*z4^4*z6^8+ 2*z2*z3*z4*z5*z6^8- 2*z2*z4^2*z5*z6^8-
    2*z3*z4^2*z5*z6^8+ 2*z4^3*z5*z6^8- 2*z2*z3*z4*z6^9+ 2*z2*z4^2*z6^9+
    2*z3*z4^2*z6^9- 2*z4^3*z6^9- 8*z2*z3*z5*z6^9- 2*z2*z4*z5*z6^9-
    2*z3*z4*z5*z6^9+ 2*z4^2*z5*z6^9+ 6*z2*z3*z6^10+ 2*z2*z4*z6^10+
    2*z3*z4*z6^10- 2*z4^2*z6^10+ 6*z2*z5*z6^10+ 6*z3*z5*z6^10+ 2*z4*z5*z6^10-
    4*z2*z6^11- 4*z3*z6^11- 2*z4*z6^11- 4*z5*z6^11+ 2*z6^12+ 5*z2*z3*z4^8+
    4491*z2*z4^9+ 4491*z3*z4^9+ 8*z4^10- 4493*z2*z3*z4^7*z5+ 5*z2*z4^8*z5+
    5*z3*z4^8*z5+ 4491*z4^9*z5- 4488*z2*z3*z4^7*z6+ 4496*z2*z4^8*z6+
    4496*z3*z4^8*z6+ 4499*z4^9*z6+ 4478*z2*z3*z4^6*z5*z6- 4488*z2*z4^7*z5*z6-
    4488*z3*z4^7*z5*z6+ 4496*z4^8*z5*z6- 4488*z2*z3*z4^6*z6^2+
    4496*z2*z4^7*z6^2+ 4496*z3*z4^7*z6^2+ 4499*z4^8*z6^2+
    4478*z2*z3*z4^5*z5*z6^2- 4488*z2*z4^6*z5*z6^2- 4488*z3*z4^6*z5*z6^2+
    4496*z4^7*z5*z6^2- 4488*z2*z3*z4^5*z6^3+ 4496*z2*z4^6*z6^3+
    4496*z3*z4^6*z6^3+ 4499*z4^7*z6^3+ 4478*z2*z3*z4^4*z5*z6^3-
    4488*z2*z4^5*z5*z6^3- 4488*z3*z4^5*z5*z6^3+ 4496*z4^6*z5*z6^3-
    4488*z2*z3*z4^4*z6^4+ 4496*z2*z4^5*z6^4+ 4496*z3*z4^5*z6^4+ 4499*z4^6*z6^4+
    4478*z2*z3*z4^3*z5*z6^4- 4488*z2*z4^4*z5*z6^4- 4488*z3*z4^4*z5*z6^4+
    4496*z4^5*z5*z6^4- 4488*z2*z3*z4^3*z6^5+ 4496*z2*z4^4*z6^5+
    4496*z3*z4^4*z6^5+ 4499*z4^5*z6^5+ 4478*z2*z3*z4^2*z5*z6^5-
    4488*z2*z4^3*z5*z6^5- 4488*z3*z4^3*z5*z6^5+ 4496*z4^4*z5*z6^5-
    4488*z2*z3*z4^2*z6^6+ 4496*z2*z4^3*z6^6+ 4496*z3*z4^3*z6^6+ 4499*z4^4*z6^6+
    4478*z2*z3*z4*z5*z6^6- 4488*z2*z4^2*z5*z6^6- 4488*z3*z4^2*z5*z6^6+
    4496*z4^3*z5*z6^6- 4488*z2*z3*z4*z6^7+ 4496*z2*z4^2*z6^7+ 4496*z3*z4^2*z6^7+
    4499*z4^3*z6^7- 4493*z2*z3*z5*z6^7- 4488*z2*z4*z5*z6^7- 4488*z3*z4*z5*z6^7+
    4496*z4^2*z5*z6^7+ 5*z2*z3*z6^8+ 4496*z2*z4*z6^8+ 4496*z3*z4*z6^8+
    4499*z4^2*z6^8+ 5*z2*z5*z6^8+ 5*z3*z5*z6^8+ 4496*z4*z5*z6^8+ 4491*z2*z6^9+
    4491*z3*z6^9+ 4499*z4*z6^9+ 4491*z5*z6^9+ 8*z6^10- 2257*z2*z3*z4^6+
    4496*z2*z4^7+ 4496*z3*z4^7+ 2261*z4^8- 4490*z2*z3*z4^5*z5- 2257*z2*z4^6*z5-
    2257*z3*z4^6*z5+ 4496*z4^7*z5+ 2254*z2*z3*z4^5*z6+ 2239*z2*z4^6*z6+
    2239*z3*z4^6*z6- 2244*z4^7*z6- 2224*z2*z3*z4^4*z5*z6+ 2254*z2*z4^5*z5*z6+
    2254*z3*z4^5*z5*z6+ 2239*z4^6*z5*z6+ 2254*z2*z3*z4^4*z6^2+
    2239*z2*z4^5*z6^2+ 2239*z3*z4^5*z6^2- 2244*z4^6*z6^2-
    2224*z2*z3*z4^3*z5*z6^2+ 2254*z2*z4^4*z5*z6^2+ 2254*z3*z4^4*z5*z6^2+
    2239*z4^5*z5*z6^2+ 2254*z2*z3*z4^3*z6^3+ 2239*z2*z4^4*z6^3+
    2239*z3*z4^4*z6^3- 2244*z4^5*z6^3- 2224*z2*z3*z4^2*z5*z6^3+
    2254*z2*z4^3*z5*z6^3+ 2254*z3*z4^3*z5*z6^3+ 2239*z4^4*z5*z6^3+
    2254*z2*z3*z4^2*z6^4+ 2239*z2*z4^3*z6^4+ 2239*z3*z4^3*z6^4- 2244*z4^4*z6^4-
    2224*z2*z3*z4*z5*z6^4+ 2254*z2*z4^2*z5*z6^4+ 2254*z3*z4^2*z5*z6^4+
    2239*z4^3*z5*z6^4+ 2254*z2*z3*z4*z6^5+ 2239*z2*z4^2*z6^5+ 2239*z3*z4^2*z6^5-
    2244*z4^3*z6^5- 4490*z2*z3*z5*z6^5+ 2254*z2*z4*z5*z6^5+ 2254*z3*z4*z5*z6^5+
    2239*z4^2*z5*z6^5- 2257*z2*z3*z6^6+ 2239*z2*z4*z6^6+ 2239*z3*z4*z6^6-
    2244*z4^2*z6^6- 2257*z2*z5*z6^6- 2257*z3*z5*z6^6+ 2239*z4*z5*z6^6+
    4496*z2*z6^7+ 4496*z3*z6^7- 2244*z4*z6^7+ 4496*z5*z6^7+ 2261*z6^8+
    4496*z2*z3*z4^4+ 2816*z2*z4^5+ 2816*z3*z4^5+ 1130*z4^6+ 1683*z2*z3*z4^3*z5+
    4496*z2*z4^4*z5+ 4496*z3*z4^4*z5+ 2816*z4^5*z5- 2822*z2*z3*z4^3*z6-
    1689*z2*z4^4*z6- 1689*z3*z4^4*z6+ 3946*z4^5*z6+ 556*z2*z3*z4^2*z5*z6-
    2822*z2*z4^3*z5*z6- 2822*z3*z4^3*z5*z6- 1689*z4^4*z5*z6-
    2822*z2*z3*z4^2*z6^2- 1689*z2*z4^3*z6^2- 1689*z3*z4^3*z6^2+ 3946*z4^4*z6^2+
    556*z2*z3*z4*z5*z6^2- 2822*z2*z4^2*z5*z6^2- 2822*z3*z4^2*z5*z6^2-
    1689*z4^3*z5*z6^2- 2822*z2*z3*z4*z6^3- 1689*z2*z4^2*z6^3- 1689*z3*z4^2*z6^3+
    3946*z4^3*z6^3+ 1683*z2*z3*z5*z6^3- 2822*z2*z4*z5*z6^3- 2822*z3*z4*z5*z6^3-
    1689*z4^2*z5*z6^3+ 4496*z2*z3*z6^4- 1689*z2*z4*z6^4- 1689*z3*z4*z6^4+
    3946*z4^2*z6^4+ 4496*z2*z5*z6^4+ 4496*z3*z5*z6^4- 1689*z4*z5*z6^4+
    2816*z2*z6^5+ 2816*z3*z6^5+ 3946*z4*z6^5+ 2816*z5*z6^5+ 1130*z6^6-
    2460*z2*z3*z4^2+ 1549*z2*z4^3+ 1549*z3*z4^3+ 3867*z4^4+ 1688*z2*z3*z4*z5-
    2460*z2*z4^2*z5- 2460*z3*z4^2*z5+ 1549*z4^3*z5- 772*z2*z3*z4*z6-
    911*z2*z4^2*z6- 911*z3*z4^2*z6- 3585*z4^3*z6+ 1688*z2*z3*z5*z6-
    772*z2*z4*z5*z6- 772*z3*z4*z5*z6- 911*z4^2*z5*z6- 2460*z2*z3*z6^2-
    911*z2*z4*z6^2- 911*z3*z4*z6^2- 3585*z4^2*z6^2- 2460*z2*z5*z6^2-
    2460*z3*z5*z6^2- 911*z4*z5*z6^2+ 1549*z2*z6^3+ 1549*z3*z6^3- 3585*z4*z6^3+
    1549*z5*z6^3+ 3867*z6^4+ 2971*z2*z3- 4448*z2*z4- 4448*z3*z4+ 3445*z4^2+
    2971*z2*z5+ 2971*z3*z5- 4448*z4*z5- 4448*z2*z6- 4448*z3*z6- 1003*z4*z6-
    4448*z5*z6+ 3445*z6^2- 2092",
    "- 8*z2*z3*z4*z5^9+ 6*z2*z3*z5^10+ 6*z2*z4*z5^10+ 6*z3*z4*z5^10- 4*z2*z5^11-
    4*z3*z5^11- 4*z4*z5^11+ 2*z5^12+ 2*z2*z3*z4*z5^8*z6- 2*z2*z3*z5^9*z6-
    2*z2*z4*z5^9*z6- 2*z3*z4*z5^9*z6+ 2*z2*z5^10*z6+ 2*z3*z5^10*z6+
    2*z4*z5^10*z6- 2*z5^11*z6+ 2*z2*z3*z4*z5^7*z6^2- 2*z2*z3*z5^8*z6^2-
    2*z2*z4*z5^8*z6^2- 2*z3*z4*z5^8*z6^2+ 2*z2*z5^9*z6^2+ 2*z3*z5^9*z6^2+
    2*z4*z5^9*z6^2- 2*z5^10*z6^2+ 2*z2*z3*z4*z5^6*z6^3- 2*z2*z3*z5^7*z6^3-
    2*z2*z4*z5^7*z6^3- 2*z3*z4*z5^7*z6^3+ 2*z2*z5^8*z6^3+ 2*z3*z5^8*z6^3+
    2*z4*z5^8*z6^3- 2*z5^9*z6^3+ 2*z2*z3*z4*z5^5*z6^4- 2*z2*z3*z5^6*z6^4-
    2*z2*z4*z5^6*z6^4- 2*z3*z4*z5^6*z6^4+ 2*z2*z5^7*z6^4+ 2*z3*z5^7*z6^4+
    2*z4*z5^7*z6^4- 2*z5^8*z6^4+ 2*z2*z3*z4*z5^4*z6^5- 2*z2*z3*z5^5*z6^5-
    2*z2*z4*z5^5*z6^5- 2*z3*z4*z5^5*z6^5+ 2*z2*z5^6*z6^5+ 2*z3*z5^6*z6^5+
    2*z4*z5^6*z6^5- 2*z5^7*z6^5+ 2*z2*z3*z4*z5^3*z6^6- 2*z2*z3*z5^4*z6^6-
    2*z2*z4*z5^4*z6^6- 2*z3*z4*z5^4*z6^6+ 2*z2*z5^5*z6^6+ 2*z3*z5^5*z6^6+
    2*z4*z5^5*z6^6- 2*z5^6*z6^6+ 2*z2*z3*z4*z5^2*z6^7- 2*z2*z3*z5^3*z6^7-
    2*z2*z4*z5^3*z6^7- 2*z3*z4*z5^3*z6^7+ 2*z2*z5^4*z6^7+ 2*z3*z5^4*z6^7+
    2*z4*z5^4*z6^7- 2*z5^5*z6^7+ 2*z2*z3*z4*z5*z6^8- 2*z2*z3*z5^2*z6^8-
    2*z2*z4*z5^2*z6^8- 2*z3*z4*z5^2*z6^8+ 2*z2*z5^3*z6^8+ 2*z3*z5^3*z6^8+
    2*z4*z5^3*z6^8- 2*z5^4*z6^8- 8*z2*z3*z4*z6^9- 2*z2*z3*z5*z6^9-
    2*z2*z4*z5*z6^9- 2*z3*z4*z5*z6^9+ 2*z2*z5^2*z6^9+ 2*z3*z5^2*z6^9+
    2*z4*z5^2*z6^9- 2*z5^3*z6^9+ 6*z2*z3*z6^10+ 6*z2*z4*z6^10+ 6*z3*z4*z6^10+
    2*z2*z5*z6^10+ 2*z3*z5*z6^10+ 2*z4*z5*z6^10- 2*z5^2*z6^10- 4*z2*z6^11-
    4*z3*z6^11- 4*z4*z6^11- 2*z5*z6^11+ 2*z6^12- 4493*z2*z3*z4*z5^7+
    5*z2*z3*z5^8+ 5*z2*z4*z5^8+ 5*z3*z4*z5^8+ 4491*z2*z5^9+ 4491*z3*z5^9+
    4491*z4*z5^9+ 8*z5^10+ 4478*z2*z3*z4*z5^6*z6- 4488*z2*z3*z5^7*z6-
    4488*z2*z4*z5^7*z6- 4488*z3*z4*z5^7*z6+ 4496*z2*z5^8*z6+ 4496*z3*z5^8*z6+
    4496*z4*z5^8*z6+ 4499*z5^9*z6+ 4478*z2*z3*z4*z5^5*z6^2-
    4488*z2*z3*z5^6*z6^2- 4488*z2*z4*z5^6*z6^2- 4488*z3*z4*z5^6*z6^2+
    4496*z2*z5^7*z6^2+ 4496*z3*z5^7*z6^2+ 4496*z4*z5^7*z6^2+ 4499*z5^8*z6^2+
    4478*z2*z3*z4*z5^4*z6^3- 4488*z2*z3*z5^5*z6^3- 4488*z2*z4*z5^5*z6^3-
    4488*z3*z4*z5^5*z6^3+ 4496*z2*z5^6*z6^3+ 4496*z3*z5^6*z6^3+
    4496*z4*z5^6*z6^3+ 4499*z5^7*z6^3+ 4478*z2*z3*z4*z5^3*z6^4-
    4488*z2*z3*z5^4*z6^4- 4488*z2*z4*z5^4*z6^4- 4488*z3*z4*z5^4*z6^4+
    4496*z2*z5^5*z6^4+ 4496*z3*z5^5*z6^4+ 4496*z4*z5^5*z6^4+ 4499*z5^6*z6^4+
    4478*z2*z3*z4*z5^2*z6^5- 4488*z2*z3*z5^3*z6^5- 4488*z2*z4*z5^3*z6^5-
    4488*z3*z4*z5^3*z6^5+ 4496*z2*z5^4*z6^5+ 4496*z3*z5^4*z6^5+
    4496*z4*z5^4*z6^5+ 4499*z5^5*z6^5+ 4478*z2*z3*z4*z5*z6^6-
    4488*z2*z3*z5^2*z6^6- 4488*z2*z4*z5^2*z6^6- 4488*z3*z4*z5^2*z6^6+
    4496*z2*z5^3*z6^6+ 4496*z3*z5^3*z6^6+ 4496*z4*z5^3*z6^6+ 4499*z5^4*z6^6-
    4493*z2*z3*z4*z6^7- 4488*z2*z3*z5*z6^7- 4488*z2*z4*z5*z6^7-
    4488*z3*z4*z5*z6^7+ 4496*z2*z5^2*z6^7+ 4496*z3*z5^2*z6^7+ 4496*z4*z5^2*z6^7+
    4499*z5^3*z6^7+ 5*z2*z3*z6^8+ 5*z2*z4*z6^8+ 5*z3*z4*z6^8+ 4496*z2*z5*z6^8+
    4496*z3*z5*z6^8+ 4496*z4*z5*z6^8+ 4499*z5^2*z6^8+ 4491*z2*z6^9+
    4491*z3*z6^9+ 4491*z4*z6^9+ 4499*z5*z6^9+ 8*z6^10- 4490*z2*z3*z4*z5^5-
    2257*z2*z3*z5^6- 2257*z2*z4*z5^6- 2257*z3*z4*z5^6+ 4496*z2*z5^7+
    4496*z3*z5^7+ 4496*z4*z5^7+ 2261*z5^8- 2224*z2*z3*z4*z5^4*z6+
    2254*z2*z3*z5^5*z6+ 2254*z2*z4*z5^5*z6+ 2254*z3*z4*z5^5*z6+ 2239*z2*z5^6*z6+
    2239*z3*z5^6*z6+ 2239*z4*z5^6*z6- 2244*z5^7*z6- 2224*z2*z3*z4*z5^3*z6^2+
    2254*z2*z3*z5^4*z6^2+ 2254*z2*z4*z5^4*z6^2+ 2254*z3*z4*z5^4*z6^2+
    2239*z2*z5^5*z6^2+ 2239*z3*z5^5*z6^2+ 2239*z4*z5^5*z6^2- 2244*z5^6*z6^2-
    2224*z2*z3*z4*z5^2*z6^3+ 2254*z2*z3*z5^3*z6^3+ 2254*z2*z4*z5^3*z6^3+
    2254*z3*z4*z5^3*z6^3+ 2239*z2*z5^4*z6^3+ 2239*z3*z5^4*z6^3+
    2239*z4*z5^4*z6^3- 2244*z5^5*z6^3- 2224*z2*z3*z4*z5*z6^4+
    2254*z2*z3*z5^2*z6^4+ 2254*z2*z4*z5^2*z6^4+ 2254*z3*z4*z5^2*z6^4+
    2239*z2*z5^3*z6^4+ 2239*z3*z5^3*z6^4+ 2239*z4*z5^3*z6^4- 2244*z5^4*z6^4-
    4490*z2*z3*z4*z6^5+ 2254*z2*z3*z5*z6^5+ 2254*z2*z4*z5*z6^5+
    2254*z3*z4*z5*z6^5+ 2239*z2*z5^2*z6^5+ 2239*z3*z5^2*z6^5+ 2239*z4*z5^2*z6^5-
    2244*z5^3*z6^5- 2257*z2*z3*z6^6- 2257*z2*z4*z6^6- 2257*z3*z4*z6^6+
    2239*z2*z5*z6^6+ 2239*z3*z5*z6^6+ 2239*z4*z5*z6^6- 2244*z5^2*z6^6+
    4496*z2*z6^7+ 4496*z3*z6^7+ 4496*z4*z6^7- 2244*z5*z6^7+ 2261*z6^8+
    1683*z2*z3*z4*z5^3+ 4496*z2*z3*z5^4+ 4496*z2*z4*z5^4+ 4496*z3*z4*z5^4+
    2816*z2*z5^5+ 2816*z3*z5^5+ 2816*z4*z5^5+ 1130*z5^6+ 556*z2*z3*z4*z5^2*z6-
    2822*z2*z3*z5^3*z6- 2822*z2*z4*z5^3*z6- 2822*z3*z4*z5^3*z6- 1689*z2*z5^4*z6-
    1689*z3*z5^4*z6- 1689*z4*z5^4*z6+ 3946*z5^5*z6+ 556*z2*z3*z4*z5*z6^2-
    2822*z2*z3*z5^2*z6^2- 2822*z2*z4*z5^2*z6^2- 2822*z3*z4*z5^2*z6^2-
    1689*z2*z5^3*z6^2- 1689*z3*z5^3*z6^2- 1689*z4*z5^3*z6^2+ 3946*z5^4*z6^2+
    1683*z2*z3*z4*z6^3- 2822*z2*z3*z5*z6^3- 2822*z2*z4*z5*z6^3-
    2822*z3*z4*z5*z6^3- 1689*z2*z5^2*z6^3- 1689*z3*z5^2*z6^3- 1689*z4*z5^2*z6^3+
    3946*z5^3*z6^3+ 4496*z2*z3*z6^4+ 4496*z2*z4*z6^4+ 4496*z3*z4*z6^4-
    1689*z2*z5*z6^4- 1689*z3*z5*z6^4- 1689*z4*z5*z6^4+ 3946*z5^2*z6^4+
    2816*z2*z6^5+ 2816*z3*z6^5+ 2816*z4*z6^5+ 3946*z5*z6^5+ 1130*z6^6+
    1688*z2*z3*z4*z5- 2460*z2*z3*z5^2- 2460*z2*z4*z5^2- 2460*z3*z4*z5^2+
    1549*z2*z5^3+ 1549*z3*z5^3+ 1549*z4*z5^3+ 3867*z5^4+ 1688*z2*z3*z4*z6-
    772*z2*z3*z5*z6- 772*z2*z4*z5*z6- 772*z3*z4*z5*z6- 911*z2*z5^2*z6-
    911*z3*z5^2*z6- 911*z4*z5^2*z6- 3585*z5^3*z6- 2460*z2*z3*z6^2-
    2460*z2*z4*z6^2- 2460*z3*z4*z6^2- 911*z2*z5*z6^2- 911*z3*z5*z6^2-
    911*z4*z5*z6^2- 3585*z5^2*z6^2+ 1549*z2*z6^3+ 1549*z3*z6^3+ 1549*z4*z6^3-
    3585*z5*z6^3+ 3867*z6^4+ 2971*z2*z3+ 2971*z2*z4+ 2971*z3*z4- 4448*z2*z5-
    4448*z3*z5- 4448*z4*z5+ 3445*z5^2- 4448*z2*z6- 4448*z3*z6- 4448*z4*z6-
    1003*z5*z6+ 3445*z6^2- 2092",
    "z1*z2^2*z3^2*z4^2*z5^2*z6^2- 2250*z1*z2^2*z3^2*z4^2*z5^2-
    2250*z1*z2^2*z3^2*z4^2*z6^2- 2250*z1*z2^2*z3^2*z5^2*z6^2-
    2250*z1*z2^2*z4^2*z5^2*z6^2- 2250*z1*z3^2*z4^2*z5^2*z6^2+
    3938*z1*z2^2*z3^2*z4^2+ 3938*z1*z2^2*z3^2*z5^2+ 3938*z1*z2^2*z4^2*z5^2+
    3938*z1*z3^2*z4^2*z5^2+ 3938*z1*z2^2*z3^2*z6^2+ 3938*z1*z2^2*z4^2*z6^2+
    3938*z1*z3^2*z4^2*z6^2+ 3938*z1*z2^2*z5^2*z6^2+ 3938*z1*z3^2*z5^2*z6^2+
    3938*z1*z4^2*z5^2*z6^2- 3516*z1*z2^2*z3^2- 3516*z1*z2^2*z4^2-
    3516*z1*z3^2*z4^2- 3516*z1*z2^2*z5^2- 3516*z1*z3^2*z5^2- 3516*z1*z4^2*z5^2-
    3516*z1*z2^2*z6^2- 3516*z1*z3^2*z6^2- 3516*z1*z4^2*z6^2- 3516*z1*z5^2*z6^2-
    879*z1*z2^2- 879*z1*z3^2- 879*z1*z4^2- 879*z1*z5^2- 879*z1*z6^2- 2470*z1- 1",
    "- z2- z3- z4- z5- z6+ z7",
    "- z2*z3- z2*z4- z3*z4-z2*z5- z3*z5- z4*z5- z2*z6- z3*z6- z4*z6- z5*z6+ z8",
    "- z2*z3*z4- z2*z3*z5-z2*z4*z5- z3*z4*z5-
    z2*z3*z6- z2*z4*z6- z3*z4*z6- z2*z5*z6- z3*z5*z6-z4*z5*z6+ z9",
    "- z2*z3*z4*z5- z2*z3*z4*z6- z2*z3*z5*z6- z2*z4*z5*z6-
    z3*z4*z5*z6+ z10",
    "- z2*z3*z4*z5*z6+ z11"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function zhang_l10_m5_v2(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 12
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "z$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "2*z3^13- 4*z3^12*z4- 4*z3^12*z5+ 6*z3^11*z4*z5- 4*z3^12*z6+ 6*z3^11*z4*z6+
    6*z3^11*z5*z6- 8*z3^10*z4*z5*z6- 4*z3^12*z7+ 6*z3^11*z4*z7+ 6*z3^11*z5*z7-
    8*z3^10*z4*z5*z7+ 6*z3^11*z6*z7- 8*z3^10*z4*z6*z7- 8*z3^10*z5*z6*z7+
    10*z3^9*z4*z5*z6*z7+ 8*z3^11+ 4491*z3^10*z4+ 4491*z3^10*z5+ 5*z3^9*z4*z5+
    4491*z3^10*z6+ 5*z3^9*z4*z6+ 5*z3^9*z5*z6- 4493*z3^8*z4*z5*z6+
    4491*z3^10*z7+ 5*z3^9*z4*z7+ 5*z3^9*z5*z7- 4493*z3^8*z4*z5*z7+ 5*z3^9*z6*z7-
    4493*z3^8*z4*z6*z7- 4493*z3^8*z5*z6*z7- 30*z3^7*z4*z5*z6*z7+ 2261*z3^9+
    4496*z3^8*z4+ 4496*z3^8*z5- 2257*z3^7*z4*z5+ 4496*z3^8*z6- 2257*z3^7*z4*z6-
    2257*z3^7*z5*z6- 4490*z3^6*z4*z5*z6+ 4496*z3^8*z7- 2257*z3^7*z4*z7-
    2257*z3^7*z5*z7- 4490*z3^6*z4*z5*z7- 2257*z3^7*z6*z7- 4490*z3^6*z4*z6*z7-
    4490*z3^6*z5*z6*z7+ 2266*z3^5*z4*z5*z6*z7+ 1130*z3^7+ 2816*z3^6*z4+
    2816*z3^6*z5+ 4496*z3^5*z4*z5+ 2816*z3^6*z6+ 4496*z3^5*z4*z6+
    4496*z3^5*z5*z6+ 1683*z3^4*z4*z5*z6+ 2816*z3^6*z7+ 4496*z3^5*z4*z7+
    4496*z3^5*z5*z7+ 1683*z3^4*z4*z5*z7+ 4496*z3^5*z6*z7+ 1683*z3^4*z4*z6*z7+
    1683*z3^4*z5*z6*z7- 1127*z3^3*z4*z5*z6*z7+ 3867*z3^5+ 1549*z3^4*z4+
    1549*z3^4*z5- 2460*z3^3*z4*z5+ 1549*z3^4*z6- 2460*z3^3*z4*z6-
    2460*z3^3*z5*z6+ 1688*z3^2*z4*z5*z6+ 1549*z3^4*z7- 2460*z3^3*z4*z7-
    2460*z3^3*z5*z7+ 1688*z3^2*z4*z5*z7- 2460*z3^3*z6*z7+ 1688*z3^2*z4*z6*z7+
    1688*z3^2*z5*z6*z7+ 211*z3*z4*z5*z6*z7+ 3445*z3^3- 4448*z3^2*z4-
    4448*z3^2*z5- 1090*z3*z4*z5- 4448*z3^2*z6- 1090*z3*z4*z6- 1090*z3*z5*z6-
    4061*z4*z5*z6- 4448*z3^2*z7- 1090*z3*z4*z7- 1090*z3*z5*z7- 4061*z4*z5*z7-
    1090*z3*z6*z7- 4061*z4*z6*z7- 4061*z5*z6*z7+ 1969*z3+ 4061*z4+ 4061*z5+
    4061*z6+ 4061*z7",
    "- 4*z3*z4^12+ 2*z4^13+ 6*z3*z4^11*z5- 4*z4^12*z5+ 6*z3*z4^11*z6-
    4*z4^12*z6- 8*z3*z4^10*z5*z6+ 6*z4^11*z5*z6+ 6*z3*z4^11*z7- 4*z4^12*z7-
    8*z3*z4^10*z5*z7+ 6*z4^11*z5*z7- 8*z3*z4^10*z6*z7+ 6*z4^11*z6*z7+
    10*z3*z4^9*z5*z6*z7- 8*z4^10*z5*z6*z7+ 4491*z3*z4^10+ 8*z4^11+ 5*z3*z4^9*z5+
    4491*z4^10*z5+ 5*z3*z4^9*z6+ 4491*z4^10*z6- 4493*z3*z4^8*z5*z6+
    5*z4^9*z5*z6+ 5*z3*z4^9*z7+ 4491*z4^10*z7- 4493*z3*z4^8*z5*z7+ 5*z4^9*z5*z7-
    4493*z3*z4^8*z6*z7+ 5*z4^9*z6*z7- 30*z3*z4^7*z5*z6*z7- 4493*z4^8*z5*z6*z7+
    4496*z3*z4^8+ 2261*z4^9- 2257*z3*z4^7*z5+ 4496*z4^8*z5- 2257*z3*z4^7*z6+
    4496*z4^8*z6- 4490*z3*z4^6*z5*z6- 2257*z4^7*z5*z6- 2257*z3*z4^7*z7+
    4496*z4^8*z7- 4490*z3*z4^6*z5*z7- 2257*z4^7*z5*z7- 4490*z3*z4^6*z6*z7-
    2257*z4^7*z6*z7+ 2266*z3*z4^5*z5*z6*z7- 4490*z4^6*z5*z6*z7+ 2816*z3*z4^6+
    1130*z4^7+ 4496*z3*z4^5*z5+ 2816*z4^6*z5+ 4496*z3*z4^5*z6+ 2816*z4^6*z6+
    1683*z3*z4^4*z5*z6+ 4496*z4^5*z5*z6+ 4496*z3*z4^5*z7+ 2816*z4^6*z7+
    1683*z3*z4^4*z5*z7+ 4496*z4^5*z5*z7+ 1683*z3*z4^4*z6*z7+ 4496*z4^5*z6*z7-
    1127*z3*z4^3*z5*z6*z7+ 1683*z4^4*z5*z6*z7+ 1549*z3*z4^4+ 3867*z4^5-
    2460*z3*z4^3*z5+ 1549*z4^4*z5- 2460*z3*z4^3*z6+ 1549*z4^4*z6+
    1688*z3*z4^2*z5*z6- 2460*z4^3*z5*z6- 2460*z3*z4^3*z7+ 1549*z4^4*z7+
    1688*z3*z4^2*z5*z7- 2460*z4^3*z5*z7+ 1688*z3*z4^2*z6*z7- 2460*z4^3*z6*z7+
    211*z3*z4*z5*z6*z7+ 1688*z4^2*z5*z6*z7- 4448*z3*z4^2+ 3445*z4^3-
    1090*z3*z4*z5- 4448*z4^2*z5- 1090*z3*z4*z6- 4448*z4^2*z6- 4061*z3*z5*z6-
    1090*z4*z5*z6- 1090*z3*z4*z7- 4448*z4^2*z7- 4061*z3*z5*z7- 1090*z4*z5*z7-
    4061*z3*z6*z7- 1090*z4*z6*z7- 4061*z5*z6*z7+ 4061*z3+ 1969*z4+ 4061*z5+
    4061*z6+ 4061*z7",
    "6*z3*z4*z5^11- 4*z3*z5^12- 4*z4*z5^12+ 2*z5^13- 8*z3*z4*z5^10*z6+
    6*z3*z5^11*z6+ 6*z4*z5^11*z6- 4*z5^12*z6- 8*z3*z4*z5^10*z7+ 6*z3*z5^11*z7+
    6*z4*z5^11*z7- 4*z5^12*z7+ 10*z3*z4*z5^9*z6*z7- 8*z3*z5^10*z6*z7-
    8*z4*z5^10*z6*z7+ 6*z5^11*z6*z7+ 5*z3*z4*z5^9+ 4491*z3*z5^10+ 4491*z4*z5^10+
    8*z5^11- 4493*z3*z4*z5^8*z6+ 5*z3*z5^9*z6+ 5*z4*z5^9*z6+ 4491*z5^10*z6-
    4493*z3*z4*z5^8*z7+ 5*z3*z5^9*z7+ 5*z4*z5^9*z7+ 4491*z5^10*z7-
    30*z3*z4*z5^7*z6*z7- 4493*z3*z5^8*z6*z7- 4493*z4*z5^8*z6*z7+ 5*z5^9*z6*z7-
    2257*z3*z4*z5^7+ 4496*z3*z5^8+ 4496*z4*z5^8+ 2261*z5^9- 4490*z3*z4*z5^6*z6-
    2257*z3*z5^7*z6- 2257*z4*z5^7*z6+ 4496*z5^8*z6- 4490*z3*z4*z5^6*z7-
    2257*z3*z5^7*z7- 2257*z4*z5^7*z7+ 4496*z5^8*z7+ 2266*z3*z4*z5^5*z6*z7-
    4490*z3*z5^6*z6*z7- 4490*z4*z5^6*z6*z7- 2257*z5^7*z6*z7+ 4496*z3*z4*z5^5+
    2816*z3*z5^6+ 2816*z4*z5^6+ 1130*z5^7+ 1683*z3*z4*z5^4*z6+ 4496*z3*z5^5*z6+
    4496*z4*z5^5*z6+ 2816*z5^6*z6+ 1683*z3*z4*z5^4*z7+ 4496*z3*z5^5*z7+
    4496*z4*z5^5*z7+ 2816*z5^6*z7- 1127*z3*z4*z5^3*z6*z7+ 1683*z3*z5^4*z6*z7+
    1683*z4*z5^4*z6*z7+ 4496*z5^5*z6*z7- 2460*z3*z4*z5^3+ 1549*z3*z5^4+
    1549*z4*z5^4+ 3867*z5^5+ 1688*z3*z4*z5^2*z6- 2460*z3*z5^3*z6-
    2460*z4*z5^3*z6+ 1549*z5^4*z6+ 1688*z3*z4*z5^2*z7- 2460*z3*z5^3*z7-
    2460*z4*z5^3*z7+ 1549*z5^4*z7+ 211*z3*z4*z5*z6*z7+ 1688*z3*z5^2*z6*z7+
    1688*z4*z5^2*z6*z7- 2460*z5^3*z6*z7- 1090*z3*z4*z5- 4448*z3*z5^2-
    4448*z4*z5^2+ 3445*z5^3- 4061*z3*z4*z6- 1090*z3*z5*z6- 1090*z4*z5*z6-
    4448*z5^2*z6- 4061*z3*z4*z7- 1090*z3*z5*z7- 1090*z4*z5*z7- 4448*z5^2*z7-
    4061*z3*z6*z7- 4061*z4*z6*z7- 1090*z5*z6*z7+ 4061*z3+ 4061*z4+ 1969*z5+
    4061*z6+ 4061*z7",
    "- 8*z3*z4*z5*z6^10+ 6*z3*z4*z6^11+ 6*z3*z5*z6^11+ 6*z4*z5*z6^11-
    4*z3*z6^12- 4*z4*z6^12- 4*z5*z6^12+ 2*z6^13+ 10*z3*z4*z5*z6^9*z7-
    8*z3*z4*z6^10*z7- 8*z3*z5*z6^10*z7- 8*z4*z5*z6^10*z7+ 6*z3*z6^11*z7+
    6*z4*z6^11*z7+ 6*z5*z6^11*z7- 4*z6^12*z7- 4493*z3*z4*z5*z6^8+ 5*z3*z4*z6^9+
    5*z3*z5*z6^9+ 5*z4*z5*z6^9+ 4491*z3*z6^10+ 4491*z4*z6^10+ 4491*z5*z6^10+
    8*z6^11- 30*z3*z4*z5*z6^7*z7- 4493*z3*z4*z6^8*z7- 4493*z3*z5*z6^8*z7-
    4493*z4*z5*z6^8*z7+ 5*z3*z6^9*z7+ 5*z4*z6^9*z7+ 5*z5*z6^9*z7+ 4491*z6^10*z7-
    4490*z3*z4*z5*z6^6- 2257*z3*z4*z6^7- 2257*z3*z5*z6^7- 2257*z4*z5*z6^7+
    4496*z3*z6^8+ 4496*z4*z6^8+ 4496*z5*z6^8+ 2261*z6^9+ 2266*z3*z4*z5*z6^5*z7-
    4490*z3*z4*z6^6*z7- 4490*z3*z5*z6^6*z7- 4490*z4*z5*z6^6*z7- 2257*z3*z6^7*z7-
    2257*z4*z6^7*z7- 2257*z5*z6^7*z7+ 4496*z6^8*z7+ 1683*z3*z4*z5*z6^4+
    4496*z3*z4*z6^5+ 4496*z3*z5*z6^5+ 4496*z4*z5*z6^5+ 2816*z3*z6^6+
    2816*z4*z6^6+ 2816*z5*z6^6+ 1130*z6^7- 1127*z3*z4*z5*z6^3*z7+
    1683*z3*z4*z6^4*z7+ 1683*z3*z5*z6^4*z7+ 1683*z4*z5*z6^4*z7+ 4496*z3*z6^5*z7+
    4496*z4*z6^5*z7+ 4496*z5*z6^5*z7+ 2816*z6^6*z7+ 1688*z3*z4*z5*z6^2-
    2460*z3*z4*z6^3- 2460*z3*z5*z6^3- 2460*z4*z5*z6^3+ 1549*z3*z6^4+
    1549*z4*z6^4+ 1549*z5*z6^4+ 3867*z6^5+ 211*z3*z4*z5*z6*z7+
    1688*z3*z4*z6^2*z7+ 1688*z3*z5*z6^2*z7+ 1688*z4*z5*z6^2*z7- 2460*z3*z6^3*z7-
    2460*z4*z6^3*z7- 2460*z5*z6^3*z7+ 1549*z6^4*z7- 4061*z3*z4*z5-
    1090*z3*z4*z6- 1090*z3*z5*z6- 1090*z4*z5*z6- 4448*z3*z6^2- 4448*z4*z6^2-
    4448*z5*z6^2+ 3445*z6^3- 4061*z3*z4*z7- 4061*z3*z5*z7- 4061*z4*z5*z7-
    1090*z3*z6*z7- 1090*z4*z6*z7- 1090*z5*z6*z7- 4448*z6^2*z7+ 4061*z3+ 4061*z4+
    4061*z5+ 1969*z6+ 4061*z7",
    "10*z3*z4*z5*z6*z7^9- 8*z3*z4*z5*z7^10- 8*z3*z4*z6*z7^10- 8*z3*z5*z6*z7^10-
    8*z4*z5*z6*z7^10+ 6*z3*z4*z7^11+ 6*z3*z5*z7^11+ 6*z4*z5*z7^11+
    6*z3*z6*z7^11+ 6*z4*z6*z7^11+ 6*z5*z6*z7^11- 4*z3*z7^12- 4*z4*z7^12-
    4*z5*z7^12- 4*z6*z7^12+ 2*z7^13- 30*z3*z4*z5*z6*z7^7- 4493*z3*z4*z5*z7^8-
    4493*z3*z4*z6*z7^8- 4493*z3*z5*z6*z7^8- 4493*z4*z5*z6*z7^8+ 5*z3*z4*z7^9+
    5*z3*z5*z7^9+ 5*z4*z5*z7^9+ 5*z3*z6*z7^9+ 5*z4*z6*z7^9+ 5*z5*z6*z7^9+
    4491*z3*z7^10+ 4491*z4*z7^10+ 4491*z5*z7^10+ 4491*z6*z7^10+ 8*z7^11+
    2266*z3*z4*z5*z6*z7^5- 4490*z3*z4*z5*z7^6- 4490*z3*z4*z6*z7^6-
    4490*z3*z5*z6*z7^6- 4490*z4*z5*z6*z7^6- 2257*z3*z4*z7^7- 2257*z3*z5*z7^7-
    2257*z4*z5*z7^7- 2257*z3*z6*z7^7- 2257*z4*z6*z7^7- 2257*z5*z6*z7^7+
    4496*z3*z7^8+ 4496*z4*z7^8+ 4496*z5*z7^8+ 4496*z6*z7^8+ 2261*z7^9-
    1127*z3*z4*z5*z6*z7^3+ 1683*z3*z4*z5*z7^4+ 1683*z3*z4*z6*z7^4+
    1683*z3*z5*z6*z7^4+ 1683*z4*z5*z6*z7^4+ 4496*z3*z4*z7^5+ 4496*z3*z5*z7^5+
    4496*z4*z5*z7^5+ 4496*z3*z6*z7^5+ 4496*z4*z6*z7^5+ 4496*z5*z6*z7^5+
    2816*z3*z7^6+ 2816*z4*z7^6+ 2816*z5*z7^6+ 2816*z6*z7^6+ 1130*z7^7+
    211*z3*z4*z5*z6*z7+ 1688*z3*z4*z5*z7^2+ 1688*z3*z4*z6*z7^2+
    1688*z3*z5*z6*z7^2+ 1688*z4*z5*z6*z7^2- 2460*z3*z4*z7^3- 2460*z3*z5*z7^3-
    2460*z4*z5*z7^3- 2460*z3*z6*z7^3- 2460*z4*z6*z7^3- 2460*z5*z6*z7^3+
    1549*z3*z7^4+ 1549*z4*z7^4+ 1549*z5*z7^4+ 1549*z6*z7^4+ 3867*z7^5-
    4061*z3*z4*z5- 4061*z3*z4*z6- 4061*z3*z5*z6- 4061*z4*z5*z6- 1090*z3*z4*z7-
    1090*z3*z5*z7- 1090*z4*z5*z7- 1090*z3*z6*z7- 1090*z4*z6*z7- 1090*z5*z6*z7-
    4448*z3*z7^2- 4448*z4*z7^2- 4448*z5*z7^2- 4448*z6*z7^2+ 3445*z7^3+ 4061*z3+
    4061*z4+ 4061*z5+ 4061*z6+ 1969*z7",
    "z1*z3^4*z4^3*z5^2*z6- z1*z3^3*z4^4*z5^2*z6- z1*z3^4*z4^2*z5^3*z6+
    z1*z3^2*z4^4*z5^3*z6+ z1*z3^3*z4^2*z5^4*z6- z1*z3^2*z4^3*z5^4*z6-
    z1*z3^4*z4^3*z5*z6^2+ z1*z3^3*z4^4*z5*z6^2+ z1*z3^4*z4*z5^3*z6^2-
    z1*z3*z4^4*z5^3*z6^2- z1*z3^3*z4*z5^4*z6^2+ z1*z3*z4^3*z5^4*z6^2+
    z1*z3^4*z4^2*z5*z6^3- z1*z3^2*z4^4*z5*z6^3- z1*z3^4*z4*z5^2*z6^3+
    z1*z3*z4^4*z5^2*z6^3+ z1*z3^2*z4*z5^4*z6^3- z1*z3*z4^2*z5^4*z6^3-
    z1*z3^3*z4^2*z5*z6^4+ z1*z3^2*z4^3*z5*z6^4+ z1*z3^3*z4*z5^2*z6^4-
    z1*z3*z4^3*z5^2*z6^4- z1*z3^2*z4*z5^3*z6^4+ z1*z3*z4^2*z5^3*z6^4-
    z1*z3^4*z4^3*z5^2*z7+ z1*z3^3*z4^4*z5^2*z7+ z1*z3^4*z4^2*z5^3*z7-
    z1*z3^2*z4^4*z5^3*z7- z1*z3^3*z4^2*z5^4*z7+ z1*z3^2*z4^3*z5^4*z7+
    z1*z3^4*z4^3*z6^2*z7- z1*z3^3*z4^4*z6^2*z7- z1*z3^4*z5^3*z6^2*z7+
    z1*z4^4*z5^3*z6^2*z7+ z1*z3^3*z5^4*z6^2*z7- z1*z4^3*z5^4*z6^2*z7-
    z1*z3^4*z4^2*z6^3*z7+ z1*z3^2*z4^4*z6^3*z7+ z1*z3^4*z5^2*z6^3*z7-
    z1*z4^4*z5^2*z6^3*z7- z1*z3^2*z5^4*z6^3*z7+ z1*z4^2*z5^4*z6^3*z7+
    z1*z3^3*z4^2*z6^4*z7- z1*z3^2*z4^3*z6^4*z7- z1*z3^3*z5^2*z6^4*z7+
    z1*z4^3*z5^2*z6^4*z7+ z1*z3^2*z5^3*z6^4*z7- z1*z4^2*z5^3*z6^4*z7+
    z1*z3^4*z4^3*z5*z7^2- z1*z3^3*z4^4*z5*z7^2- z1*z3^4*z4*z5^3*z7^2+
    z1*z3*z4^4*z5^3*z7^2+ z1*z3^3*z4*z5^4*z7^2- z1*z3*z4^3*z5^4*z7^2-
    z1*z3^4*z4^3*z6*z7^2+ z1*z3^3*z4^4*z6*z7^2+ z1*z3^4*z5^3*z6*z7^2-
    z1*z4^4*z5^3*z6*z7^2- z1*z3^3*z5^4*z6*z7^2+ z1*z4^3*z5^4*z6*z7^2+
    z1*z3^4*z4*z6^3*z7^2- z1*z3*z4^4*z6^3*z7^2- z1*z3^4*z5*z6^3*z7^2+
    z1*z4^4*z5*z6^3*z7^2+ z1*z3*z5^4*z6^3*z7^2- z1*z4*z5^4*z6^3*z7^2-
    z1*z3^3*z4*z6^4*z7^2+ z1*z3*z4^3*z6^4*z7^2+ z1*z3^3*z5*z6^4*z7^2-
    z1*z4^3*z5*z6^4*z7^2- z1*z3*z5^3*z6^4*z7^2+ z1*z4*z5^3*z6^4*z7^2-
    z1*z3^4*z4^2*z5*z7^3+ z1*z3^2*z4^4*z5*z7^3+ z1*z3^4*z4*z5^2*z7^3-
    z1*z3*z4^4*z5^2*z7^3- z1*z3^2*z4*z5^4*z7^3+ z1*z3*z4^2*z5^4*z7^3+
    z1*z3^4*z4^2*z6*z7^3- z1*z3^2*z4^4*z6*z7^3- z1*z3^4*z5^2*z6*z7^3+
    z1*z4^4*z5^2*z6*z7^3+ z1*z3^2*z5^4*z6*z7^3- z1*z4^2*z5^4*z6*z7^3-
    z1*z3^4*z4*z6^2*z7^3+ z1*z3*z4^4*z6^2*z7^3+ z1*z3^4*z5*z6^2*z7^3-
    z1*z4^4*z5*z6^2*z7^3- z1*z3*z5^4*z6^2*z7^3+ z1*z4*z5^4*z6^2*z7^3+
    z1*z3^2*z4*z6^4*z7^3- z1*z3*z4^2*z6^4*z7^3- z1*z3^2*z5*z6^4*z7^3+
    z1*z4^2*z5*z6^4*z7^3+ z1*z3*z5^2*z6^4*z7^3- z1*z4*z5^2*z6^4*z7^3+
    z1*z3^3*z4^2*z5*z7^4- z1*z3^2*z4^3*z5*z7^4- z1*z3^3*z4*z5^2*z7^4+
    z1*z3*z4^3*z5^2*z7^4+ z1*z3^2*z4*z5^3*z7^4- z1*z3*z4^2*z5^3*z7^4-
    z1*z3^3*z4^2*z6*z7^4+ z1*z3^2*z4^3*z6*z7^4+ z1*z3^3*z5^2*z6*z7^4-
    z1*z4^3*z5^2*z6*z7^4- z1*z3^2*z5^3*z6*z7^4+ z1*z4^2*z5^3*z6*z7^4+
    z1*z3^3*z4*z6^2*z7^4- z1*z3*z4^3*z6^2*z7^4- z1*z3^3*z5*z6^2*z7^4+
    z1*z4^3*z5*z6^2*z7^4+ z1*z3*z5^3*z6^2*z7^4- z1*z4*z5^3*z6^2*z7^4-
    z1*z3^2*z4*z6^3*z7^4+ z1*z3*z4^2*z6^3*z7^4+ z1*z3^2*z5*z6^3*z7^4-
    z1*z4^2*z5*z6^3*z7^4- z1*z3*z5^2*z6^3*z7^4+ z1*z4*z5^2*z6^3*z7^4- 1",
    "z2*z3^2*z4^2*z5^2*z6^2*z7^2- 2250*z2*z3^2*z4^2*z5^2*z6^2-
    2250*z2*z3^2*z4^2*z5^2*z7^2- 2250*z2*z3^2*z4^2*z6^2*z7^2-
    2250*z2*z3^2*z5^2*z6^2*z7^2- 2250*z2*z4^2*z5^2*z6^2*z7^2+
    3938*z2*z3^2*z4^2*z5^2+ 3938*z2*z3^2*z4^2*z6^2+ 3938*z2*z3^2*z5^2*z6^2+
    3938*z2*z4^2*z5^2*z6^2+ 3938*z2*z3^2*z4^2*z7^2+ 3938*z2*z3^2*z5^2*z7^2+
    3938*z2*z4^2*z5^2*z7^2+ 3938*z2*z3^2*z6^2*z7^2+ 3938*z2*z4^2*z6^2*z7^2+
    3938*z2*z5^2*z6^2*z7^2- 3516*z2*z3^2*z4^2- 3516*z2*z3^2*z5^2-
    3516*z2*z4^2*z5^2- 3516*z2*z3^2*z6^2- 3516*z2*z4^2*z6^2- 3516*z2*z5^2*z6^2-
    3516*z2*z3^2*z7^2- 3516*z2*z4^2*z7^2- 3516*z2*z5^2*z7^2- 3516*z2*z6^2*z7^2-
    879*z2*z3^2- 879*z2*z4^2- 879*z2*z5^2- 879*z2*z6^2- 879*z2*z7^2- 2470*z2- 1",
    "- z3- z4- z5- z6- z7+ z8",
    "- z3*z4- z3*z5- z4*z5-
    z3*z6- z4*z6- z5*z6- z3*z7- z4*z7- z5*z7- z6*z7+ z9",
    "- z3*z4*z5- z3*z4*z6-z3*z5*z6- z4*z5*z6- z3*z4*z7-
    z3*z5*z7- z4*z5*z7- z3*z6*z7- z4*z6*z7-z5*z6*z7+ z10",
    "- z3*z4*z5*z6- z3*z4*z5*z7- z3*z4*z6*z7- z3*z5*z6*z7-
    z4*z5*z6*z7+ z11",
    "- z3*z4*z5*z6*z7+ z12"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function zhang_l12_m5(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 11
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "z$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "4*z2^15- 6*z2^14*z3- 6*z2^14*z4+ 8*z2^13*z3*z4- 6*z2^14*z5+ 8*z2^13*z3*z5+
    8*z2^13*z4*z5- 10*z2^12*z3*z4*z5- 6*z2^14*z6+ 8*z2^13*z3*z6+ 8*z2^13*z4*z6-
    10*z2^12*z3*z4*z6+ 8*z2^13*z5*z6- 10*z2^12*z3*z5*z6- 10*z2^12*z4*z5*z6+
    12*z2^11*z3*z4*z5*z6+ 13*z2^13- 10*z2^12*z3- 10*z2^12*z4- z2^11*z3*z4-
    10*z2^12*z5- z2^11*z3*z5- z2^11*z4*z5+ 22*z2^10*z3*z4*z5- 10*z2^12*z6-
    z2^11*z3*z6- z2^11*z4*z6+ 22*z2^10*z3*z4*z6- z2^11*z5*z6+ 22*z2^10*z3*z5*z6+
    22*z2^10*z4*z5*z6- 55*z2^9*z3*z4*z5*z6+ 12*z2^11- 1121*z2^10*z3-
    1121*z2^10*z4+ 2231*z2^9*z3*z4- 1121*z2^10*z5+ 2231*z2^9*z3*z5+
    2231*z2^9*z4*z5- 3363*z2^8*z3*z4*z5- 1121*z2^10*z6+ 2231*z2^9*z3*z6+
    2231*z2^9*z4*z6- 3363*z2^8*z3*z4*z6+ 2231*z2^9*z5*z6- 3363*z2^8*z3*z5*z6-
    3363*z2^8*z4*z5*z6- 4451*z2^7*z3*z4*z5*z6+ 3374*z2^9- 3363*z2^8*z3-
    3363*z2^8*z4+ 1121*z2^7*z3*z4- 3363*z2^8*z5+ 1121*z2^7*z3*z5+
    1121*z2^7*z4*z5+ 4484*z2^6*z3*z4*z5- 3363*z2^8*z6+ 1121*z2^7*z3*z6+
    1121*z2^7*z4*z6+ 4484*z2^6*z3*z4*z6+ 1121*z2^7*z5*z6+ 4484*z2^6*z3*z5*z6+
    4484*z2^6*z4*z5*z6+ 3363*z2^5*z3*z4*z5*z6- 147*z2^7- 2740*z2^6*z3-
    2740*z2^6*z4- 4495*z2^5*z3*z4- 2740*z2^6*z5- 4495*z2^5*z3*z5-
    4495*z2^5*z4*z5- 1755*z2^4*z3*z4*z5- 2740*z2^6*z6- 4495*z2^5*z3*z6-
    4495*z2^5*z4*z6- 1755*z2^4*z3*z4*z6- 4495*z2^5*z5*z6- 1755*z2^4*z3*z5*z6-
    1755*z2^4*z4*z5*z6- 4359*z2^3*z3*z4*z5*z6- 318*z2^5- 3588*z2^4*z3-
    3588*z2^4*z4+ 2988*z2^3*z3*z4- 3588*z2^4*z5+ 2988*z2^3*z3*z5+
    2988*z2^3*z4*z5- 633*z2^2*z3*z4*z5- 3588*z2^4*z6+ 2988*z2^3*z3*z6+
    2988*z2^3*z4*z6- 633*z2^2*z3*z4*z6+ 2988*z2^3*z5*z6- 633*z2^2*z3*z5*z6-
    633*z2^2*z4*z5*z6+ 2637*z2*z3*z4*z5*z6+ 1776*z2^3+ 2202*z2^2*z3+
    2202*z2^2*z4- 167*z2*z3*z4+ 2202*z2^2*z5- 167*z2*z3*z5- 167*z2*z4*z5-
    1235*z3*z4*z5+ 2202*z2^2*z6- 167*z2*z3*z6- 167*z2*z4*z6- 1235*z3*z4*z6-
    167*z2*z5*z6- 1235*z3*z5*z6- 1235*z4*z5*z6- 2303*z2+ 1235*z3+ 1235*z4+
    1235*z5+ 1235*z6",
    "-6*z2*z3^14+ 4*z3^15+ 8*z2*z3^13*z4- 6*z3^14*z4+ 8*z2*z3^13*z5- 6*z3^14*z5-
    10*z2*z3^12*z4*z5+ 8*z3^13*z4*z5+ 8*z2*z3^13*z6- 6*z3^14*z6-
    10*z2*z3^12*z4*z6+ 8*z3^13*z4*z6- 10*z2*z3^12*z5*z6+ 8*z3^13*z5*z6+
    12*z2*z3^11*z4*z5*z6- 10*z3^12*z4*z5*z6- 10*z2*z3^12+ 13*z3^13- z2*z3^11*z4-
    10*z3^12*z4- z2*z3^11*z5- 10*z3^12*z5+ 22*z2*z3^10*z4*z5- z3^11*z4*z5-
    z2*z3^11*z6- 10*z3^12*z6+ 22*z2*z3^10*z4*z6- z3^11*z4*z6+ 22*z2*z3^10*z5*z6-
    z3^11*z5*z6- 55*z2*z3^9*z4*z5*z6+ 22*z3^10*z4*z5*z6- 1121*z2*z3^10+
    12*z3^11+ 2231*z2*z3^9*z4- 1121*z3^10*z4+ 2231*z2*z3^9*z5- 1121*z3^10*z5-
    3363*z2*z3^8*z4*z5+ 2231*z3^9*z4*z5+ 2231*z2*z3^9*z6- 1121*z3^10*z6-
    3363*z2*z3^8*z4*z6+ 2231*z3^9*z4*z6- 3363*z2*z3^8*z5*z6+ 2231*z3^9*z5*z6-
    4451*z2*z3^7*z4*z5*z6- 3363*z3^8*z4*z5*z6- 3363*z2*z3^8+ 3374*z3^9+
    1121*z2*z3^7*z4- 3363*z3^8*z4+ 1121*z2*z3^7*z5- 3363*z3^8*z5+
    4484*z2*z3^6*z4*z5+ 1121*z3^7*z4*z5+ 1121*z2*z3^7*z6- 3363*z3^8*z6+
    4484*z2*z3^6*z4*z6+ 1121*z3^7*z4*z6+ 4484*z2*z3^6*z5*z6+ 1121*z3^7*z5*z6+
    3363*z2*z3^5*z4*z5*z6+ 4484*z3^6*z4*z5*z6- 2740*z2*z3^6- 147*z3^7-
    4495*z2*z3^5*z4- 2740*z3^6*z4- 4495*z2*z3^5*z5- 2740*z3^6*z5-
    1755*z2*z3^4*z4*z5- 4495*z3^5*z4*z5- 4495*z2*z3^5*z6- 2740*z3^6*z6-
    1755*z2*z3^4*z4*z6- 4495*z3^5*z4*z6- 1755*z2*z3^4*z5*z6- 4495*z3^5*z5*z6-
    4359*z2*z3^3*z4*z5*z6- 1755*z3^4*z4*z5*z6- 3588*z2*z3^4- 318*z3^5+
    2988*z2*z3^3*z4- 3588*z3^4*z4+ 2988*z2*z3^3*z5- 3588*z3^4*z5-
    633*z2*z3^2*z4*z5+ 2988*z3^3*z4*z5+ 2988*z2*z3^3*z6- 3588*z3^4*z6-
    633*z2*z3^2*z4*z6+ 2988*z3^3*z4*z6- 633*z2*z3^2*z5*z6+ 2988*z3^3*z5*z6+
    2637*z2*z3*z4*z5*z6- 633*z3^2*z4*z5*z6+ 2202*z2*z3^2+ 1776*z3^3-
    167*z2*z3*z4+ 2202*z3^2*z4- 167*z2*z3*z5+ 2202*z3^2*z5- 1235*z2*z4*z5-
    167*z3*z4*z5- 167*z2*z3*z6+ 2202*z3^2*z6- 1235*z2*z4*z6- 167*z3*z4*z6-
    1235*z2*z5*z6- 167*z3*z5*z6- 1235*z4*z5*z6+ 1235*z2- 2303*z3+ 1235*z4+
    1235*z5+ 1235*z6",
    "8*z2*z3*z4^13- 6*z2*z4^14- 6*z3*z4^14+ 4*z4^15- 10*z2*z3*z4^12*z5+
    8*z2*z4^13*z5+ 8*z3*z4^13*z5- 6*z4^14*z5- 10*z2*z3*z4^12*z6+ 8*z2*z4^13*z6+
    8*z3*z4^13*z6- 6*z4^14*z6+ 12*z2*z3*z4^11*z5*z6- 10*z2*z4^12*z5*z6-
    10*z3*z4^12*z5*z6+ 8*z4^13*z5*z6- z2*z3*z4^11- 10*z2*z4^12- 10*z3*z4^12+
    13*z4^13+ 22*z2*z3*z4^10*z5- z2*z4^11*z5- z3*z4^11*z5- 10*z4^12*z5+
    22*z2*z3*z4^10*z6- z2*z4^11*z6- z3*z4^11*z6- 10*z4^12*z6-
    55*z2*z3*z4^9*z5*z6+ 22*z2*z4^10*z5*z6+ 22*z3*z4^10*z5*z6- z4^11*z5*z6+
    2231*z2*z3*z4^9- 1121*z2*z4^10- 1121*z3*z4^10+ 12*z4^11- 3363*z2*z3*z4^8*z5+
    2231*z2*z4^9*z5+ 2231*z3*z4^9*z5- 1121*z4^10*z5- 3363*z2*z3*z4^8*z6+
    2231*z2*z4^9*z6+ 2231*z3*z4^9*z6- 1121*z4^10*z6- 4451*z2*z3*z4^7*z5*z6-
    3363*z2*z4^8*z5*z6- 3363*z3*z4^8*z5*z6+ 2231*z4^9*z5*z6+ 1121*z2*z3*z4^7-
    3363*z2*z4^8- 3363*z3*z4^8+ 3374*z4^9+ 4484*z2*z3*z4^6*z5+ 1121*z2*z4^7*z5+
    1121*z3*z4^7*z5- 3363*z4^8*z5+ 4484*z2*z3*z4^6*z6+ 1121*z2*z4^7*z6+
    1121*z3*z4^7*z6- 3363*z4^8*z6+ 3363*z2*z3*z4^5*z5*z6+ 4484*z2*z4^6*z5*z6+
    4484*z3*z4^6*z5*z6+ 1121*z4^7*z5*z6- 4495*z2*z3*z4^5- 2740*z2*z4^6-
    2740*z3*z4^6- 147*z4^7- 1755*z2*z3*z4^4*z5- 4495*z2*z4^5*z5-
    4495*z3*z4^5*z5- 2740*z4^6*z5- 1755*z2*z3*z4^4*z6- 4495*z2*z4^5*z6-
    4495*z3*z4^5*z6- 2740*z4^6*z6- 4359*z2*z3*z4^3*z5*z6- 1755*z2*z4^4*z5*z6-
    1755*z3*z4^4*z5*z6- 4495*z4^5*z5*z6+ 2988*z2*z3*z4^3- 3588*z2*z4^4-
    3588*z3*z4^4- 318*z4^5- 633*z2*z3*z4^2*z5+ 2988*z2*z4^3*z5+ 2988*z3*z4^3*z5-
    3588*z4^4*z5- 633*z2*z3*z4^2*z6+ 2988*z2*z4^3*z6+ 2988*z3*z4^3*z6-
    3588*z4^4*z6+ 2637*z2*z3*z4*z5*z6- 633*z2*z4^2*z5*z6- 633*z3*z4^2*z5*z6+
    2988*z4^3*z5*z6- 167*z2*z3*z4+ 2202*z2*z4^2+ 2202*z3*z4^2+ 1776*z4^3-
    1235*z2*z3*z5- 167*z2*z4*z5- 167*z3*z4*z5+ 2202*z4^2*z5- 1235*z2*z3*z6-
    167*z2*z4*z6- 167*z3*z4*z6+ 2202*z4^2*z6- 1235*z2*z5*z6- 1235*z3*z5*z6-
    167*z4*z5*z6+ 1235*z2+ 1235*z3- 2303*z4+ 1235*z5+ 1235*z6",
    "- 10*z2*z3*z4*z5^12+ 8*z2*z3*z5^13+ 8*z2*z4*z5^13+ 8*z3*z4*z5^13-
    6*z2*z5^14- 6*z3*z5^14- 6*z4*z5^14+ 4*z5^15+ 12*z2*z3*z4*z5^11*z6-
    10*z2*z3*z5^12*z6- 10*z2*z4*z5^12*z6- 10*z3*z4*z5^12*z6+ 8*z2*z5^13*z6+
    8*z3*z5^13*z6+ 8*z4*z5^13*z6- 6*z5^14*z6+ 22*z2*z3*z4*z5^10- z2*z3*z5^11-
    z2*z4*z5^11- z3*z4*z5^11- 10*z2*z5^12- 10*z3*z5^12- 10*z4*z5^12+ 13*z5^13-
    55*z2*z3*z4*z5^9*z6+ 22*z2*z3*z5^10*z6+ 22*z2*z4*z5^10*z6+
    22*z3*z4*z5^10*z6- z2*z5^11*z6- z3*z5^11*z6- z4*z5^11*z6- 10*z5^12*z6-
    3363*z2*z3*z4*z5^8+ 2231*z2*z3*z5^9+ 2231*z2*z4*z5^9+ 2231*z3*z4*z5^9-
    1121*z2*z5^10- 1121*z3*z5^10- 1121*z4*z5^10+ 12*z5^11-
    4451*z2*z3*z4*z5^7*z6- 3363*z2*z3*z5^8*z6- 3363*z2*z4*z5^8*z6-
    3363*z3*z4*z5^8*z6+ 2231*z2*z5^9*z6+ 2231*z3*z5^9*z6+ 2231*z4*z5^9*z6-
    1121*z5^10*z6+ 4484*z2*z3*z4*z5^6+ 1121*z2*z3*z5^7+ 1121*z2*z4*z5^7+
    1121*z3*z4*z5^7- 3363*z2*z5^8- 3363*z3*z5^8- 3363*z4*z5^8+ 3374*z5^9+
    3363*z2*z3*z4*z5^5*z6+ 4484*z2*z3*z5^6*z6+ 4484*z2*z4*z5^6*z6+
    4484*z3*z4*z5^6*z6+ 1121*z2*z5^7*z6+ 1121*z3*z5^7*z6+ 1121*z4*z5^7*z6-
    3363*z5^8*z6- 1755*z2*z3*z4*z5^4- 4495*z2*z3*z5^5- 4495*z2*z4*z5^5-
    4495*z3*z4*z5^5- 2740*z2*z5^6- 2740*z3*z5^6- 2740*z4*z5^6- 147*z5^7-
    4359*z2*z3*z4*z5^3*z6- 1755*z2*z3*z5^4*z6- 1755*z2*z4*z5^4*z6-
    1755*z3*z4*z5^4*z6- 4495*z2*z5^5*z6- 4495*z3*z5^5*z6- 4495*z4*z5^5*z6-
    2740*z5^6*z6- 633*z2*z3*z4*z5^2+ 2988*z2*z3*z5^3+ 2988*z2*z4*z5^3+
    2988*z3*z4*z5^3- 3588*z2*z5^4- 3588*z3*z5^4- 3588*z4*z5^4- 318*z5^5+
    2637*z2*z3*z4*z5*z6- 633*z2*z3*z5^2*z6- 633*z2*z4*z5^2*z6-
    633*z3*z4*z5^2*z6+ 2988*z2*z5^3*z6+ 2988*z3*z5^3*z6+ 2988*z4*z5^3*z6-
    3588*z5^4*z6- 1235*z2*z3*z4- 167*z2*z3*z5- 167*z2*z4*z5- 167*z3*z4*z5+
    2202*z2*z5^2+ 2202*z3*z5^2+ 2202*z4*z5^2+ 1776*z5^3- 1235*z2*z3*z6-
    1235*z2*z4*z6- 1235*z3*z4*z6- 167*z2*z5*z6- 167*z3*z5*z6- 167*z4*z5*z6+
    2202*z5^2*z6+ 1235*z2+ 1235*z3+ 1235*z4- 2303*z5+ 1235*z6",
    "12*z2*z3*z4*z5*z6^11- 10*z2*z3*z4*z6^12- 10*z2*z3*z5*z6^12-
    10*z2*z4*z5*z6^12- 10*z3*z4*z5*z6^12+ 8*z2*z3*z6^13+ 8*z2*z4*z6^13+
    8*z3*z4*z6^13+ 8*z2*z5*z6^13+ 8*z3*z5*z6^13+ 8*z4*z5*z6^13- 6*z2*z6^14-
    6*z3*z6^14- 6*z4*z6^14- 6*z5*z6^14+ 4*z6^15- 55*z2*z3*z4*z5*z6^9+
    22*z2*z3*z4*z6^10+ 22*z2*z3*z5*z6^10+ 22*z2*z4*z5*z6^10+ 22*z3*z4*z5*z6^10-
    z2*z3*z6^11- z2*z4*z6^11- z3*z4*z6^11- z2*z5*z6^11- z3*z5*z6^11-
    z4*z5*z6^11- 10*z2*z6^12- 10*z3*z6^12- 10*z4*z6^12- 10*z5*z6^12+ 13*z6^13-
    4451*z2*z3*z4*z5*z6^7- 3363*z2*z3*z4*z6^8- 3363*z2*z3*z5*z6^8-
    3363*z2*z4*z5*z6^8- 3363*z3*z4*z5*z6^8+ 2231*z2*z3*z6^9+ 2231*z2*z4*z6^9+
    2231*z3*z4*z6^9+ 2231*z2*z5*z6^9+ 2231*z3*z5*z6^9+ 2231*z4*z5*z6^9-
    1121*z2*z6^10- 1121*z3*z6^10- 1121*z4*z6^10- 1121*z5*z6^10+ 12*z6^11+
    3363*z2*z3*z4*z5*z6^5+ 4484*z2*z3*z4*z6^6+ 4484*z2*z3*z5*z6^6+
    4484*z2*z4*z5*z6^6+ 4484*z3*z4*z5*z6^6+ 1121*z2*z3*z6^7+ 1121*z2*z4*z6^7+
    1121*z3*z4*z6^7+ 1121*z2*z5*z6^7+ 1121*z3*z5*z6^7+ 1121*z4*z5*z6^7-
    3363*z2*z6^8- 3363*z3*z6^8- 3363*z4*z6^8- 3363*z5*z6^8+ 3374*z6^9-
    4359*z2*z3*z4*z5*z6^3- 1755*z2*z3*z4*z6^4- 1755*z2*z3*z5*z6^4-
    1755*z2*z4*z5*z6^4- 1755*z3*z4*z5*z6^4- 4495*z2*z3*z6^5- 4495*z2*z4*z6^5-
    4495*z3*z4*z6^5- 4495*z2*z5*z6^5- 4495*z3*z5*z6^5- 4495*z4*z5*z6^5-
    2740*z2*z6^6- 2740*z3*z6^6- 2740*z4*z6^6- 2740*z5*z6^6- 147*z6^7+
    2637*z2*z3*z4*z5*z6- 633*z2*z3*z4*z6^2- 633*z2*z3*z5*z6^2-
    633*z2*z4*z5*z6^2- 633*z3*z4*z5*z6^2+ 2988*z2*z3*z6^3+ 2988*z2*z4*z6^3+
    2988*z3*z4*z6^3+ 2988*z2*z5*z6^3+ 2988*z3*z5*z6^3+ 2988*z4*z5*z6^3-
    3588*z2*z6^4- 3588*z3*z6^4- 3588*z4*z6^4- 3588*z5*z6^4- 318*z6^5-
    1235*z2*z3*z4- 1235*z2*z3*z5- 1235*z2*z4*z5- 1235*z3*z4*z5- 167*z2*z3*z6-
    167*z2*z4*z6- 167*z3*z4*z6- 167*z2*z5*z6- 167*z3*z5*z6- 167*z4*z5*z6+
    2202*z2*z6^2+ 2202*z3*z6^2+ 2202*z4*z6^2+ 2202*z5*z6^2+ 1776*z6^3+ 1235*z2+
    1235*z3+ 1235*z4+ 1235*z5- 2303*z6",
    "4*z2^14- 2*z2^13*z3- 2*z2^12*z3^2- 2*z2^11*z3^3- 2*z2^10*z3^4- 2*z2^9*z3^5-
    2*z2^8*z3^6- 2*z2^7*z3^7- 2*z2^6*z3^8- 2*z2^5*z3^9- 2*z2^4*z3^10-
    2*z2^3*z3^11- 2*z2^2*z3^12- 2*z2*z3^13+ 4*z3^14- 6*z2^13*z4+ 2*z2^12*z3*z4+
    2*z2^11*z3^2*z4+ 2*z2^10*z3^3*z4+ 2*z2^9*z3^4*z4+ 2*z2^8*z3^5*z4+
    2*z2^7*z3^6*z4+ 2*z2^6*z3^7*z4+ 2*z2^5*z3^8*z4+ 2*z2^4*z3^9*z4+
    2*z2^3*z3^10*z4+ 2*z2^2*z3^11*z4+ 2*z2*z3^12*z4- 6*z3^13*z4- 6*z2^13*z5+
    2*z2^12*z3*z5+ 2*z2^11*z3^2*z5+ 2*z2^10*z3^3*z5+ 2*z2^9*z3^4*z5+
    2*z2^8*z3^5*z5+ 2*z2^7*z3^6*z5+ 2*z2^6*z3^7*z5+ 2*z2^5*z3^8*z5+
    2*z2^4*z3^9*z5+ 2*z2^3*z3^10*z5+ 2*z2^2*z3^11*z5+ 2*z2*z3^12*z5- 6*z3^13*z5+
    8*z2^12*z4*z5- 2*z2^11*z3*z4*z5- 2*z2^10*z3^2*z4*z5- 2*z2^9*z3^3*z4*z5-
    2*z2^8*z3^4*z4*z5- 2*z2^7*z3^5*z4*z5- 2*z2^6*z3^6*z4*z5- 2*z2^5*z3^7*z4*z5-
    2*z2^4*z3^8*z4*z5- 2*z2^3*z3^9*z4*z5- 2*z2^2*z3^10*z4*z5- 2*z2*z3^11*z4*z5+
    8*z3^12*z4*z5- 6*z2^13*z6+ 2*z2^12*z3*z6+ 2*z2^11*z3^2*z6+ 2*z2^10*z3^3*z6+
    2*z2^9*z3^4*z6+ 2*z2^8*z3^5*z6+ 2*z2^7*z3^6*z6+ 2*z2^6*z3^7*z6+
    2*z2^5*z3^8*z6+ 2*z2^4*z3^9*z6+ 2*z2^3*z3^10*z6+ 2*z2^2*z3^11*z6+
    2*z2*z3^12*z6- 6*z3^13*z6+ 8*z2^12*z4*z6- 2*z2^11*z3*z4*z6-
    2*z2^10*z3^2*z4*z6- 2*z2^9*z3^3*z4*z6- 2*z2^8*z3^4*z4*z6- 2*z2^7*z3^5*z4*z6-
    2*z2^6*z3^6*z4*z6- 2*z2^5*z3^7*z4*z6- 2*z2^4*z3^8*z4*z6- 2*z2^3*z3^9*z4*z6-
    2*z2^2*z3^10*z4*z6- 2*z2*z3^11*z4*z6+ 8*z3^12*z4*z6+ 8*z2^12*z5*z6-
    2*z2^11*z3*z5*z6- 2*z2^10*z3^2*z5*z6- 2*z2^9*z3^3*z5*z6- 2*z2^8*z3^4*z5*z6-
    2*z2^7*z3^5*z5*z6- 2*z2^6*z3^6*z5*z6- 2*z2^5*z3^7*z5*z6- 2*z2^4*z3^8*z5*z6-
    2*z2^3*z3^9*z5*z6- 2*z2^2*z3^10*z5*z6- 2*z2*z3^11*z5*z6+ 8*z3^12*z5*z6-
    10*z2^11*z4*z5*z6+ 2*z2^10*z3*z4*z5*z6+ 2*z2^9*z3^2*z4*z5*z6+
    2*z2^8*z3^3*z4*z5*z6+ 2*z2^7*z3^4*z4*z5*z6+ 2*z2^6*z3^5*z4*z5*z6+
    2*z2^5*z3^6*z4*z5*z6+ 2*z2^4*z3^7*z4*z5*z6+ 2*z2^3*z3^8*z4*z5*z6+
    2*z2^2*z3^9*z4*z5*z6+ 2*z2*z3^10*z4*z5*z6- 10*z3^11*z4*z5*z6+ 13*z2^12+
    3*z2^11*z3+ 3*z2^10*z3^2+ 3*z2^9*z3^3+ 3*z2^8*z3^4+ 3*z2^7*z3^5+
    3*z2^6*z3^6+ 3*z2^5*z3^7+ 3*z2^4*z3^8+ 3*z2^3*z3^9+ 3*z2^2*z3^10+
    3*z2*z3^11+ 13*z3^12- 10*z2^11*z4- 11*z2^10*z3*z4- 11*z2^9*z3^2*z4-
    11*z2^8*z3^3*z4- 11*z2^7*z3^4*z4- 11*z2^6*z3^5*z4- 11*z2^5*z3^6*z4-
    11*z2^4*z3^7*z4- 11*z2^3*z3^8*z4- 11*z2^2*z3^9*z4- 11*z2*z3^10*z4-
    10*z3^11*z4- 10*z2^11*z5- 11*z2^10*z3*z5- 11*z2^9*z3^2*z5- 11*z2^8*z3^3*z5-
    11*z2^7*z3^4*z5- 11*z2^6*z3^5*z5- 11*z2^5*z3^6*z5- 11*z2^4*z3^7*z5-
    11*z2^3*z3^8*z5- 11*z2^2*z3^9*z5- 11*z2*z3^10*z5- 10*z3^11*z5- z2^10*z4*z5+
    21*z2^9*z3*z4*z5+ 21*z2^8*z3^2*z4*z5+ 21*z2^7*z3^3*z4*z5+
    21*z2^6*z3^4*z4*z5+ 21*z2^5*z3^5*z4*z5+ 21*z2^4*z3^6*z4*z5+
    21*z2^3*z3^7*z4*z5+ 21*z2^2*z3^8*z4*z5+ 21*z2*z3^9*z4*z5- z3^10*z4*z5-
    10*z2^11*z6- 11*z2^10*z3*z6- 11*z2^9*z3^2*z6- 11*z2^8*z3^3*z6-
    11*z2^7*z3^4*z6- 11*z2^6*z3^5*z6- 11*z2^5*z3^6*z6- 11*z2^4*z3^7*z6-
    11*z2^3*z3^8*z6- 11*z2^2*z3^9*z6- 11*z2*z3^10*z6- 10*z3^11*z6- z2^10*z4*z6+
    21*z2^9*z3*z4*z6+ 21*z2^8*z3^2*z4*z6+ 21*z2^7*z3^3*z4*z6+
    21*z2^6*z3^4*z4*z6+ 21*z2^5*z3^5*z4*z6+ 21*z2^4*z3^6*z4*z6+
    21*z2^3*z3^7*z4*z6+ 21*z2^2*z3^8*z4*z6+ 21*z2*z3^9*z4*z6- z3^10*z4*z6-
    z2^10*z5*z6+ 21*z2^9*z3*z5*z6+ 21*z2^8*z3^2*z5*z6+ 21*z2^7*z3^3*z5*z6+
    21*z2^6*z3^4*z5*z6+ 21*z2^5*z3^5*z5*z6+ 21*z2^4*z3^6*z5*z6+
    21*z2^3*z3^7*z5*z6+ 21*z2^2*z3^8*z5*z6+ 21*z2*z3^9*z5*z6- z3^10*z5*z6+
    22*z2^9*z4*z5*z6- 33*z2^8*z3*z4*z5*z6- 33*z2^7*z3^2*z4*z5*z6-
    33*z2^6*z3^3*z4*z5*z6- 33*z2^5*z3^4*z4*z5*z6- 33*z2^4*z3^5*z4*z5*z6-
    33*z2^3*z3^6*z4*z5*z6- 33*z2^2*z3^7*z4*z5*z6- 33*z2*z3^8*z4*z5*z6+
    22*z3^9*z4*z5*z6+ 12*z2^10- 1109*z2^9*z3- 1109*z2^8*z3^2- 1109*z2^7*z3^3-
    1109*z2^6*z3^4- 1109*z2^5*z3^5- 1109*z2^4*z3^6- 1109*z2^3*z3^7-
    1109*z2^2*z3^8- 1109*z2*z3^9+ 12*z3^10- 1121*z2^9*z4+ 1110*z2^8*z3*z4+
    1110*z2^7*z3^2*z4+ 1110*z2^6*z3^3*z4+ 1110*z2^5*z3^4*z4+ 1110*z2^4*z3^5*z4+
    1110*z2^3*z3^6*z4+ 1110*z2^2*z3^7*z4+ 1110*z2*z3^8*z4- 1121*z3^9*z4-
    1121*z2^9*z5+ 1110*z2^8*z3*z5+ 1110*z2^7*z3^2*z5+ 1110*z2^6*z3^3*z5+
    1110*z2^5*z3^4*z5+ 1110*z2^4*z3^5*z5+ 1110*z2^3*z3^6*z5+ 1110*z2^2*z3^7*z5+
    1110*z2*z3^8*z5- 1121*z3^9*z5+ 2231*z2^8*z4*z5- 1132*z2^7*z3*z4*z5-
    1132*z2^6*z3^2*z4*z5- 1132*z2^5*z3^3*z4*z5- 1132*z2^4*z3^4*z4*z5-
    1132*z2^3*z3^5*z4*z5- 1132*z2^2*z3^6*z4*z5- 1132*z2*z3^7*z4*z5+
    2231*z3^8*z4*z5- 1121*z2^9*z6+ 1110*z2^8*z3*z6+ 1110*z2^7*z3^2*z6+
    1110*z2^6*z3^3*z6+ 1110*z2^5*z3^4*z6+ 1110*z2^4*z3^5*z6+ 1110*z2^3*z3^6*z6+
    1110*z2^2*z3^7*z6+ 1110*z2*z3^8*z6- 1121*z3^9*z6+ 2231*z2^8*z4*z6-
    1132*z2^7*z3*z4*z6- 1132*z2^6*z3^2*z4*z6- 1132*z2^5*z3^3*z4*z6-
    1132*z2^4*z3^4*z4*z6- 1132*z2^3*z3^5*z4*z6- 1132*z2^2*z3^6*z4*z6-
    1132*z2*z3^7*z4*z6+ 2231*z3^8*z4*z6+ 2231*z2^8*z5*z6- 1132*z2^7*z3*z5*z6-
    1132*z2^6*z3^2*z5*z6- 1132*z2^5*z3^3*z5*z6- 1132*z2^4*z3^4*z5*z6-
    1132*z2^3*z3^5*z5*z6- 1132*z2^2*z3^6*z5*z6- 1132*z2*z3^7*z5*z6+
    2231*z3^8*z5*z6- 3363*z2^7*z4*z5*z6+ 1187*z2^6*z3*z4*z5*z6+
    1187*z2^5*z3^2*z4*z5*z6+ 1187*z2^4*z3^3*z4*z5*z6+ 1187*z2^3*z3^4*z4*z5*z6+
    1187*z2^2*z3^5*z4*z5*z6+ 1187*z2*z3^6*z4*z5*z6- 3363*z3^7*z4*z5*z6+
    3374*z2^8+ 11*z2^7*z3+ 11*z2^6*z3^2+ 11*z2^5*z3^3+ 11*z2^4*z3^4+
    11*z2^3*z3^5+ 11*z2^2*z3^6+ 11*z2*z3^7+ 3374*z3^8- 3363*z2^7*z4-
    2242*z2^6*z3*z4- 2242*z2^5*z3^2*z4- 2242*z2^4*z3^3*z4- 2242*z2^3*z3^4*z4-
    2242*z2^2*z3^5*z4- 2242*z2*z3^6*z4- 3363*z3^7*z4- 3363*z2^7*z5-
    2242*z2^6*z3*z5- 2242*z2^5*z3^2*z5- 2242*z2^4*z3^3*z5- 2242*z2^3*z3^4*z5-
    2242*z2^2*z3^5*z5- 2242*z2*z3^6*z5- 3363*z3^7*z5+ 1121*z2^6*z4*z5-
    3396*z2^5*z3*z4*z5- 3396*z2^4*z3^2*z4*z5- 3396*z2^3*z3^3*z4*z5-
    3396*z2^2*z3^4*z4*z5- 3396*z2*z3^5*z4*z5+ 1121*z3^6*z4*z5- 3363*z2^7*z6-
    2242*z2^6*z3*z6- 2242*z2^5*z3^2*z6- 2242*z2^4*z3^3*z6- 2242*z2^3*z3^4*z6-
    2242*z2^2*z3^5*z6- 2242*z2*z3^6*z6- 3363*z3^7*z6+ 1121*z2^6*z4*z6-
    3396*z2^5*z3*z4*z6- 3396*z2^4*z3^2*z4*z6- 3396*z2^3*z3^3*z4*z6-
    3396*z2^2*z3^4*z4*z6- 3396*z2*z3^5*z4*z6+ 1121*z3^6*z4*z6+ 1121*z2^6*z5*z6-
    3396*z2^5*z3*z5*z6- 3396*z2^4*z3^2*z5*z6- 3396*z2^3*z3^3*z5*z6-
    3396*z2^2*z3^4*z5*z6- 3396*z2*z3^5*z5*z6+ 1121*z3^6*z5*z6+
    4484*z2^5*z4*z5*z6- 1154*z2^4*z3*z4*z5*z6- 1154*z2^3*z3^2*z4*z5*z6-
    1154*z2^2*z3^3*z4*z5*z6- 1154*z2*z3^4*z4*z5*z6+ 4484*z3^5*z4*z5*z6-
    147*z2^6- 2887*z2^5*z3- 2887*z2^4*z3^2- 2887*z2^3*z3^3- 2887*z2^2*z3^4-
    2887*z2*z3^5- 147*z3^6- 2740*z2^5*z4+ 1766*z2^4*z3*z4+ 1766*z2^3*z3^2*z4+
    1766*z2^2*z3^3*z4+ 1766*z2*z3^4*z4- 2740*z3^5*z4- 2740*z2^5*z5+
    1766*z2^4*z3*z5+ 1766*z2^3*z3^2*z5+ 1766*z2^2*z3^3*z5+ 1766*z2*z3^4*z5-
    2740*z3^5*z5- 4495*z2^4*z4*z5+ 2751*z2^3*z3*z4*z5+ 2751*z2^2*z3^2*z4*z5+
    2751*z2*z3^3*z4*z5- 4495*z3^4*z4*z5- 2740*z2^5*z6+ 1766*z2^4*z3*z6+
    1766*z2^3*z3^2*z6+ 1766*z2^2*z3^3*z6+ 1766*z2*z3^4*z6- 2740*z3^5*z6-
    4495*z2^4*z4*z6+ 2751*z2^3*z3*z4*z6+ 2751*z2^2*z3^2*z4*z6+
    2751*z2*z3^3*z4*z6- 4495*z3^4*z4*z6- 4495*z2^4*z5*z6+ 2751*z2^3*z3*z5*z6+
    2751*z2^2*z3^2*z5*z6+ 2751*z2*z3^3*z5*z6- 4495*z3^4*z5*z6-
    1755*z2^3*z4*z5*z6+ 2887*z2^2*z3*z4*z5*z6+ 2887*z2*z3^2*z4*z5*z6-
    1755*z3^3*z4*z5*z6- 318*z2^4- 3906*z2^3*z3- 3906*z2^2*z3^2- 3906*z2*z3^3-
    318*z3^4- 3588*z2^3*z4- 600*z2^2*z3*z4- 600*z2*z3^2*z4- 3588*z3^3*z4-
    3588*z2^3*z5- 600*z2^2*z3*z5- 600*z2*z3^2*z5- 3588*z3^3*z5+ 2988*z2^2*z4*z5+
    2355*z2*z3*z4*z5+ 2988*z3^2*z4*z5- 3588*z2^3*z6- 600*z2^2*z3*z6-
    600*z2*z3^2*z6- 3588*z3^3*z6+ 2988*z2^2*z4*z6+ 2355*z2*z3*z4*z6+
    2988*z3^2*z4*z6+ 2988*z2^2*z5*z6+ 2355*z2*z3*z5*z6+ 2988*z3^2*z5*z6-
    633*z2*z4*z5*z6- 633*z3*z4*z5*z6+ 1776*z2^2+ 3978*z2*z3+ 1776*z3^2+
    2202*z2*z4+ 2202*z3*z4+ 2202*z2*z5+ 2202*z3*z5+ 1068*z4*z5+ 2202*z2*z6+
    2202*z3*z6+ 1068*z4*z6+ 1068*z5*z6- 3538",
    "4*z2^14- 6*z2^13*z3- 2*z2^13*z4+ 2*z2^12*z3*z4- 2*z2^12*z4^2+
    2*z2^11*z3*z4^2- 2*z2^11*z4^3+ 2*z2^10*z3*z4^3- 2*z2^10*z4^4+
    2*z2^9*z3*z4^4- 2*z2^9*z4^5+ 2*z2^8*z3*z4^5- 2*z2^8*z4^6+ 2*z2^7*z3*z4^6-
    2*z2^7*z4^7+ 2*z2^6*z3*z4^7- 2*z2^6*z4^8+ 2*z2^5*z3*z4^8- 2*z2^5*z4^9+
    2*z2^4*z3*z4^9- 2*z2^4*z4^10+ 2*z2^3*z3*z4^10- 2*z2^3*z4^11+
    2*z2^2*z3*z4^11- 2*z2^2*z4^12+ 2*z2*z3*z4^12- 2*z2*z4^13- 6*z3*z4^13+
    4*z4^14- 6*z2^13*z5+ 8*z2^12*z3*z5+ 2*z2^12*z4*z5- 2*z2^11*z3*z4*z5+
    2*z2^11*z4^2*z5- 2*z2^10*z3*z4^2*z5+ 2*z2^10*z4^3*z5- 2*z2^9*z3*z4^3*z5+
    2*z2^9*z4^4*z5- 2*z2^8*z3*z4^4*z5+ 2*z2^8*z4^5*z5- 2*z2^7*z3*z4^5*z5+
    2*z2^7*z4^6*z5- 2*z2^6*z3*z4^6*z5+ 2*z2^6*z4^7*z5- 2*z2^5*z3*z4^7*z5+
    2*z2^5*z4^8*z5- 2*z2^4*z3*z4^8*z5+ 2*z2^4*z4^9*z5- 2*z2^3*z3*z4^9*z5+
    2*z2^3*z4^10*z5- 2*z2^2*z3*z4^10*z5+ 2*z2^2*z4^11*z5- 2*z2*z3*z4^11*z5+
    2*z2*z4^12*z5+ 8*z3*z4^12*z5- 6*z4^13*z5- 6*z2^13*z6+ 8*z2^12*z3*z6+
    2*z2^12*z4*z6- 2*z2^11*z3*z4*z6+ 2*z2^11*z4^2*z6- 2*z2^10*z3*z4^2*z6+
    2*z2^10*z4^3*z6- 2*z2^9*z3*z4^3*z6+ 2*z2^9*z4^4*z6- 2*z2^8*z3*z4^4*z6+
    2*z2^8*z4^5*z6- 2*z2^7*z3*z4^5*z6+ 2*z2^7*z4^6*z6- 2*z2^6*z3*z4^6*z6+
    2*z2^6*z4^7*z6- 2*z2^5*z3*z4^7*z6+ 2*z2^5*z4^8*z6- 2*z2^4*z3*z4^8*z6+
    2*z2^4*z4^9*z6- 2*z2^3*z3*z4^9*z6+ 2*z2^3*z4^10*z6- 2*z2^2*z3*z4^10*z6+
    2*z2^2*z4^11*z6- 2*z2*z3*z4^11*z6+ 2*z2*z4^12*z6+ 8*z3*z4^12*z6- 6*z4^13*z6+
    8*z2^12*z5*z6- 10*z2^11*z3*z5*z6- 2*z2^11*z4*z5*z6+ 2*z2^10*z3*z4*z5*z6-
    2*z2^10*z4^2*z5*z6+ 2*z2^9*z3*z4^2*z5*z6- 2*z2^9*z4^3*z5*z6+
    2*z2^8*z3*z4^3*z5*z6- 2*z2^8*z4^4*z5*z6+ 2*z2^7*z3*z4^4*z5*z6-
    2*z2^7*z4^5*z5*z6+ 2*z2^6*z3*z4^5*z5*z6- 2*z2^6*z4^6*z5*z6+
    2*z2^5*z3*z4^6*z5*z6- 2*z2^5*z4^7*z5*z6+ 2*z2^4*z3*z4^7*z5*z6-
    2*z2^4*z4^8*z5*z6+ 2*z2^3*z3*z4^8*z5*z6- 2*z2^3*z4^9*z5*z6+
    2*z2^2*z3*z4^9*z5*z6- 2*z2^2*z4^10*z5*z6+ 2*z2*z3*z4^10*z5*z6-
    2*z2*z4^11*z5*z6- 10*z3*z4^11*z5*z6+ 8*z4^12*z5*z6+ 13*z2^12- 10*z2^11*z3+
    3*z2^11*z4- 11*z2^10*z3*z4+ 3*z2^10*z4^2- 11*z2^9*z3*z4^2+ 3*z2^9*z4^3-
    11*z2^8*z3*z4^3+ 3*z2^8*z4^4- 11*z2^7*z3*z4^4+ 3*z2^7*z4^5- 11*z2^6*z3*z4^5+
    3*z2^6*z4^6- 11*z2^5*z3*z4^6+ 3*z2^5*z4^7- 11*z2^4*z3*z4^7+ 3*z2^4*z4^8-
    11*z2^3*z3*z4^8+ 3*z2^3*z4^9- 11*z2^2*z3*z4^9+ 3*z2^2*z4^10- 11*z2*z3*z4^10+
    3*z2*z4^11- 10*z3*z4^11+ 13*z4^12- 10*z2^11*z5- z2^10*z3*z5- 11*z2^10*z4*z5+
    21*z2^9*z3*z4*z5- 11*z2^9*z4^2*z5+ 21*z2^8*z3*z4^2*z5- 11*z2^8*z4^3*z5+
    21*z2^7*z3*z4^3*z5- 11*z2^7*z4^4*z5+ 21*z2^6*z3*z4^4*z5- 11*z2^6*z4^5*z5+
    21*z2^5*z3*z4^5*z5- 11*z2^5*z4^6*z5+ 21*z2^4*z3*z4^6*z5- 11*z2^4*z4^7*z5+
    21*z2^3*z3*z4^7*z5- 11*z2^3*z4^8*z5+ 21*z2^2*z3*z4^8*z5- 11*z2^2*z4^9*z5+
    21*z2*z3*z4^9*z5- 11*z2*z4^10*z5- z3*z4^10*z5- 10*z4^11*z5- 10*z2^11*z6-
    z2^10*z3*z6- 11*z2^10*z4*z6+ 21*z2^9*z3*z4*z6- 11*z2^9*z4^2*z6+
    21*z2^8*z3*z4^2*z6- 11*z2^8*z4^3*z6+ 21*z2^7*z3*z4^3*z6- 11*z2^7*z4^4*z6+
    21*z2^6*z3*z4^4*z6- 11*z2^6*z4^5*z6+ 21*z2^5*z3*z4^5*z6- 11*z2^5*z4^6*z6+
    21*z2^4*z3*z4^6*z6- 11*z2^4*z4^7*z6+ 21*z2^3*z3*z4^7*z6- 11*z2^3*z4^8*z6+
    21*z2^2*z3*z4^8*z6- 11*z2^2*z4^9*z6+ 21*z2*z3*z4^9*z6- 11*z2*z4^10*z6-
    z3*z4^10*z6- 10*z4^11*z6- z2^10*z5*z6+ 22*z2^9*z3*z5*z6+ 21*z2^9*z4*z5*z6-
    33*z2^8*z3*z4*z5*z6+ 21*z2^8*z4^2*z5*z6- 33*z2^7*z3*z4^2*z5*z6+
    21*z2^7*z4^3*z5*z6- 33*z2^6*z3*z4^3*z5*z6+ 21*z2^6*z4^4*z5*z6-
    33*z2^5*z3*z4^4*z5*z6+ 21*z2^5*z4^5*z5*z6- 33*z2^4*z3*z4^5*z5*z6+
    21*z2^4*z4^6*z5*z6- 33*z2^3*z3*z4^6*z5*z6+ 21*z2^3*z4^7*z5*z6-
    33*z2^2*z3*z4^7*z5*z6+ 21*z2^2*z4^8*z5*z6- 33*z2*z3*z4^8*z5*z6+
    21*z2*z4^9*z5*z6+ 22*z3*z4^9*z5*z6- z4^10*z5*z6+ 12*z2^10- 1121*z2^9*z3-
    1109*z2^9*z4+ 1110*z2^8*z3*z4- 1109*z2^8*z4^2+ 1110*z2^7*z3*z4^2-
    1109*z2^7*z4^3+ 1110*z2^6*z3*z4^3- 1109*z2^6*z4^4+ 1110*z2^5*z3*z4^4-
    1109*z2^5*z4^5+ 1110*z2^4*z3*z4^5- 1109*z2^4*z4^6+ 1110*z2^3*z3*z4^6-
    1109*z2^3*z4^7+ 1110*z2^2*z3*z4^7- 1109*z2^2*z4^8+ 1110*z2*z3*z4^8-
    1109*z2*z4^9- 1121*z3*z4^9+ 12*z4^10- 1121*z2^9*z5+ 2231*z2^8*z3*z5+
    1110*z2^8*z4*z5- 1132*z2^7*z3*z4*z5+ 1110*z2^7*z4^2*z5-
    1132*z2^6*z3*z4^2*z5+ 1110*z2^6*z4^3*z5- 1132*z2^5*z3*z4^3*z5+
    1110*z2^5*z4^4*z5- 1132*z2^4*z3*z4^4*z5+ 1110*z2^4*z4^5*z5-
    1132*z2^3*z3*z4^5*z5+ 1110*z2^3*z4^6*z5- 1132*z2^2*z3*z4^6*z5+
    1110*z2^2*z4^7*z5- 1132*z2*z3*z4^7*z5+ 1110*z2*z4^8*z5+ 2231*z3*z4^8*z5-
    1121*z4^9*z5- 1121*z2^9*z6+ 2231*z2^8*z3*z6+ 1110*z2^8*z4*z6-
    1132*z2^7*z3*z4*z6+ 1110*z2^7*z4^2*z6- 1132*z2^6*z3*z4^2*z6+
    1110*z2^6*z4^3*z6- 1132*z2^5*z3*z4^3*z6+ 1110*z2^5*z4^4*z6-
    1132*z2^4*z3*z4^4*z6+ 1110*z2^4*z4^5*z6- 1132*z2^3*z3*z4^5*z6+
    1110*z2^3*z4^6*z6- 1132*z2^2*z3*z4^6*z6+ 1110*z2^2*z4^7*z6-
    1132*z2*z3*z4^7*z6+ 1110*z2*z4^8*z6+ 2231*z3*z4^8*z6- 1121*z4^9*z6+
    2231*z2^8*z5*z6- 3363*z2^7*z3*z5*z6- 1132*z2^7*z4*z5*z6+
    1187*z2^6*z3*z4*z5*z6- 1132*z2^6*z4^2*z5*z6+ 1187*z2^5*z3*z4^2*z5*z6-
    1132*z2^5*z4^3*z5*z6+ 1187*z2^4*z3*z4^3*z5*z6- 1132*z2^4*z4^4*z5*z6+
    1187*z2^3*z3*z4^4*z5*z6- 1132*z2^3*z4^5*z5*z6+ 1187*z2^2*z3*z4^5*z5*z6-
    1132*z2^2*z4^6*z5*z6+ 1187*z2*z3*z4^6*z5*z6- 1132*z2*z4^7*z5*z6-
    3363*z3*z4^7*z5*z6+ 2231*z4^8*z5*z6+ 3374*z2^8- 3363*z2^7*z3+ 11*z2^7*z4-
    2242*z2^6*z3*z4+ 11*z2^6*z4^2- 2242*z2^5*z3*z4^2+ 11*z2^5*z4^3-
    2242*z2^4*z3*z4^3+ 11*z2^4*z4^4- 2242*z2^3*z3*z4^4+ 11*z2^3*z4^5-
    2242*z2^2*z3*z4^5+ 11*z2^2*z4^6- 2242*z2*z3*z4^6+ 11*z2*z4^7- 3363*z3*z4^7+
    3374*z4^8- 3363*z2^7*z5+ 1121*z2^6*z3*z5- 2242*z2^6*z4*z5-
    3396*z2^5*z3*z4*z5- 2242*z2^5*z4^2*z5- 3396*z2^4*z3*z4^2*z5-
    2242*z2^4*z4^3*z5- 3396*z2^3*z3*z4^3*z5- 2242*z2^3*z4^4*z5-
    3396*z2^2*z3*z4^4*z5- 2242*z2^2*z4^5*z5- 3396*z2*z3*z4^5*z5-
    2242*z2*z4^6*z5+ 1121*z3*z4^6*z5- 3363*z4^7*z5- 3363*z2^7*z6+
    1121*z2^6*z3*z6- 2242*z2^6*z4*z6- 3396*z2^5*z3*z4*z6- 2242*z2^5*z4^2*z6-
    3396*z2^4*z3*z4^2*z6- 2242*z2^4*z4^3*z6- 3396*z2^3*z3*z4^3*z6-
    2242*z2^3*z4^4*z6- 3396*z2^2*z3*z4^4*z6- 2242*z2^2*z4^5*z6-
    3396*z2*z3*z4^5*z6- 2242*z2*z4^6*z6+ 1121*z3*z4^6*z6- 3363*z4^7*z6+
    1121*z2^6*z5*z6+ 4484*z2^5*z3*z5*z6- 3396*z2^5*z4*z5*z6-
    1154*z2^4*z3*z4*z5*z6- 3396*z2^4*z4^2*z5*z6- 1154*z2^3*z3*z4^2*z5*z6-
    3396*z2^3*z4^3*z5*z6- 1154*z2^2*z3*z4^3*z5*z6- 3396*z2^2*z4^4*z5*z6-
    1154*z2*z3*z4^4*z5*z6- 3396*z2*z4^5*z5*z6+ 4484*z3*z4^5*z5*z6+
    1121*z4^6*z5*z6- 147*z2^6- 2740*z2^5*z3- 2887*z2^5*z4+ 1766*z2^4*z3*z4-
    2887*z2^4*z4^2+ 1766*z2^3*z3*z4^2- 2887*z2^3*z4^3+ 1766*z2^2*z3*z4^3-
    2887*z2^2*z4^4+ 1766*z2*z3*z4^4- 2887*z2*z4^5- 2740*z3*z4^5- 147*z4^6-
    2740*z2^5*z5- 4495*z2^4*z3*z5+ 1766*z2^4*z4*z5+ 2751*z2^3*z3*z4*z5+
    1766*z2^3*z4^2*z5+ 2751*z2^2*z3*z4^2*z5+ 1766*z2^2*z4^3*z5+
    2751*z2*z3*z4^3*z5+ 1766*z2*z4^4*z5- 4495*z3*z4^4*z5- 2740*z4^5*z5-
    2740*z2^5*z6- 4495*z2^4*z3*z6+ 1766*z2^4*z4*z6+ 2751*z2^3*z3*z4*z6+
    1766*z2^3*z4^2*z6+ 2751*z2^2*z3*z4^2*z6+ 1766*z2^2*z4^3*z6+
    2751*z2*z3*z4^3*z6+ 1766*z2*z4^4*z6- 4495*z3*z4^4*z6- 2740*z4^5*z6-
    4495*z2^4*z5*z6- 1755*z2^3*z3*z5*z6+ 2751*z2^3*z4*z5*z6+
    2887*z2^2*z3*z4*z5*z6+ 2751*z2^2*z4^2*z5*z6+ 2887*z2*z3*z4^2*z5*z6+
    2751*z2*z4^3*z5*z6- 1755*z3*z4^3*z5*z6- 4495*z4^4*z5*z6- 318*z2^4-
    3588*z2^3*z3- 3906*z2^3*z4- 600*z2^2*z3*z4- 3906*z2^2*z4^2- 600*z2*z3*z4^2-
    3906*z2*z4^3- 3588*z3*z4^3- 318*z4^4- 3588*z2^3*z5+ 2988*z2^2*z3*z5-
    600*z2^2*z4*z5+ 2355*z2*z3*z4*z5- 600*z2*z4^2*z5+ 2988*z3*z4^2*z5-
    3588*z4^3*z5- 3588*z2^3*z6+ 2988*z2^2*z3*z6- 600*z2^2*z4*z6+
    2355*z2*z3*z4*z6- 600*z2*z4^2*z6+ 2988*z3*z4^2*z6- 3588*z4^3*z6+
    2988*z2^2*z5*z6- 633*z2*z3*z5*z6+ 2355*z2*z4*z5*z6- 633*z3*z4*z5*z6+
    2988*z4^2*z5*z6+ 1776*z2^2+ 2202*z2*z3+ 3978*z2*z4+ 2202*z3*z4+ 1776*z4^2+
    2202*z2*z5+ 1068*z3*z5+ 2202*z4*z5+ 2202*z2*z6+ 1068*z3*z6+ 2202*z4*z6+
    1068*z5*z6- 3538",
    "4*z2^14- 6*z2^13*z3- 6*z2^13*z4+ 8*z2^12*z3*z4- 2*z2^13*z5+ 2*z2^12*z3*z5+
    2*z2^12*z4*z5- 2*z2^11*z3*z4*z5- 2*z2^12*z5^2+ 2*z2^11*z3*z5^2+
    2*z2^11*z4*z5^2- 2*z2^10*z3*z4*z5^2- 2*z2^11*z5^3+ 2*z2^10*z3*z5^3+
    2*z2^10*z4*z5^3- 2*z2^9*z3*z4*z5^3- 2*z2^10*z5^4+ 2*z2^9*z3*z5^4+
    2*z2^9*z4*z5^4- 2*z2^8*z3*z4*z5^4- 2*z2^9*z5^5+ 2*z2^8*z3*z5^5+
    2*z2^8*z4*z5^5- 2*z2^7*z3*z4*z5^5- 2*z2^8*z5^6+ 2*z2^7*z3*z5^6+
    2*z2^7*z4*z5^6- 2*z2^6*z3*z4*z5^6- 2*z2^7*z5^7+ 2*z2^6*z3*z5^7+
    2*z2^6*z4*z5^7- 2*z2^5*z3*z4*z5^7- 2*z2^6*z5^8+ 2*z2^5*z3*z5^8+
    2*z2^5*z4*z5^8- 2*z2^4*z3*z4*z5^8- 2*z2^5*z5^9+ 2*z2^4*z3*z5^9+
    2*z2^4*z4*z5^9- 2*z2^3*z3*z4*z5^9- 2*z2^4*z5^10+ 2*z2^3*z3*z5^10+
    2*z2^3*z4*z5^10- 2*z2^2*z3*z4*z5^10- 2*z2^3*z5^11+ 2*z2^2*z3*z5^11+
    2*z2^2*z4*z5^11- 2*z2*z3*z4*z5^11- 2*z2^2*z5^12+ 2*z2*z3*z5^12+
    2*z2*z4*z5^12+ 8*z3*z4*z5^12- 2*z2*z5^13- 6*z3*z5^13- 6*z4*z5^13+ 4*z5^14-
    6*z2^13*z6+ 8*z2^12*z3*z6+ 8*z2^12*z4*z6- 10*z2^11*z3*z4*z6+ 2*z2^12*z5*z6-
    2*z2^11*z3*z5*z6- 2*z2^11*z4*z5*z6+ 2*z2^10*z3*z4*z5*z6+ 2*z2^11*z5^2*z6-
    2*z2^10*z3*z5^2*z6- 2*z2^10*z4*z5^2*z6+ 2*z2^9*z3*z4*z5^2*z6+
    2*z2^10*z5^3*z6- 2*z2^9*z3*z5^3*z6- 2*z2^9*z4*z5^3*z6+ 2*z2^8*z3*z4*z5^3*z6+
    2*z2^9*z5^4*z6- 2*z2^8*z3*z5^4*z6- 2*z2^8*z4*z5^4*z6+ 2*z2^7*z3*z4*z5^4*z6+
    2*z2^8*z5^5*z6- 2*z2^7*z3*z5^5*z6- 2*z2^7*z4*z5^5*z6+ 2*z2^6*z3*z4*z5^5*z6+
    2*z2^7*z5^6*z6- 2*z2^6*z3*z5^6*z6- 2*z2^6*z4*z5^6*z6+ 2*z2^5*z3*z4*z5^6*z6+
    2*z2^6*z5^7*z6- 2*z2^5*z3*z5^7*z6- 2*z2^5*z4*z5^7*z6+ 2*z2^4*z3*z4*z5^7*z6+
    2*z2^5*z5^8*z6- 2*z2^4*z3*z5^8*z6- 2*z2^4*z4*z5^8*z6+ 2*z2^3*z3*z4*z5^8*z6+
    2*z2^4*z5^9*z6- 2*z2^3*z3*z5^9*z6- 2*z2^3*z4*z5^9*z6+ 2*z2^2*z3*z4*z5^9*z6+
    2*z2^3*z5^10*z6- 2*z2^2*z3*z5^10*z6- 2*z2^2*z4*z5^10*z6+
    2*z2*z3*z4*z5^10*z6+ 2*z2^2*z5^11*z6- 2*z2*z3*z5^11*z6- 2*z2*z4*z5^11*z6-
    10*z3*z4*z5^11*z6+ 2*z2*z5^12*z6+ 8*z3*z5^12*z6+ 8*z4*z5^12*z6- 6*z5^13*z6+
    13*z2^12- 10*z2^11*z3- 10*z2^11*z4- z2^10*z3*z4+ 3*z2^11*z5- 11*z2^10*z3*z5-
    11*z2^10*z4*z5+ 21*z2^9*z3*z4*z5+ 3*z2^10*z5^2- 11*z2^9*z3*z5^2-
    11*z2^9*z4*z5^2+ 21*z2^8*z3*z4*z5^2+ 3*z2^9*z5^3- 11*z2^8*z3*z5^3-
    11*z2^8*z4*z5^3+ 21*z2^7*z3*z4*z5^3+ 3*z2^8*z5^4- 11*z2^7*z3*z5^4-
    11*z2^7*z4*z5^4+ 21*z2^6*z3*z4*z5^4+ 3*z2^7*z5^5- 11*z2^6*z3*z5^5-
    11*z2^6*z4*z5^5+ 21*z2^5*z3*z4*z5^5+ 3*z2^6*z5^6- 11*z2^5*z3*z5^6-
    11*z2^5*z4*z5^6+ 21*z2^4*z3*z4*z5^6+ 3*z2^5*z5^7- 11*z2^4*z3*z5^7-
    11*z2^4*z4*z5^7+ 21*z2^3*z3*z4*z5^7+ 3*z2^4*z5^8- 11*z2^3*z3*z5^8-
    11*z2^3*z4*z5^8+ 21*z2^2*z3*z4*z5^8+ 3*z2^3*z5^9- 11*z2^2*z3*z5^9-
    11*z2^2*z4*z5^9+ 21*z2*z3*z4*z5^9+ 3*z2^2*z5^10- 11*z2*z3*z5^10-
    11*z2*z4*z5^10- z3*z4*z5^10+ 3*z2*z5^11- 10*z3*z5^11- 10*z4*z5^11+ 13*z5^12-
    10*z2^11*z6- z2^10*z3*z6- z2^10*z4*z6+ 22*z2^9*z3*z4*z6- 11*z2^10*z5*z6+
    21*z2^9*z3*z5*z6+ 21*z2^9*z4*z5*z6- 33*z2^8*z3*z4*z5*z6- 11*z2^9*z5^2*z6+
    21*z2^8*z3*z5^2*z6+ 21*z2^8*z4*z5^2*z6- 33*z2^7*z3*z4*z5^2*z6-
    11*z2^8*z5^3*z6+ 21*z2^7*z3*z5^3*z6+ 21*z2^7*z4*z5^3*z6-
    33*z2^6*z3*z4*z5^3*z6- 11*z2^7*z5^4*z6+ 21*z2^6*z3*z5^4*z6+
    21*z2^6*z4*z5^4*z6- 33*z2^5*z3*z4*z5^4*z6- 11*z2^6*z5^5*z6+
    21*z2^5*z3*z5^5*z6+ 21*z2^5*z4*z5^5*z6- 33*z2^4*z3*z4*z5^5*z6-
    11*z2^5*z5^6*z6+ 21*z2^4*z3*z5^6*z6+ 21*z2^4*z4*z5^6*z6-
    33*z2^3*z3*z4*z5^6*z6- 11*z2^4*z5^7*z6+ 21*z2^3*z3*z5^7*z6+
    21*z2^3*z4*z5^7*z6- 33*z2^2*z3*z4*z5^7*z6- 11*z2^3*z5^8*z6+
    21*z2^2*z3*z5^8*z6+ 21*z2^2*z4*z5^8*z6- 33*z2*z3*z4*z5^8*z6-
    11*z2^2*z5^9*z6+ 21*z2*z3*z5^9*z6+ 21*z2*z4*z5^9*z6+ 22*z3*z4*z5^9*z6-
    11*z2*z5^10*z6- z3*z5^10*z6- z4*z5^10*z6- 10*z5^11*z6+ 12*z2^10-
    1121*z2^9*z3- 1121*z2^9*z4+ 2231*z2^8*z3*z4- 1109*z2^9*z5+ 1110*z2^8*z3*z5+
    1110*z2^8*z4*z5- 1132*z2^7*z3*z4*z5- 1109*z2^8*z5^2+ 1110*z2^7*z3*z5^2+
    1110*z2^7*z4*z5^2- 1132*z2^6*z3*z4*z5^2- 1109*z2^7*z5^3+ 1110*z2^6*z3*z5^3+
    1110*z2^6*z4*z5^3- 1132*z2^5*z3*z4*z5^3- 1109*z2^6*z5^4+ 1110*z2^5*z3*z5^4+
    1110*z2^5*z4*z5^4- 1132*z2^4*z3*z4*z5^4- 1109*z2^5*z5^5+ 1110*z2^4*z3*z5^5+
    1110*z2^4*z4*z5^5- 1132*z2^3*z3*z4*z5^5- 1109*z2^4*z5^6+ 1110*z2^3*z3*z5^6+
    1110*z2^3*z4*z5^6- 1132*z2^2*z3*z4*z5^6- 1109*z2^3*z5^7+ 1110*z2^2*z3*z5^7+
    1110*z2^2*z4*z5^7- 1132*z2*z3*z4*z5^7- 1109*z2^2*z5^8+ 1110*z2*z3*z5^8+
    1110*z2*z4*z5^8+ 2231*z3*z4*z5^8- 1109*z2*z5^9- 1121*z3*z5^9- 1121*z4*z5^9+
    12*z5^10- 1121*z2^9*z6+ 2231*z2^8*z3*z6+ 2231*z2^8*z4*z6-
    3363*z2^7*z3*z4*z6+ 1110*z2^8*z5*z6- 1132*z2^7*z3*z5*z6- 1132*z2^7*z4*z5*z6+
    1187*z2^6*z3*z4*z5*z6+ 1110*z2^7*z5^2*z6- 1132*z2^6*z3*z5^2*z6-
    1132*z2^6*z4*z5^2*z6+ 1187*z2^5*z3*z4*z5^2*z6+ 1110*z2^6*z5^3*z6-
    1132*z2^5*z3*z5^3*z6- 1132*z2^5*z4*z5^3*z6+ 1187*z2^4*z3*z4*z5^3*z6+
    1110*z2^5*z5^4*z6- 1132*z2^4*z3*z5^4*z6- 1132*z2^4*z4*z5^4*z6+
    1187*z2^3*z3*z4*z5^4*z6+ 1110*z2^4*z5^5*z6- 1132*z2^3*z3*z5^5*z6-
    1132*z2^3*z4*z5^5*z6+ 1187*z2^2*z3*z4*z5^5*z6+ 1110*z2^3*z5^6*z6-
    1132*z2^2*z3*z5^6*z6- 1132*z2^2*z4*z5^6*z6+ 1187*z2*z3*z4*z5^6*z6+
    1110*z2^2*z5^7*z6- 1132*z2*z3*z5^7*z6- 1132*z2*z4*z5^7*z6-
    3363*z3*z4*z5^7*z6+ 1110*z2*z5^8*z6+ 2231*z3*z5^8*z6+ 2231*z4*z5^8*z6-
    1121*z5^9*z6+ 3374*z2^8- 3363*z2^7*z3- 3363*z2^7*z4+ 1121*z2^6*z3*z4+
    11*z2^7*z5- 2242*z2^6*z3*z5- 2242*z2^6*z4*z5- 3396*z2^5*z3*z4*z5+
    11*z2^6*z5^2- 2242*z2^5*z3*z5^2- 2242*z2^5*z4*z5^2- 3396*z2^4*z3*z4*z5^2+
    11*z2^5*z5^3- 2242*z2^4*z3*z5^3- 2242*z2^4*z4*z5^3- 3396*z2^3*z3*z4*z5^3+
    11*z2^4*z5^4- 2242*z2^3*z3*z5^4- 2242*z2^3*z4*z5^4- 3396*z2^2*z3*z4*z5^4+
    11*z2^3*z5^5- 2242*z2^2*z3*z5^5- 2242*z2^2*z4*z5^5- 3396*z2*z3*z4*z5^5+
    11*z2^2*z5^6- 2242*z2*z3*z5^6- 2242*z2*z4*z5^6+ 1121*z3*z4*z5^6+ 11*z2*z5^7-
    3363*z3*z5^7- 3363*z4*z5^7+ 3374*z5^8- 3363*z2^7*z6+ 1121*z2^6*z3*z6+
    1121*z2^6*z4*z6+ 4484*z2^5*z3*z4*z6- 2242*z2^6*z5*z6- 3396*z2^5*z3*z5*z6-
    3396*z2^5*z4*z5*z6- 1154*z2^4*z3*z4*z5*z6- 2242*z2^5*z5^2*z6-
    3396*z2^4*z3*z5^2*z6- 3396*z2^4*z4*z5^2*z6- 1154*z2^3*z3*z4*z5^2*z6-
    2242*z2^4*z5^3*z6- 3396*z2^3*z3*z5^3*z6- 3396*z2^3*z4*z5^3*z6-
    1154*z2^2*z3*z4*z5^3*z6- 2242*z2^3*z5^4*z6- 3396*z2^2*z3*z5^4*z6-
    3396*z2^2*z4*z5^4*z6- 1154*z2*z3*z4*z5^4*z6- 2242*z2^2*z5^5*z6-
    3396*z2*z3*z5^5*z6- 3396*z2*z4*z5^5*z6+ 4484*z3*z4*z5^5*z6- 2242*z2*z5^6*z6+
    1121*z3*z5^6*z6+ 1121*z4*z5^6*z6- 3363*z5^7*z6- 147*z2^6- 2740*z2^5*z3-
    2740*z2^5*z4- 4495*z2^4*z3*z4- 2887*z2^5*z5+ 1766*z2^4*z3*z5+
    1766*z2^4*z4*z5+ 2751*z2^3*z3*z4*z5- 2887*z2^4*z5^2+ 1766*z2^3*z3*z5^2+
    1766*z2^3*z4*z5^2+ 2751*z2^2*z3*z4*z5^2- 2887*z2^3*z5^3+ 1766*z2^2*z3*z5^3+
    1766*z2^2*z4*z5^3+ 2751*z2*z3*z4*z5^3- 2887*z2^2*z5^4+ 1766*z2*z3*z5^4+
    1766*z2*z4*z5^4- 4495*z3*z4*z5^4- 2887*z2*z5^5- 2740*z3*z5^5- 2740*z4*z5^5-
    147*z5^6- 2740*z2^5*z6- 4495*z2^4*z3*z6- 4495*z2^4*z4*z6-
    1755*z2^3*z3*z4*z6+ 1766*z2^4*z5*z6+ 2751*z2^3*z3*z5*z6+ 2751*z2^3*z4*z5*z6+
    2887*z2^2*z3*z4*z5*z6+ 1766*z2^3*z5^2*z6+ 2751*z2^2*z3*z5^2*z6+
    2751*z2^2*z4*z5^2*z6+ 2887*z2*z3*z4*z5^2*z6+ 1766*z2^2*z5^3*z6+
    2751*z2*z3*z5^3*z6+ 2751*z2*z4*z5^3*z6- 1755*z3*z4*z5^3*z6+ 1766*z2*z5^4*z6-
    4495*z3*z5^4*z6- 4495*z4*z5^4*z6- 2740*z5^5*z6- 318*z2^4- 3588*z2^3*z3-
    3588*z2^3*z4+ 2988*z2^2*z3*z4- 3906*z2^3*z5- 600*z2^2*z3*z5- 600*z2^2*z4*z5+
    2355*z2*z3*z4*z5- 3906*z2^2*z5^2- 600*z2*z3*z5^2- 600*z2*z4*z5^2+
    2988*z3*z4*z5^2- 3906*z2*z5^3- 3588*z3*z5^3- 3588*z4*z5^3- 318*z5^4-
    3588*z2^3*z6+ 2988*z2^2*z3*z6+ 2988*z2^2*z4*z6- 633*z2*z3*z4*z6-
    600*z2^2*z5*z6+ 2355*z2*z3*z5*z6+ 2355*z2*z4*z5*z6- 633*z3*z4*z5*z6-
    600*z2*z5^2*z6+ 2988*z3*z5^2*z6+ 2988*z4*z5^2*z6- 3588*z5^3*z6+ 1776*z2^2+
    2202*z2*z3+ 2202*z2*z4+ 1068*z3*z4+ 3978*z2*z5+ 2202*z3*z5+ 2202*z4*z5+
    1776*z5^2+ 2202*z2*z6+ 1068*z3*z6+ 1068*z4*z6+ 2202*z5*z6- 3538",
    "4*z2^14- 6*z2^13*z3- 6*z2^13*z4+ 8*z2^12*z3*z4- 6*z2^13*z5+ 8*z2^12*z3*z5+
    8*z2^12*z4*z5- 10*z2^11*z3*z4*z5- 2*z2^13*z6+ 2*z2^12*z3*z6+ 2*z2^12*z4*z6-
    2*z2^11*z3*z4*z6+ 2*z2^12*z5*z6- 2*z2^11*z3*z5*z6- 2*z2^11*z4*z5*z6+
    2*z2^10*z3*z4*z5*z6- 2*z2^12*z6^2+ 2*z2^11*z3*z6^2+ 2*z2^11*z4*z6^2-
    2*z2^10*z3*z4*z6^2+ 2*z2^11*z5*z6^2- 2*z2^10*z3*z5*z6^2- 2*z2^10*z4*z5*z6^2+
    2*z2^9*z3*z4*z5*z6^2- 2*z2^11*z6^3+ 2*z2^10*z3*z6^3+ 2*z2^10*z4*z6^3-
    2*z2^9*z3*z4*z6^3+ 2*z2^10*z5*z6^3- 2*z2^9*z3*z5*z6^3- 2*z2^9*z4*z5*z6^3+
    2*z2^8*z3*z4*z5*z6^3- 2*z2^10*z6^4+ 2*z2^9*z3*z6^4+ 2*z2^9*z4*z6^4-
    2*z2^8*z3*z4*z6^4+ 2*z2^9*z5*z6^4- 2*z2^8*z3*z5*z6^4- 2*z2^8*z4*z5*z6^4+
    2*z2^7*z3*z4*z5*z6^4- 2*z2^9*z6^5+ 2*z2^8*z3*z6^5+ 2*z2^8*z4*z6^5-
    2*z2^7*z3*z4*z6^5+ 2*z2^8*z5*z6^5- 2*z2^7*z3*z5*z6^5- 2*z2^7*z4*z5*z6^5+
    2*z2^6*z3*z4*z5*z6^5- 2*z2^8*z6^6+ 2*z2^7*z3*z6^6+ 2*z2^7*z4*z6^6-
    2*z2^6*z3*z4*z6^6+ 2*z2^7*z5*z6^6- 2*z2^6*z3*z5*z6^6- 2*z2^6*z4*z5*z6^6+
    2*z2^5*z3*z4*z5*z6^6- 2*z2^7*z6^7+ 2*z2^6*z3*z6^7+ 2*z2^6*z4*z6^7-
    2*z2^5*z3*z4*z6^7+ 2*z2^6*z5*z6^7- 2*z2^5*z3*z5*z6^7- 2*z2^5*z4*z5*z6^7+
    2*z2^4*z3*z4*z5*z6^7- 2*z2^6*z6^8+ 2*z2^5*z3*z6^8+ 2*z2^5*z4*z6^8-
    2*z2^4*z3*z4*z6^8+ 2*z2^5*z5*z6^8- 2*z2^4*z3*z5*z6^8- 2*z2^4*z4*z5*z6^8+
    2*z2^3*z3*z4*z5*z6^8- 2*z2^5*z6^9+ 2*z2^4*z3*z6^9+ 2*z2^4*z4*z6^9-
    2*z2^3*z3*z4*z6^9+ 2*z2^4*z5*z6^9- 2*z2^3*z3*z5*z6^9- 2*z2^3*z4*z5*z6^9+
    2*z2^2*z3*z4*z5*z6^9- 2*z2^4*z6^10+ 2*z2^3*z3*z6^10+ 2*z2^3*z4*z6^10-
    2*z2^2*z3*z4*z6^10+ 2*z2^3*z5*z6^10- 2*z2^2*z3*z5*z6^10- 2*z2^2*z4*z5*z6^10+
    2*z2*z3*z4*z5*z6^10- 2*z2^3*z6^11+ 2*z2^2*z3*z6^11+ 2*z2^2*z4*z6^11-
    2*z2*z3*z4*z6^11+ 2*z2^2*z5*z6^11- 2*z2*z3*z5*z6^11- 2*z2*z4*z5*z6^11-
    10*z3*z4*z5*z6^11- 2*z2^2*z6^12+ 2*z2*z3*z6^12+ 2*z2*z4*z6^12+
    8*z3*z4*z6^12+ 2*z2*z5*z6^12+ 8*z3*z5*z6^12+ 8*z4*z5*z6^12- 2*z2*z6^13-
    6*z3*z6^13- 6*z4*z6^13- 6*z5*z6^13+ 4*z6^14+ 13*z2^12- 10*z2^11*z3-
    10*z2^11*z4- z2^10*z3*z4- 10*z2^11*z5- z2^10*z3*z5- z2^10*z4*z5+
    22*z2^9*z3*z4*z5+ 3*z2^11*z6- 11*z2^10*z3*z6- 11*z2^10*z4*z6+
    21*z2^9*z3*z4*z6- 11*z2^10*z5*z6+ 21*z2^9*z3*z5*z6+ 21*z2^9*z4*z5*z6-
    33*z2^8*z3*z4*z5*z6+ 3*z2^10*z6^2- 11*z2^9*z3*z6^2- 11*z2^9*z4*z6^2+
    21*z2^8*z3*z4*z6^2- 11*z2^9*z5*z6^2+ 21*z2^8*z3*z5*z6^2+ 21*z2^8*z4*z5*z6^2-
    33*z2^7*z3*z4*z5*z6^2+ 3*z2^9*z6^3- 11*z2^8*z3*z6^3- 11*z2^8*z4*z6^3+
    21*z2^7*z3*z4*z6^3- 11*z2^8*z5*z6^3+ 21*z2^7*z3*z5*z6^3+ 21*z2^7*z4*z5*z6^3-
    33*z2^6*z3*z4*z5*z6^3+ 3*z2^8*z6^4- 11*z2^7*z3*z6^4- 11*z2^7*z4*z6^4+
    21*z2^6*z3*z4*z6^4- 11*z2^7*z5*z6^4+ 21*z2^6*z3*z5*z6^4+ 21*z2^6*z4*z5*z6^4-
    33*z2^5*z3*z4*z5*z6^4+ 3*z2^7*z6^5- 11*z2^6*z3*z6^5- 11*z2^6*z4*z6^5+
    21*z2^5*z3*z4*z6^5- 11*z2^6*z5*z6^5+ 21*z2^5*z3*z5*z6^5+ 21*z2^5*z4*z5*z6^5-
    33*z2^4*z3*z4*z5*z6^5+ 3*z2^6*z6^6- 11*z2^5*z3*z6^6- 11*z2^5*z4*z6^6+
    21*z2^4*z3*z4*z6^6- 11*z2^5*z5*z6^6+ 21*z2^4*z3*z5*z6^6+ 21*z2^4*z4*z5*z6^6-
    33*z2^3*z3*z4*z5*z6^6+ 3*z2^5*z6^7- 11*z2^4*z3*z6^7- 11*z2^4*z4*z6^7+
    21*z2^3*z3*z4*z6^7- 11*z2^4*z5*z6^7+ 21*z2^3*z3*z5*z6^7+ 21*z2^3*z4*z5*z6^7-
    33*z2^2*z3*z4*z5*z6^7+ 3*z2^4*z6^8- 11*z2^3*z3*z6^8- 11*z2^3*z4*z6^8+
    21*z2^2*z3*z4*z6^8- 11*z2^3*z5*z6^8+ 21*z2^2*z3*z5*z6^8+ 21*z2^2*z4*z5*z6^8-
    33*z2*z3*z4*z5*z6^8+ 3*z2^3*z6^9- 11*z2^2*z3*z6^9- 11*z2^2*z4*z6^9+
    21*z2*z3*z4*z6^9- 11*z2^2*z5*z6^9+ 21*z2*z3*z5*z6^9+ 21*z2*z4*z5*z6^9+
    22*z3*z4*z5*z6^9+ 3*z2^2*z6^10- 11*z2*z3*z6^10- 11*z2*z4*z6^10- z3*z4*z6^10-
    11*z2*z5*z6^10- z3*z5*z6^10- z4*z5*z6^10+ 3*z2*z6^11- 10*z3*z6^11-
    10*z4*z6^11- 10*z5*z6^11+ 13*z6^12+ 12*z2^10- 1121*z2^9*z3- 1121*z2^9*z4+
    2231*z2^8*z3*z4- 1121*z2^9*z5+ 2231*z2^8*z3*z5+ 2231*z2^8*z4*z5-
    3363*z2^7*z3*z4*z5- 1109*z2^9*z6+ 1110*z2^8*z3*z6+ 1110*z2^8*z4*z6-
    1132*z2^7*z3*z4*z6+ 1110*z2^8*z5*z6- 1132*z2^7*z3*z5*z6- 1132*z2^7*z4*z5*z6+
    1187*z2^6*z3*z4*z5*z6- 1109*z2^8*z6^2+ 1110*z2^7*z3*z6^2+ 1110*z2^7*z4*z6^2-
    1132*z2^6*z3*z4*z6^2+ 1110*z2^7*z5*z6^2- 1132*z2^6*z3*z5*z6^2-
    1132*z2^6*z4*z5*z6^2+ 1187*z2^5*z3*z4*z5*z6^2- 1109*z2^7*z6^3+
    1110*z2^6*z3*z6^3+ 1110*z2^6*z4*z6^3- 1132*z2^5*z3*z4*z6^3+
    1110*z2^6*z5*z6^3- 1132*z2^5*z3*z5*z6^3- 1132*z2^5*z4*z5*z6^3+
    1187*z2^4*z3*z4*z5*z6^3- 1109*z2^6*z6^4+ 1110*z2^5*z3*z6^4+
    1110*z2^5*z4*z6^4- 1132*z2^4*z3*z4*z6^4+ 1110*z2^5*z5*z6^4-
    1132*z2^4*z3*z5*z6^4- 1132*z2^4*z4*z5*z6^4+ 1187*z2^3*z3*z4*z5*z6^4-
    1109*z2^5*z6^5+ 1110*z2^4*z3*z6^5+ 1110*z2^4*z4*z6^5- 1132*z2^3*z3*z4*z6^5+
    1110*z2^4*z5*z6^5- 1132*z2^3*z3*z5*z6^5- 1132*z2^3*z4*z5*z6^5+
    1187*z2^2*z3*z4*z5*z6^5- 1109*z2^4*z6^6+ 1110*z2^3*z3*z6^6+
    1110*z2^3*z4*z6^6- 1132*z2^2*z3*z4*z6^6+ 1110*z2^3*z5*z6^6-
    1132*z2^2*z3*z5*z6^6- 1132*z2^2*z4*z5*z6^6+ 1187*z2*z3*z4*z5*z6^6-
    1109*z2^3*z6^7+ 1110*z2^2*z3*z6^7+ 1110*z2^2*z4*z6^7- 1132*z2*z3*z4*z6^7+
    1110*z2^2*z5*z6^7- 1132*z2*z3*z5*z6^7- 1132*z2*z4*z5*z6^7-
    3363*z3*z4*z5*z6^7- 1109*z2^2*z6^8+ 1110*z2*z3*z6^8+ 1110*z2*z4*z6^8+
    2231*z3*z4*z6^8+ 1110*z2*z5*z6^8+ 2231*z3*z5*z6^8+ 2231*z4*z5*z6^8-
    1109*z2*z6^9- 1121*z3*z6^9- 1121*z4*z6^9- 1121*z5*z6^9+ 12*z6^10+ 3374*z2^8-
    3363*z2^7*z3- 3363*z2^7*z4+ 1121*z2^6*z3*z4- 3363*z2^7*z5+ 1121*z2^6*z3*z5+
    1121*z2^6*z4*z5+ 4484*z2^5*z3*z4*z5+ 11*z2^7*z6- 2242*z2^6*z3*z6-
    2242*z2^6*z4*z6- 3396*z2^5*z3*z4*z6- 2242*z2^6*z5*z6- 3396*z2^5*z3*z5*z6-
    3396*z2^5*z4*z5*z6- 1154*z2^4*z3*z4*z5*z6+ 11*z2^6*z6^2- 2242*z2^5*z3*z6^2-
    2242*z2^5*z4*z6^2- 3396*z2^4*z3*z4*z6^2- 2242*z2^5*z5*z6^2-
    3396*z2^4*z3*z5*z6^2- 3396*z2^4*z4*z5*z6^2- 1154*z2^3*z3*z4*z5*z6^2+
    11*z2^5*z6^3- 2242*z2^4*z3*z6^3- 2242*z2^4*z4*z6^3- 3396*z2^3*z3*z4*z6^3-
    2242*z2^4*z5*z6^3- 3396*z2^3*z3*z5*z6^3- 3396*z2^3*z4*z5*z6^3-
    1154*z2^2*z3*z4*z5*z6^3+ 11*z2^4*z6^4- 2242*z2^3*z3*z6^4- 2242*z2^3*z4*z6^4-
    3396*z2^2*z3*z4*z6^4- 2242*z2^3*z5*z6^4- 3396*z2^2*z3*z5*z6^4-
    3396*z2^2*z4*z5*z6^4- 1154*z2*z3*z4*z5*z6^4+ 11*z2^3*z6^5-
    2242*z2^2*z3*z6^5- 2242*z2^2*z4*z6^5- 3396*z2*z3*z4*z6^5- 2242*z2^2*z5*z6^5-
    3396*z2*z3*z5*z6^5- 3396*z2*z4*z5*z6^5+ 4484*z3*z4*z5*z6^5+ 11*z2^2*z6^6-
    2242*z2*z3*z6^6- 2242*z2*z4*z6^6+ 1121*z3*z4*z6^6- 2242*z2*z5*z6^6+
    1121*z3*z5*z6^6+ 1121*z4*z5*z6^6+ 11*z2*z6^7- 3363*z3*z6^7- 3363*z4*z6^7-
    3363*z5*z6^7+ 3374*z6^8- 147*z2^6- 2740*z2^5*z3- 2740*z2^5*z4-
    4495*z2^4*z3*z4- 2740*z2^5*z5- 4495*z2^4*z3*z5- 4495*z2^4*z4*z5-
    1755*z2^3*z3*z4*z5- 2887*z2^5*z6+ 1766*z2^4*z3*z6+ 1766*z2^4*z4*z6+
    2751*z2^3*z3*z4*z6+ 1766*z2^4*z5*z6+ 2751*z2^3*z3*z5*z6+ 2751*z2^3*z4*z5*z6+
    2887*z2^2*z3*z4*z5*z6- 2887*z2^4*z6^2+ 1766*z2^3*z3*z6^2+ 1766*z2^3*z4*z6^2+
    2751*z2^2*z3*z4*z6^2+ 1766*z2^3*z5*z6^2+ 2751*z2^2*z3*z5*z6^2+
    2751*z2^2*z4*z5*z6^2+ 2887*z2*z3*z4*z5*z6^2- 2887*z2^3*z6^3+
    1766*z2^2*z3*z6^3+ 1766*z2^2*z4*z6^3+ 2751*z2*z3*z4*z6^3+ 1766*z2^2*z5*z6^3+
    2751*z2*z3*z5*z6^3+ 2751*z2*z4*z5*z6^3- 1755*z3*z4*z5*z6^3- 2887*z2^2*z6^4+
    1766*z2*z3*z6^4+ 1766*z2*z4*z6^4- 4495*z3*z4*z6^4+ 1766*z2*z5*z6^4-
    4495*z3*z5*z6^4- 4495*z4*z5*z6^4- 2887*z2*z6^5- 2740*z3*z6^5- 2740*z4*z6^5-
    2740*z5*z6^5- 147*z6^6- 318*z2^4- 3588*z2^3*z3- 3588*z2^3*z4+
    2988*z2^2*z3*z4- 3588*z2^3*z5+ 2988*z2^2*z3*z5+ 2988*z2^2*z4*z5-
    633*z2*z3*z4*z5- 3906*z2^3*z6- 600*z2^2*z3*z6- 600*z2^2*z4*z6+
    2355*z2*z3*z4*z6- 600*z2^2*z5*z6+ 2355*z2*z3*z5*z6+ 2355*z2*z4*z5*z6-
    633*z3*z4*z5*z6- 3906*z2^2*z6^2- 600*z2*z3*z6^2- 600*z2*z4*z6^2+
    2988*z3*z4*z6^2- 600*z2*z5*z6^2+ 2988*z3*z5*z6^2+ 2988*z4*z5*z6^2-
    3906*z2*z6^3- 3588*z3*z6^3- 3588*z4*z6^3- 3588*z5*z6^3- 318*z6^4+ 1776*z2^2+
    2202*z2*z3+ 2202*z2*z4+ 1068*z3*z4+ 2202*z2*z5+ 1068*z3*z5+ 1068*z4*z5+
    3978*z2*z6+ 2202*z3*z6+ 2202*z4*z6+ 2202*z5*z6+ 1776*z6^2- 3538",
    "- 6*z2*z3^13+ 4*z3^14+ 2*z2*z3^12*z4- 2*z3^13*z4+ 2*z2*z3^11*z4^2-
    2*z3^12*z4^2+ 2*z2*z3^10*z4^3- 2*z3^11*z4^3+ 2*z2*z3^9*z4^4- 2*z3^10*z4^4+
    2*z2*z3^8*z4^5- 2*z3^9*z4^5+ 2*z2*z3^7*z4^6- 2*z3^8*z4^6+ 2*z2*z3^6*z4^7-
    2*z3^7*z4^7+ 2*z2*z3^5*z4^8- 2*z3^6*z4^8+ 2*z2*z3^4*z4^9- 2*z3^5*z4^9+
    2*z2*z3^3*z4^10- 2*z3^4*z4^10+ 2*z2*z3^2*z4^11- 2*z3^3*z4^11+ 2*z2*z3*z4^12-
    2*z3^2*z4^12- 6*z2*z4^13- 2*z3*z4^13+ 4*z4^14+ 8*z2*z3^12*z5- 6*z3^13*z5-
    2*z2*z3^11*z4*z5+ 2*z3^12*z4*z5- 2*z2*z3^10*z4^2*z5+ 2*z3^11*z4^2*z5-
    2*z2*z3^9*z4^3*z5+ 2*z3^10*z4^3*z5- 2*z2*z3^8*z4^4*z5+ 2*z3^9*z4^4*z5-
    2*z2*z3^7*z4^5*z5+ 2*z3^8*z4^5*z5- 2*z2*z3^6*z4^6*z5+ 2*z3^7*z4^6*z5-
    2*z2*z3^5*z4^7*z5+ 2*z3^6*z4^7*z5- 2*z2*z3^4*z4^8*z5+ 2*z3^5*z4^8*z5-
    2*z2*z3^3*z4^9*z5+ 2*z3^4*z4^9*z5- 2*z2*z3^2*z4^10*z5+ 2*z3^3*z4^10*z5-
    2*z2*z3*z4^11*z5+ 2*z3^2*z4^11*z5+ 8*z2*z4^12*z5+ 2*z3*z4^12*z5- 6*z4^13*z5+
    8*z2*z3^12*z6- 6*z3^13*z6- 2*z2*z3^11*z4*z6+ 2*z3^12*z4*z6-
    2*z2*z3^10*z4^2*z6+ 2*z3^11*z4^2*z6- 2*z2*z3^9*z4^3*z6+ 2*z3^10*z4^3*z6-
    2*z2*z3^8*z4^4*z6+ 2*z3^9*z4^4*z6- 2*z2*z3^7*z4^5*z6+ 2*z3^8*z4^5*z6-
    2*z2*z3^6*z4^6*z6+ 2*z3^7*z4^6*z6- 2*z2*z3^5*z4^7*z6+ 2*z3^6*z4^7*z6-
    2*z2*z3^4*z4^8*z6+ 2*z3^5*z4^8*z6- 2*z2*z3^3*z4^9*z6+ 2*z3^4*z4^9*z6-
    2*z2*z3^2*z4^10*z6+ 2*z3^3*z4^10*z6- 2*z2*z3*z4^11*z6+ 2*z3^2*z4^11*z6+
    8*z2*z4^12*z6+ 2*z3*z4^12*z6- 6*z4^13*z6- 10*z2*z3^11*z5*z6+ 8*z3^12*z5*z6+
    2*z2*z3^10*z4*z5*z6- 2*z3^11*z4*z5*z6+ 2*z2*z3^9*z4^2*z5*z6-
    2*z3^10*z4^2*z5*z6+ 2*z2*z3^8*z4^3*z5*z6- 2*z3^9*z4^3*z5*z6+
    2*z2*z3^7*z4^4*z5*z6- 2*z3^8*z4^4*z5*z6+ 2*z2*z3^6*z4^5*z5*z6-
    2*z3^7*z4^5*z5*z6+ 2*z2*z3^5*z4^6*z5*z6- 2*z3^6*z4^6*z5*z6+
    2*z2*z3^4*z4^7*z5*z6- 2*z3^5*z4^7*z5*z6+ 2*z2*z3^3*z4^8*z5*z6-
    2*z3^4*z4^8*z5*z6+ 2*z2*z3^2*z4^9*z5*z6- 2*z3^3*z4^9*z5*z6+
    2*z2*z3*z4^10*z5*z6- 2*z3^2*z4^10*z5*z6- 10*z2*z4^11*z5*z6-
    2*z3*z4^11*z5*z6+ 8*z4^12*z5*z6- 10*z2*z3^11+ 13*z3^12- 11*z2*z3^10*z4+
    3*z3^11*z4- 11*z2*z3^9*z4^2+ 3*z3^10*z4^2- 11*z2*z3^8*z4^3+ 3*z3^9*z4^3-
    11*z2*z3^7*z4^4+ 3*z3^8*z4^4- 11*z2*z3^6*z4^5+ 3*z3^7*z4^5- 11*z2*z3^5*z4^6+
    3*z3^6*z4^6- 11*z2*z3^4*z4^7+ 3*z3^5*z4^7- 11*z2*z3^3*z4^8+ 3*z3^4*z4^8-
    11*z2*z3^2*z4^9+ 3*z3^3*z4^9- 11*z2*z3*z4^10+ 3*z3^2*z4^10- 10*z2*z4^11+
    3*z3*z4^11+ 13*z4^12- z2*z3^10*z5- 10*z3^11*z5+ 21*z2*z3^9*z4*z5-
    11*z3^10*z4*z5+ 21*z2*z3^8*z4^2*z5- 11*z3^9*z4^2*z5+ 21*z2*z3^7*z4^3*z5-
    11*z3^8*z4^3*z5+ 21*z2*z3^6*z4^4*z5- 11*z3^7*z4^4*z5+ 21*z2*z3^5*z4^5*z5-
    11*z3^6*z4^5*z5+ 21*z2*z3^4*z4^6*z5- 11*z3^5*z4^6*z5+ 21*z2*z3^3*z4^7*z5-
    11*z3^4*z4^7*z5+ 21*z2*z3^2*z4^8*z5- 11*z3^3*z4^8*z5+ 21*z2*z3*z4^9*z5-
    11*z3^2*z4^9*z5- z2*z4^10*z5- 11*z3*z4^10*z5- 10*z4^11*z5- z2*z3^10*z6-
    10*z3^11*z6+ 21*z2*z3^9*z4*z6- 11*z3^10*z4*z6+ 21*z2*z3^8*z4^2*z6-
    11*z3^9*z4^2*z6+ 21*z2*z3^7*z4^3*z6- 11*z3^8*z4^3*z6+ 21*z2*z3^6*z4^4*z6-
    11*z3^7*z4^4*z6+ 21*z2*z3^5*z4^5*z6- 11*z3^6*z4^5*z6+ 21*z2*z3^4*z4^6*z6-
    11*z3^5*z4^6*z6+ 21*z2*z3^3*z4^7*z6- 11*z3^4*z4^7*z6+ 21*z2*z3^2*z4^8*z6-
    11*z3^3*z4^8*z6+ 21*z2*z3*z4^9*z6- 11*z3^2*z4^9*z6- z2*z4^10*z6-
    11*z3*z4^10*z6- 10*z4^11*z6+ 22*z2*z3^9*z5*z6- z3^10*z5*z6-
    33*z2*z3^8*z4*z5*z6+ 21*z3^9*z4*z5*z6- 33*z2*z3^7*z4^2*z5*z6+
    21*z3^8*z4^2*z5*z6- 33*z2*z3^6*z4^3*z5*z6+ 21*z3^7*z4^3*z5*z6-
    33*z2*z3^5*z4^4*z5*z6+ 21*z3^6*z4^4*z5*z6- 33*z2*z3^4*z4^5*z5*z6+
    21*z3^5*z4^5*z5*z6- 33*z2*z3^3*z4^6*z5*z6+ 21*z3^4*z4^6*z5*z6-
    33*z2*z3^2*z4^7*z5*z6+ 21*z3^3*z4^7*z5*z6- 33*z2*z3*z4^8*z5*z6+
    21*z3^2*z4^8*z5*z6+ 22*z2*z4^9*z5*z6+ 21*z3*z4^9*z5*z6- z4^10*z5*z6-
    1121*z2*z3^9+ 12*z3^10+ 1110*z2*z3^8*z4- 1109*z3^9*z4+ 1110*z2*z3^7*z4^2-
    1109*z3^8*z4^2+ 1110*z2*z3^6*z4^3- 1109*z3^7*z4^3+ 1110*z2*z3^5*z4^4-
    1109*z3^6*z4^4+ 1110*z2*z3^4*z4^5- 1109*z3^5*z4^5+ 1110*z2*z3^3*z4^6-
    1109*z3^4*z4^6+ 1110*z2*z3^2*z4^7- 1109*z3^3*z4^7+ 1110*z2*z3*z4^8-
    1109*z3^2*z4^8- 1121*z2*z4^9- 1109*z3*z4^9+ 12*z4^10+ 2231*z2*z3^8*z5-
    1121*z3^9*z5- 1132*z2*z3^7*z4*z5+ 1110*z3^8*z4*z5- 1132*z2*z3^6*z4^2*z5+
    1110*z3^7*z4^2*z5- 1132*z2*z3^5*z4^3*z5+ 1110*z3^6*z4^3*z5-
    1132*z2*z3^4*z4^4*z5+ 1110*z3^5*z4^4*z5- 1132*z2*z3^3*z4^5*z5+
    1110*z3^4*z4^5*z5- 1132*z2*z3^2*z4^6*z5+ 1110*z3^3*z4^6*z5-
    1132*z2*z3*z4^7*z5+ 1110*z3^2*z4^7*z5+ 2231*z2*z4^8*z5+ 1110*z3*z4^8*z5-
    1121*z4^9*z5+ 2231*z2*z3^8*z6- 1121*z3^9*z6- 1132*z2*z3^7*z4*z6+
    1110*z3^8*z4*z6- 1132*z2*z3^6*z4^2*z6+ 1110*z3^7*z4^2*z6-
    1132*z2*z3^5*z4^3*z6+ 1110*z3^6*z4^3*z6- 1132*z2*z3^4*z4^4*z6+
    1110*z3^5*z4^4*z6- 1132*z2*z3^3*z4^5*z6+ 1110*z3^4*z4^5*z6-
    1132*z2*z3^2*z4^6*z6+ 1110*z3^3*z4^6*z6- 1132*z2*z3*z4^7*z6+
    1110*z3^2*z4^7*z6+ 2231*z2*z4^8*z6+ 1110*z3*z4^8*z6- 1121*z4^9*z6-
    3363*z2*z3^7*z5*z6+ 2231*z3^8*z5*z6+ 1187*z2*z3^6*z4*z5*z6-
    1132*z3^7*z4*z5*z6+ 1187*z2*z3^5*z4^2*z5*z6- 1132*z3^6*z4^2*z5*z6+
    1187*z2*z3^4*z4^3*z5*z6- 1132*z3^5*z4^3*z5*z6+ 1187*z2*z3^3*z4^4*z5*z6-
    1132*z3^4*z4^4*z5*z6+ 1187*z2*z3^2*z4^5*z5*z6- 1132*z3^3*z4^5*z5*z6+
    1187*z2*z3*z4^6*z5*z6- 1132*z3^2*z4^6*z5*z6- 3363*z2*z4^7*z5*z6-
    1132*z3*z4^7*z5*z6+ 2231*z4^8*z5*z6- 3363*z2*z3^7+ 3374*z3^8-
    2242*z2*z3^6*z4+ 11*z3^7*z4- 2242*z2*z3^5*z4^2+ 11*z3^6*z4^2-
    2242*z2*z3^4*z4^3+ 11*z3^5*z4^3- 2242*z2*z3^3*z4^4+ 11*z3^4*z4^4-
    2242*z2*z3^2*z4^5+ 11*z3^3*z4^5- 2242*z2*z3*z4^6+ 11*z3^2*z4^6-
    3363*z2*z4^7+ 11*z3*z4^7+ 3374*z4^8+ 1121*z2*z3^6*z5- 3363*z3^7*z5-
    3396*z2*z3^5*z4*z5- 2242*z3^6*z4*z5- 3396*z2*z3^4*z4^2*z5-
    2242*z3^5*z4^2*z5- 3396*z2*z3^3*z4^3*z5- 2242*z3^4*z4^3*z5-
    3396*z2*z3^2*z4^4*z5- 2242*z3^3*z4^4*z5- 3396*z2*z3*z4^5*z5-
    2242*z3^2*z4^5*z5+ 1121*z2*z4^6*z5- 2242*z3*z4^6*z5- 3363*z4^7*z5+
    1121*z2*z3^6*z6- 3363*z3^7*z6- 3396*z2*z3^5*z4*z6- 2242*z3^6*z4*z6-
    3396*z2*z3^4*z4^2*z6- 2242*z3^5*z4^2*z6- 3396*z2*z3^3*z4^3*z6-
    2242*z3^4*z4^3*z6- 3396*z2*z3^2*z4^4*z6- 2242*z3^3*z4^4*z6-
    3396*z2*z3*z4^5*z6- 2242*z3^2*z4^5*z6+ 1121*z2*z4^6*z6- 2242*z3*z4^6*z6-
    3363*z4^7*z6+ 4484*z2*z3^5*z5*z6+ 1121*z3^6*z5*z6- 1154*z2*z3^4*z4*z5*z6-
    3396*z3^5*z4*z5*z6- 1154*z2*z3^3*z4^2*z5*z6- 3396*z3^4*z4^2*z5*z6-
    1154*z2*z3^2*z4^3*z5*z6- 3396*z3^3*z4^3*z5*z6- 1154*z2*z3*z4^4*z5*z6-
    3396*z3^2*z4^4*z5*z6+ 4484*z2*z4^5*z5*z6- 3396*z3*z4^5*z5*z6+
    1121*z4^6*z5*z6- 2740*z2*z3^5- 147*z3^6+ 1766*z2*z3^4*z4- 2887*z3^5*z4+
    1766*z2*z3^3*z4^2- 2887*z3^4*z4^2+ 1766*z2*z3^2*z4^3- 2887*z3^3*z4^3+
    1766*z2*z3*z4^4- 2887*z3^2*z4^4- 2740*z2*z4^5- 2887*z3*z4^5- 147*z4^6-
    4495*z2*z3^4*z5- 2740*z3^5*z5+ 2751*z2*z3^3*z4*z5+ 1766*z3^4*z4*z5+
    2751*z2*z3^2*z4^2*z5+ 1766*z3^3*z4^2*z5+ 2751*z2*z3*z4^3*z5+
    1766*z3^2*z4^3*z5- 4495*z2*z4^4*z5+ 1766*z3*z4^4*z5- 2740*z4^5*z5-
    4495*z2*z3^4*z6- 2740*z3^5*z6+ 2751*z2*z3^3*z4*z6+ 1766*z3^4*z4*z6+
    2751*z2*z3^2*z4^2*z6+ 1766*z3^3*z4^2*z6+ 2751*z2*z3*z4^3*z6+
    1766*z3^2*z4^3*z6- 4495*z2*z4^4*z6+ 1766*z3*z4^4*z6- 2740*z4^5*z6-
    1755*z2*z3^3*z5*z6- 4495*z3^4*z5*z6+ 2887*z2*z3^2*z4*z5*z6+
    2751*z3^3*z4*z5*z6+ 2887*z2*z3*z4^2*z5*z6+ 2751*z3^2*z4^2*z5*z6-
    1755*z2*z4^3*z5*z6+ 2751*z3*z4^3*z5*z6- 4495*z4^4*z5*z6- 3588*z2*z3^3-
    318*z3^4- 600*z2*z3^2*z4- 3906*z3^3*z4- 600*z2*z3*z4^2- 3906*z3^2*z4^2-
    3588*z2*z4^3- 3906*z3*z4^3- 318*z4^4+ 2988*z2*z3^2*z5- 3588*z3^3*z5+
    2355*z2*z3*z4*z5- 600*z3^2*z4*z5+ 2988*z2*z4^2*z5- 600*z3*z4^2*z5-
    3588*z4^3*z5+ 2988*z2*z3^2*z6- 3588*z3^3*z6+ 2355*z2*z3*z4*z6-
    600*z3^2*z4*z6+ 2988*z2*z4^2*z6- 600*z3*z4^2*z6- 3588*z4^3*z6-
    633*z2*z3*z5*z6+ 2988*z3^2*z5*z6- 633*z2*z4*z5*z6+ 2355*z3*z4*z5*z6+
    2988*z4^2*z5*z6+ 2202*z2*z3+ 1776*z3^2+ 2202*z2*z4+ 3978*z3*z4+ 1776*z4^2+
    1068*z2*z5+ 2202*z3*z5+ 2202*z4*z5+ 1068*z2*z6+ 2202*z3*z6+ 2202*z4*z6+
    1068*z5*z6- 3538",
    "- 6*z2*z3^13+ 4*z3^14+ 8*z2*z3^12*z4- 6*z3^13*z4+ 2*z2*z3^12*z5-
    2*z3^13*z5- 2*z2*z3^11*z4*z5+ 2*z3^12*z4*z5+ 2*z2*z3^11*z5^2- 2*z3^12*z5^2-
    2*z2*z3^10*z4*z5^2+ 2*z3^11*z4*z5^2+ 2*z2*z3^10*z5^3- 2*z3^11*z5^3-
    2*z2*z3^9*z4*z5^3+ 2*z3^10*z4*z5^3+ 2*z2*z3^9*z5^4- 2*z3^10*z5^4-
    2*z2*z3^8*z4*z5^4+ 2*z3^9*z4*z5^4+ 2*z2*z3^8*z5^5- 2*z3^9*z5^5-
    2*z2*z3^7*z4*z5^5+ 2*z3^8*z4*z5^5+ 2*z2*z3^7*z5^6- 2*z3^8*z5^6-
    2*z2*z3^6*z4*z5^6+ 2*z3^7*z4*z5^6+ 2*z2*z3^6*z5^7- 2*z3^7*z5^7-
    2*z2*z3^5*z4*z5^7+ 2*z3^6*z4*z5^7+ 2*z2*z3^5*z5^8- 2*z3^6*z5^8-
    2*z2*z3^4*z4*z5^8+ 2*z3^5*z4*z5^8+ 2*z2*z3^4*z5^9- 2*z3^5*z5^9-
    2*z2*z3^3*z4*z5^9+ 2*z3^4*z4*z5^9+ 2*z2*z3^3*z5^10- 2*z3^4*z5^10-
    2*z2*z3^2*z4*z5^10+ 2*z3^3*z4*z5^10+ 2*z2*z3^2*z5^11- 2*z3^3*z5^11-
    2*z2*z3*z4*z5^11+ 2*z3^2*z4*z5^11+ 2*z2*z3*z5^12- 2*z3^2*z5^12+
    8*z2*z4*z5^12+ 2*z3*z4*z5^12- 6*z2*z5^13- 2*z3*z5^13- 6*z4*z5^13+ 4*z5^14+
    8*z2*z3^12*z6- 6*z3^13*z6- 10*z2*z3^11*z4*z6+ 8*z3^12*z4*z6-
    2*z2*z3^11*z5*z6+ 2*z3^12*z5*z6+ 2*z2*z3^10*z4*z5*z6- 2*z3^11*z4*z5*z6-
    2*z2*z3^10*z5^2*z6+ 2*z3^11*z5^2*z6+ 2*z2*z3^9*z4*z5^2*z6-
    2*z3^10*z4*z5^2*z6- 2*z2*z3^9*z5^3*z6+ 2*z3^10*z5^3*z6+
    2*z2*z3^8*z4*z5^3*z6- 2*z3^9*z4*z5^3*z6- 2*z2*z3^8*z5^4*z6+ 2*z3^9*z5^4*z6+
    2*z2*z3^7*z4*z5^4*z6- 2*z3^8*z4*z5^4*z6- 2*z2*z3^7*z5^5*z6+ 2*z3^8*z5^5*z6+
    2*z2*z3^6*z4*z5^5*z6- 2*z3^7*z4*z5^5*z6- 2*z2*z3^6*z5^6*z6+ 2*z3^7*z5^6*z6+
    2*z2*z3^5*z4*z5^6*z6- 2*z3^6*z4*z5^6*z6- 2*z2*z3^5*z5^7*z6+ 2*z3^6*z5^7*z6+
    2*z2*z3^4*z4*z5^7*z6- 2*z3^5*z4*z5^7*z6- 2*z2*z3^4*z5^8*z6+ 2*z3^5*z5^8*z6+
    2*z2*z3^3*z4*z5^8*z6- 2*z3^4*z4*z5^8*z6- 2*z2*z3^3*z5^9*z6+ 2*z3^4*z5^9*z6+
    2*z2*z3^2*z4*z5^9*z6- 2*z3^3*z4*z5^9*z6- 2*z2*z3^2*z5^10*z6+
    2*z3^3*z5^10*z6+ 2*z2*z3*z4*z5^10*z6- 2*z3^2*z4*z5^10*z6- 2*z2*z3*z5^11*z6+
    2*z3^2*z5^11*z6- 10*z2*z4*z5^11*z6- 2*z3*z4*z5^11*z6+ 8*z2*z5^12*z6+
    2*z3*z5^12*z6+ 8*z4*z5^12*z6- 6*z5^13*z6- 10*z2*z3^11+ 13*z3^12-
    z2*z3^10*z4- 10*z3^11*z4- 11*z2*z3^10*z5+ 3*z3^11*z5+ 21*z2*z3^9*z4*z5-
    11*z3^10*z4*z5- 11*z2*z3^9*z5^2+ 3*z3^10*z5^2+ 21*z2*z3^8*z4*z5^2-
    11*z3^9*z4*z5^2- 11*z2*z3^8*z5^3+ 3*z3^9*z5^3+ 21*z2*z3^7*z4*z5^3-
    11*z3^8*z4*z5^3- 11*z2*z3^7*z5^4+ 3*z3^8*z5^4+ 21*z2*z3^6*z4*z5^4-
    11*z3^7*z4*z5^4- 11*z2*z3^6*z5^5+ 3*z3^7*z5^5+ 21*z2*z3^5*z4*z5^5-
    11*z3^6*z4*z5^5- 11*z2*z3^5*z5^6+ 3*z3^6*z5^6+ 21*z2*z3^4*z4*z5^6-
    11*z3^5*z4*z5^6- 11*z2*z3^4*z5^7+ 3*z3^5*z5^7+ 21*z2*z3^3*z4*z5^7-
    11*z3^4*z4*z5^7- 11*z2*z3^3*z5^8+ 3*z3^4*z5^8+ 21*z2*z3^2*z4*z5^8-
    11*z3^3*z4*z5^8- 11*z2*z3^2*z5^9+ 3*z3^3*z5^9+ 21*z2*z3*z4*z5^9-
    11*z3^2*z4*z5^9- 11*z2*z3*z5^10+ 3*z3^2*z5^10- z2*z4*z5^10- 11*z3*z4*z5^10-
    10*z2*z5^11+ 3*z3*z5^11- 10*z4*z5^11+ 13*z5^12- z2*z3^10*z6- 10*z3^11*z6+
    22*z2*z3^9*z4*z6- z3^10*z4*z6+ 21*z2*z3^9*z5*z6- 11*z3^10*z5*z6-
    33*z2*z3^8*z4*z5*z6+ 21*z3^9*z4*z5*z6+ 21*z2*z3^8*z5^2*z6- 11*z3^9*z5^2*z6-
    33*z2*z3^7*z4*z5^2*z6+ 21*z3^8*z4*z5^2*z6+ 21*z2*z3^7*z5^3*z6-
    11*z3^8*z5^3*z6- 33*z2*z3^6*z4*z5^3*z6+ 21*z3^7*z4*z5^3*z6+
    21*z2*z3^6*z5^4*z6- 11*z3^7*z5^4*z6- 33*z2*z3^5*z4*z5^4*z6+
    21*z3^6*z4*z5^4*z6+ 21*z2*z3^5*z5^5*z6- 11*z3^6*z5^5*z6-
    33*z2*z3^4*z4*z5^5*z6+ 21*z3^5*z4*z5^5*z6+ 21*z2*z3^4*z5^6*z6-
    11*z3^5*z5^6*z6- 33*z2*z3^3*z4*z5^6*z6+ 21*z3^4*z4*z5^6*z6+
    21*z2*z3^3*z5^7*z6- 11*z3^4*z5^7*z6- 33*z2*z3^2*z4*z5^7*z6+
    21*z3^3*z4*z5^7*z6+ 21*z2*z3^2*z5^8*z6- 11*z3^3*z5^8*z6-
    33*z2*z3*z4*z5^8*z6+ 21*z3^2*z4*z5^8*z6+ 21*z2*z3*z5^9*z6- 11*z3^2*z5^9*z6+
    22*z2*z4*z5^9*z6+ 21*z3*z4*z5^9*z6- z2*z5^10*z6- 11*z3*z5^10*z6-
    z4*z5^10*z6- 10*z5^11*z6- 1121*z2*z3^9+ 12*z3^10+ 2231*z2*z3^8*z4-
    1121*z3^9*z4+ 1110*z2*z3^8*z5- 1109*z3^9*z5- 1132*z2*z3^7*z4*z5+
    1110*z3^8*z4*z5+ 1110*z2*z3^7*z5^2- 1109*z3^8*z5^2- 1132*z2*z3^6*z4*z5^2+
    1110*z3^7*z4*z5^2+ 1110*z2*z3^6*z5^3- 1109*z3^7*z5^3- 1132*z2*z3^5*z4*z5^3+
    1110*z3^6*z4*z5^3+ 1110*z2*z3^5*z5^4- 1109*z3^6*z5^4- 1132*z2*z3^4*z4*z5^4+
    1110*z3^5*z4*z5^4+ 1110*z2*z3^4*z5^5- 1109*z3^5*z5^5- 1132*z2*z3^3*z4*z5^5+
    1110*z3^4*z4*z5^5+ 1110*z2*z3^3*z5^6- 1109*z3^4*z5^6- 1132*z2*z3^2*z4*z5^6+
    1110*z3^3*z4*z5^6+ 1110*z2*z3^2*z5^7- 1109*z3^3*z5^7- 1132*z2*z3*z4*z5^7+
    1110*z3^2*z4*z5^7+ 1110*z2*z3*z5^8- 1109*z3^2*z5^8+ 2231*z2*z4*z5^8+
    1110*z3*z4*z5^8- 1121*z2*z5^9- 1109*z3*z5^9- 1121*z4*z5^9+ 12*z5^10+
    2231*z2*z3^8*z6- 1121*z3^9*z6- 3363*z2*z3^7*z4*z6+ 2231*z3^8*z4*z6-
    1132*z2*z3^7*z5*z6+ 1110*z3^8*z5*z6+ 1187*z2*z3^6*z4*z5*z6-
    1132*z3^7*z4*z5*z6- 1132*z2*z3^6*z5^2*z6+ 1110*z3^7*z5^2*z6+
    1187*z2*z3^5*z4*z5^2*z6- 1132*z3^6*z4*z5^2*z6- 1132*z2*z3^5*z5^3*z6+
    1110*z3^6*z5^3*z6+ 1187*z2*z3^4*z4*z5^3*z6- 1132*z3^5*z4*z5^3*z6-
    1132*z2*z3^4*z5^4*z6+ 1110*z3^5*z5^4*z6+ 1187*z2*z3^3*z4*z5^4*z6-
    1132*z3^4*z4*z5^4*z6- 1132*z2*z3^3*z5^5*z6+ 1110*z3^4*z5^5*z6+
    1187*z2*z3^2*z4*z5^5*z6- 1132*z3^3*z4*z5^5*z6- 1132*z2*z3^2*z5^6*z6+
    1110*z3^3*z5^6*z6+ 1187*z2*z3*z4*z5^6*z6- 1132*z3^2*z4*z5^6*z6-
    1132*z2*z3*z5^7*z6+ 1110*z3^2*z5^7*z6- 3363*z2*z4*z5^7*z6-
    1132*z3*z4*z5^7*z6+ 2231*z2*z5^8*z6+ 1110*z3*z5^8*z6+ 2231*z4*z5^8*z6-
    1121*z5^9*z6- 3363*z2*z3^7+ 3374*z3^8+ 1121*z2*z3^6*z4- 3363*z3^7*z4-
    2242*z2*z3^6*z5+ 11*z3^7*z5- 3396*z2*z3^5*z4*z5- 2242*z3^6*z4*z5-
    2242*z2*z3^5*z5^2+ 11*z3^6*z5^2- 3396*z2*z3^4*z4*z5^2- 2242*z3^5*z4*z5^2-
    2242*z2*z3^4*z5^3+ 11*z3^5*z5^3- 3396*z2*z3^3*z4*z5^3- 2242*z3^4*z4*z5^3-
    2242*z2*z3^3*z5^4+ 11*z3^4*z5^4- 3396*z2*z3^2*z4*z5^4- 2242*z3^3*z4*z5^4-
    2242*z2*z3^2*z5^5+ 11*z3^3*z5^5- 3396*z2*z3*z4*z5^5- 2242*z3^2*z4*z5^5-
    2242*z2*z3*z5^6+ 11*z3^2*z5^6+ 1121*z2*z4*z5^6- 2242*z3*z4*z5^6-
    3363*z2*z5^7+ 11*z3*z5^7- 3363*z4*z5^7+ 3374*z5^8+ 1121*z2*z3^6*z6-
    3363*z3^7*z6+ 4484*z2*z3^5*z4*z6+ 1121*z3^6*z4*z6- 3396*z2*z3^5*z5*z6-
    2242*z3^6*z5*z6- 1154*z2*z3^4*z4*z5*z6- 3396*z3^5*z4*z5*z6-
    3396*z2*z3^4*z5^2*z6- 2242*z3^5*z5^2*z6- 1154*z2*z3^3*z4*z5^2*z6-
    3396*z3^4*z4*z5^2*z6- 3396*z2*z3^3*z5^3*z6- 2242*z3^4*z5^3*z6-
    1154*z2*z3^2*z4*z5^3*z6- 3396*z3^3*z4*z5^3*z6- 3396*z2*z3^2*z5^4*z6-
    2242*z3^3*z5^4*z6- 1154*z2*z3*z4*z5^4*z6- 3396*z3^2*z4*z5^4*z6-
    3396*z2*z3*z5^5*z6- 2242*z3^2*z5^5*z6+ 4484*z2*z4*z5^5*z6-
    3396*z3*z4*z5^5*z6+ 1121*z2*z5^6*z6- 2242*z3*z5^6*z6+ 1121*z4*z5^6*z6-
    3363*z5^7*z6- 2740*z2*z3^5- 147*z3^6- 4495*z2*z3^4*z4- 2740*z3^5*z4+
    1766*z2*z3^4*z5- 2887*z3^5*z5+ 2751*z2*z3^3*z4*z5+ 1766*z3^4*z4*z5+
    1766*z2*z3^3*z5^2- 2887*z3^4*z5^2+ 2751*z2*z3^2*z4*z5^2+ 1766*z3^3*z4*z5^2+
    1766*z2*z3^2*z5^3- 2887*z3^3*z5^3+ 2751*z2*z3*z4*z5^3+ 1766*z3^2*z4*z5^3+
    1766*z2*z3*z5^4- 2887*z3^2*z5^4- 4495*z2*z4*z5^4+ 1766*z3*z4*z5^4-
    2740*z2*z5^5- 2887*z3*z5^5- 2740*z4*z5^5- 147*z5^6- 4495*z2*z3^4*z6-
    2740*z3^5*z6- 1755*z2*z3^3*z4*z6- 4495*z3^4*z4*z6+ 2751*z2*z3^3*z5*z6+
    1766*z3^4*z5*z6+ 2887*z2*z3^2*z4*z5*z6+ 2751*z3^3*z4*z5*z6+
    2751*z2*z3^2*z5^2*z6+ 1766*z3^3*z5^2*z6+ 2887*z2*z3*z4*z5^2*z6+
    2751*z3^2*z4*z5^2*z6+ 2751*z2*z3*z5^3*z6+ 1766*z3^2*z5^3*z6-
    1755*z2*z4*z5^3*z6+ 2751*z3*z4*z5^3*z6- 4495*z2*z5^4*z6+ 1766*z3*z5^4*z6-
    4495*z4*z5^4*z6- 2740*z5^5*z6- 3588*z2*z3^3- 318*z3^4+ 2988*z2*z3^2*z4-
    3588*z3^3*z4- 600*z2*z3^2*z5- 3906*z3^3*z5+ 2355*z2*z3*z4*z5-
    600*z3^2*z4*z5- 600*z2*z3*z5^2- 3906*z3^2*z5^2+ 2988*z2*z4*z5^2-
    600*z3*z4*z5^2- 3588*z2*z5^3- 3906*z3*z5^3- 3588*z4*z5^3- 318*z5^4+
    2988*z2*z3^2*z6- 3588*z3^3*z6- 633*z2*z3*z4*z6+ 2988*z3^2*z4*z6+
    2355*z2*z3*z5*z6- 600*z3^2*z5*z6- 633*z2*z4*z5*z6+ 2355*z3*z4*z5*z6+
    2988*z2*z5^2*z6- 600*z3*z5^2*z6+ 2988*z4*z5^2*z6- 3588*z5^3*z6+ 2202*z2*z3+
    1776*z3^2+ 1068*z2*z4+ 2202*z3*z4+ 2202*z2*z5+ 3978*z3*z5+ 2202*z4*z5+
    1776*z5^2+ 1068*z2*z6+ 2202*z3*z6+ 1068*z4*z6+ 2202*z5*z6- 3538",
    "- 6*z2*z3^13+ 4*z3^14+ 8*z2*z3^12*z4- 6*z3^13*z4+ 8*z2*z3^12*z5-
    6*z3^13*z5- 10*z2*z3^11*z4*z5+ 8*z3^12*z4*z5+ 2*z2*z3^12*z6- 2*z3^13*z6-
    2*z2*z3^11*z4*z6+ 2*z3^12*z4*z6- 2*z2*z3^11*z5*z6+ 2*z3^12*z5*z6+
    2*z2*z3^10*z4*z5*z6- 2*z3^11*z4*z5*z6+ 2*z2*z3^11*z6^2- 2*z3^12*z6^2-
    2*z2*z3^10*z4*z6^2+ 2*z3^11*z4*z6^2- 2*z2*z3^10*z5*z6^2+ 2*z3^11*z5*z6^2+
    2*z2*z3^9*z4*z5*z6^2- 2*z3^10*z4*z5*z6^2+ 2*z2*z3^10*z6^3- 2*z3^11*z6^3-
    2*z2*z3^9*z4*z6^3+ 2*z3^10*z4*z6^3- 2*z2*z3^9*z5*z6^3+ 2*z3^10*z5*z6^3+
    2*z2*z3^8*z4*z5*z6^3- 2*z3^9*z4*z5*z6^3+ 2*z2*z3^9*z6^4- 2*z3^10*z6^4-
    2*z2*z3^8*z4*z6^4+ 2*z3^9*z4*z6^4- 2*z2*z3^8*z5*z6^4+ 2*z3^9*z5*z6^4+
    2*z2*z3^7*z4*z5*z6^4- 2*z3^8*z4*z5*z6^4+ 2*z2*z3^8*z6^5- 2*z3^9*z6^5-
    2*z2*z3^7*z4*z6^5+ 2*z3^8*z4*z6^5- 2*z2*z3^7*z5*z6^5+ 2*z3^8*z5*z6^5+
    2*z2*z3^6*z4*z5*z6^5- 2*z3^7*z4*z5*z6^5+ 2*z2*z3^7*z6^6- 2*z3^8*z6^6-
    2*z2*z3^6*z4*z6^6+ 2*z3^7*z4*z6^6- 2*z2*z3^6*z5*z6^6+ 2*z3^7*z5*z6^6+
    2*z2*z3^5*z4*z5*z6^6- 2*z3^6*z4*z5*z6^6+ 2*z2*z3^6*z6^7- 2*z3^7*z6^7-
    2*z2*z3^5*z4*z6^7+ 2*z3^6*z4*z6^7- 2*z2*z3^5*z5*z6^7+ 2*z3^6*z5*z6^7+
    2*z2*z3^4*z4*z5*z6^7- 2*z3^5*z4*z5*z6^7+ 2*z2*z3^5*z6^8- 2*z3^6*z6^8-
    2*z2*z3^4*z4*z6^8+ 2*z3^5*z4*z6^8- 2*z2*z3^4*z5*z6^8+ 2*z3^5*z5*z6^8+
    2*z2*z3^3*z4*z5*z6^8- 2*z3^4*z4*z5*z6^8+ 2*z2*z3^4*z6^9- 2*z3^5*z6^9-
    2*z2*z3^3*z4*z6^9+ 2*z3^4*z4*z6^9- 2*z2*z3^3*z5*z6^9+ 2*z3^4*z5*z6^9+
    2*z2*z3^2*z4*z5*z6^9- 2*z3^3*z4*z5*z6^9+ 2*z2*z3^3*z6^10- 2*z3^4*z6^10-
    2*z2*z3^2*z4*z6^10+ 2*z3^3*z4*z6^10- 2*z2*z3^2*z5*z6^10+ 2*z3^3*z5*z6^10+
    2*z2*z3*z4*z5*z6^10- 2*z3^2*z4*z5*z6^10+ 2*z2*z3^2*z6^11- 2*z3^3*z6^11-
    2*z2*z3*z4*z6^11+ 2*z3^2*z4*z6^11- 2*z2*z3*z5*z6^11+ 2*z3^2*z5*z6^11-
    10*z2*z4*z5*z6^11- 2*z3*z4*z5*z6^11+ 2*z2*z3*z6^12- 2*z3^2*z6^12+
    8*z2*z4*z6^12+ 2*z3*z4*z6^12+ 8*z2*z5*z6^12+ 2*z3*z5*z6^12+ 8*z4*z5*z6^12-
    6*z2*z6^13- 2*z3*z6^13- 6*z4*z6^13- 6*z5*z6^13+ 4*z6^14- 10*z2*z3^11+
    13*z3^12- z2*z3^10*z4- 10*z3^11*z4- z2*z3^10*z5- 10*z3^11*z5+
    22*z2*z3^9*z4*z5- z3^10*z4*z5- 11*z2*z3^10*z6+ 3*z3^11*z6+ 21*z2*z3^9*z4*z6-
    11*z3^10*z4*z6+ 21*z2*z3^9*z5*z6- 11*z3^10*z5*z6- 33*z2*z3^8*z4*z5*z6+
    21*z3^9*z4*z5*z6- 11*z2*z3^9*z6^2+ 3*z3^10*z6^2+ 21*z2*z3^8*z4*z6^2-
    11*z3^9*z4*z6^2+ 21*z2*z3^8*z5*z6^2- 11*z3^9*z5*z6^2- 33*z2*z3^7*z4*z5*z6^2+
    21*z3^8*z4*z5*z6^2- 11*z2*z3^8*z6^3+ 3*z3^9*z6^3+ 21*z2*z3^7*z4*z6^3-
    11*z3^8*z4*z6^3+ 21*z2*z3^7*z5*z6^3- 11*z3^8*z5*z6^3- 33*z2*z3^6*z4*z5*z6^3+
    21*z3^7*z4*z5*z6^3- 11*z2*z3^7*z6^4+ 3*z3^8*z6^4+ 21*z2*z3^6*z4*z6^4-
    11*z3^7*z4*z6^4+ 21*z2*z3^6*z5*z6^4- 11*z3^7*z5*z6^4- 33*z2*z3^5*z4*z5*z6^4+
    21*z3^6*z4*z5*z6^4- 11*z2*z3^6*z6^5+ 3*z3^7*z6^5+ 21*z2*z3^5*z4*z6^5-
    11*z3^6*z4*z6^5+ 21*z2*z3^5*z5*z6^5- 11*z3^6*z5*z6^5- 33*z2*z3^4*z4*z5*z6^5+
    21*z3^5*z4*z5*z6^5- 11*z2*z3^5*z6^6+ 3*z3^6*z6^6+ 21*z2*z3^4*z4*z6^6-
    11*z3^5*z4*z6^6+ 21*z2*z3^4*z5*z6^6- 11*z3^5*z5*z6^6- 33*z2*z3^3*z4*z5*z6^6+
    21*z3^4*z4*z5*z6^6- 11*z2*z3^4*z6^7+ 3*z3^5*z6^7+ 21*z2*z3^3*z4*z6^7-
    11*z3^4*z4*z6^7+ 21*z2*z3^3*z5*z6^7- 11*z3^4*z5*z6^7- 33*z2*z3^2*z4*z5*z6^7+
    21*z3^3*z4*z5*z6^7- 11*z2*z3^3*z6^8+ 3*z3^4*z6^8+ 21*z2*z3^2*z4*z6^8-
    11*z3^3*z4*z6^8+ 21*z2*z3^2*z5*z6^8- 11*z3^3*z5*z6^8- 33*z2*z3*z4*z5*z6^8+
    21*z3^2*z4*z5*z6^8- 11*z2*z3^2*z6^9+ 3*z3^3*z6^9+ 21*z2*z3*z4*z6^9-
    11*z3^2*z4*z6^9+ 21*z2*z3*z5*z6^9- 11*z3^2*z5*z6^9+ 22*z2*z4*z5*z6^9+
    21*z3*z4*z5*z6^9- 11*z2*z3*z6^10+ 3*z3^2*z6^10- z2*z4*z6^10- 11*z3*z4*z6^10-
    z2*z5*z6^10- 11*z3*z5*z6^10- z4*z5*z6^10- 10*z2*z6^11+ 3*z3*z6^11-
    10*z4*z6^11- 10*z5*z6^11+ 13*z6^12- 1121*z2*z3^9+ 12*z3^10+ 2231*z2*z3^8*z4-
    1121*z3^9*z4+ 2231*z2*z3^8*z5- 1121*z3^9*z5- 3363*z2*z3^7*z4*z5+
    2231*z3^8*z4*z5+ 1110*z2*z3^8*z6- 1109*z3^9*z6- 1132*z2*z3^7*z4*z6+
    1110*z3^8*z4*z6- 1132*z2*z3^7*z5*z6+ 1110*z3^8*z5*z6+ 1187*z2*z3^6*z4*z5*z6-
    1132*z3^7*z4*z5*z6+ 1110*z2*z3^7*z6^2- 1109*z3^8*z6^2- 1132*z2*z3^6*z4*z6^2+
    1110*z3^7*z4*z6^2- 1132*z2*z3^6*z5*z6^2+ 1110*z3^7*z5*z6^2+
    1187*z2*z3^5*z4*z5*z6^2- 1132*z3^6*z4*z5*z6^2+ 1110*z2*z3^6*z6^3-
    1109*z3^7*z6^3- 1132*z2*z3^5*z4*z6^3+ 1110*z3^6*z4*z6^3-
    1132*z2*z3^5*z5*z6^3+ 1110*z3^6*z5*z6^3+ 1187*z2*z3^4*z4*z5*z6^3-
    1132*z3^5*z4*z5*z6^3+ 1110*z2*z3^5*z6^4- 1109*z3^6*z6^4-
    1132*z2*z3^4*z4*z6^4+ 1110*z3^5*z4*z6^4- 1132*z2*z3^4*z5*z6^4+
    1110*z3^5*z5*z6^4+ 1187*z2*z3^3*z4*z5*z6^4- 1132*z3^4*z4*z5*z6^4+
    1110*z2*z3^4*z6^5- 1109*z3^5*z6^5- 1132*z2*z3^3*z4*z6^5+ 1110*z3^4*z4*z6^5-
    1132*z2*z3^3*z5*z6^5+ 1110*z3^4*z5*z6^5+ 1187*z2*z3^2*z4*z5*z6^5-
    1132*z3^3*z4*z5*z6^5+ 1110*z2*z3^3*z6^6- 1109*z3^4*z6^6-
    1132*z2*z3^2*z4*z6^6+ 1110*z3^3*z4*z6^6- 1132*z2*z3^2*z5*z6^6+
    1110*z3^3*z5*z6^6+ 1187*z2*z3*z4*z5*z6^6- 1132*z3^2*z4*z5*z6^6+
    1110*z2*z3^2*z6^7- 1109*z3^3*z6^7- 1132*z2*z3*z4*z6^7+ 1110*z3^2*z4*z6^7-
    1132*z2*z3*z5*z6^7+ 1110*z3^2*z5*z6^7- 3363*z2*z4*z5*z6^7-
    1132*z3*z4*z5*z6^7+ 1110*z2*z3*z6^8- 1109*z3^2*z6^8+ 2231*z2*z4*z6^8+
    1110*z3*z4*z6^8+ 2231*z2*z5*z6^8+ 1110*z3*z5*z6^8+ 2231*z4*z5*z6^8-
    1121*z2*z6^9- 1109*z3*z6^9- 1121*z4*z6^9- 1121*z5*z6^9+ 12*z6^10-
    3363*z2*z3^7+ 3374*z3^8+ 1121*z2*z3^6*z4- 3363*z3^7*z4+ 1121*z2*z3^6*z5-
    3363*z3^7*z5+ 4484*z2*z3^5*z4*z5+ 1121*z3^6*z4*z5- 2242*z2*z3^6*z6+
    11*z3^7*z6- 3396*z2*z3^5*z4*z6- 2242*z3^6*z4*z6- 3396*z2*z3^5*z5*z6-
    2242*z3^6*z5*z6- 1154*z2*z3^4*z4*z5*z6- 3396*z3^5*z4*z5*z6-
    2242*z2*z3^5*z6^2+ 11*z3^6*z6^2- 3396*z2*z3^4*z4*z6^2- 2242*z3^5*z4*z6^2-
    3396*z2*z3^4*z5*z6^2- 2242*z3^5*z5*z6^2- 1154*z2*z3^3*z4*z5*z6^2-
    3396*z3^4*z4*z5*z6^2- 2242*z2*z3^4*z6^3+ 11*z3^5*z6^3- 3396*z2*z3^3*z4*z6^3-
    2242*z3^4*z4*z6^3- 3396*z2*z3^3*z5*z6^3- 2242*z3^4*z5*z6^3-
    1154*z2*z3^2*z4*z5*z6^3- 3396*z3^3*z4*z5*z6^3- 2242*z2*z3^3*z6^4+
    11*z3^4*z6^4- 3396*z2*z3^2*z4*z6^4- 2242*z3^3*z4*z6^4- 3396*z2*z3^2*z5*z6^4-
    2242*z3^3*z5*z6^4- 1154*z2*z3*z4*z5*z6^4- 3396*z3^2*z4*z5*z6^4-
    2242*z2*z3^2*z6^5+ 11*z3^3*z6^5- 3396*z2*z3*z4*z6^5- 2242*z3^2*z4*z6^5-
    3396*z2*z3*z5*z6^5- 2242*z3^2*z5*z6^5+ 4484*z2*z4*z5*z6^5-
    3396*z3*z4*z5*z6^5- 2242*z2*z3*z6^6+ 11*z3^2*z6^6+ 1121*z2*z4*z6^6-
    2242*z3*z4*z6^6+ 1121*z2*z5*z6^6- 2242*z3*z5*z6^6+ 1121*z4*z5*z6^6-
    3363*z2*z6^7+ 11*z3*z6^7- 3363*z4*z6^7- 3363*z5*z6^7+ 3374*z6^8-
    2740*z2*z3^5- 147*z3^6- 4495*z2*z3^4*z4- 2740*z3^5*z4- 4495*z2*z3^4*z5-
    2740*z3^5*z5- 1755*z2*z3^3*z4*z5- 4495*z3^4*z4*z5+ 1766*z2*z3^4*z6-
    2887*z3^5*z6+ 2751*z2*z3^3*z4*z6+ 1766*z3^4*z4*z6+ 2751*z2*z3^3*z5*z6+
    1766*z3^4*z5*z6+ 2887*z2*z3^2*z4*z5*z6+ 2751*z3^3*z4*z5*z6+
    1766*z2*z3^3*z6^2- 2887*z3^4*z6^2+ 2751*z2*z3^2*z4*z6^2+ 1766*z3^3*z4*z6^2+
    2751*z2*z3^2*z5*z6^2+ 1766*z3^3*z5*z6^2+ 2887*z2*z3*z4*z5*z6^2+
    2751*z3^2*z4*z5*z6^2+ 1766*z2*z3^2*z6^3- 2887*z3^3*z6^3+ 2751*z2*z3*z4*z6^3+
    1766*z3^2*z4*z6^3+ 2751*z2*z3*z5*z6^3+ 1766*z3^2*z5*z6^3-
    1755*z2*z4*z5*z6^3+ 2751*z3*z4*z5*z6^3+ 1766*z2*z3*z6^4- 2887*z3^2*z6^4-
    4495*z2*z4*z6^4+ 1766*z3*z4*z6^4- 4495*z2*z5*z6^4+ 1766*z3*z5*z6^4-
    4495*z4*z5*z6^4- 2740*z2*z6^5- 2887*z3*z6^5- 2740*z4*z6^5- 2740*z5*z6^5-
    147*z6^6- 3588*z2*z3^3- 318*z3^4+ 2988*z2*z3^2*z4- 3588*z3^3*z4+
    2988*z2*z3^2*z5- 3588*z3^3*z5- 633*z2*z3*z4*z5+ 2988*z3^2*z4*z5-
    600*z2*z3^2*z6- 3906*z3^3*z6+ 2355*z2*z3*z4*z6- 600*z3^2*z4*z6+
    2355*z2*z3*z5*z6- 600*z3^2*z5*z6- 633*z2*z4*z5*z6+ 2355*z3*z4*z5*z6-
    600*z2*z3*z6^2- 3906*z3^2*z6^2+ 2988*z2*z4*z6^2- 600*z3*z4*z6^2+
    2988*z2*z5*z6^2- 600*z3*z5*z6^2+ 2988*z4*z5*z6^2- 3588*z2*z6^3-
    3906*z3*z6^3- 3588*z4*z6^3- 3588*z5*z6^3- 318*z6^4+ 2202*z2*z3+ 1776*z3^2+
    1068*z2*z4+ 2202*z3*z4+ 1068*z2*z5+ 2202*z3*z5+ 1068*z4*z5+ 2202*z2*z6+
    3978*z3*z6+ 2202*z4*z6+ 2202*z5*z6+ 1776*z6^2- 3538",
    "8*z2*z3*z4^12- 6*z2*z4^13- 6*z3*z4^13+ 4*z4^14- 2*z2*z3*z4^11*z5+
    2*z2*z4^12*z5+ 2*z3*z4^12*z5- 2*z4^13*z5- 2*z2*z3*z4^10*z5^2+
    2*z2*z4^11*z5^2+ 2*z3*z4^11*z5^2- 2*z4^12*z5^2- 2*z2*z3*z4^9*z5^3+
    2*z2*z4^10*z5^3+ 2*z3*z4^10*z5^3- 2*z4^11*z5^3- 2*z2*z3*z4^8*z5^4+
    2*z2*z4^9*z5^4+ 2*z3*z4^9*z5^4- 2*z4^10*z5^4- 2*z2*z3*z4^7*z5^5+
    2*z2*z4^8*z5^5+ 2*z3*z4^8*z5^5- 2*z4^9*z5^5- 2*z2*z3*z4^6*z5^6+
    2*z2*z4^7*z5^6+ 2*z3*z4^7*z5^6- 2*z4^8*z5^6- 2*z2*z3*z4^5*z5^7+
    2*z2*z4^6*z5^7+ 2*z3*z4^6*z5^7- 2*z4^7*z5^7- 2*z2*z3*z4^4*z5^8+
    2*z2*z4^5*z5^8+ 2*z3*z4^5*z5^8- 2*z4^6*z5^8- 2*z2*z3*z4^3*z5^9+
    2*z2*z4^4*z5^9+ 2*z3*z4^4*z5^9- 2*z4^5*z5^9- 2*z2*z3*z4^2*z5^10+
    2*z2*z4^3*z5^10+ 2*z3*z4^3*z5^10- 2*z4^4*z5^10- 2*z2*z3*z4*z5^11+
    2*z2*z4^2*z5^11+ 2*z3*z4^2*z5^11- 2*z4^3*z5^11+ 8*z2*z3*z5^12+
    2*z2*z4*z5^12+ 2*z3*z4*z5^12- 2*z4^2*z5^12- 6*z2*z5^13- 6*z3*z5^13-
    2*z4*z5^13+ 4*z5^14- 10*z2*z3*z4^11*z6+ 8*z2*z4^12*z6+ 8*z3*z4^12*z6-
    6*z4^13*z6+ 2*z2*z3*z4^10*z5*z6- 2*z2*z4^11*z5*z6- 2*z3*z4^11*z5*z6+
    2*z4^12*z5*z6+ 2*z2*z3*z4^9*z5^2*z6- 2*z2*z4^10*z5^2*z6- 2*z3*z4^10*z5^2*z6+
    2*z4^11*z5^2*z6+ 2*z2*z3*z4^8*z5^3*z6- 2*z2*z4^9*z5^3*z6- 2*z3*z4^9*z5^3*z6+
    2*z4^10*z5^3*z6+ 2*z2*z3*z4^7*z5^4*z6- 2*z2*z4^8*z5^4*z6- 2*z3*z4^8*z5^4*z6+
    2*z4^9*z5^4*z6+ 2*z2*z3*z4^6*z5^5*z6- 2*z2*z4^7*z5^5*z6- 2*z3*z4^7*z5^5*z6+
    2*z4^8*z5^5*z6+ 2*z2*z3*z4^5*z5^6*z6- 2*z2*z4^6*z5^6*z6- 2*z3*z4^6*z5^6*z6+
    2*z4^7*z5^6*z6+ 2*z2*z3*z4^4*z5^7*z6- 2*z2*z4^5*z5^7*z6- 2*z3*z4^5*z5^7*z6+
    2*z4^6*z5^7*z6+ 2*z2*z3*z4^3*z5^8*z6- 2*z2*z4^4*z5^8*z6- 2*z3*z4^4*z5^8*z6+
    2*z4^5*z5^8*z6+ 2*z2*z3*z4^2*z5^9*z6- 2*z2*z4^3*z5^9*z6- 2*z3*z4^3*z5^9*z6+
    2*z4^4*z5^9*z6+ 2*z2*z3*z4*z5^10*z6- 2*z2*z4^2*z5^10*z6- 2*z3*z4^2*z5^10*z6+
    2*z4^3*z5^10*z6- 10*z2*z3*z5^11*z6- 2*z2*z4*z5^11*z6- 2*z3*z4*z5^11*z6+
    2*z4^2*z5^11*z6+ 8*z2*z5^12*z6+ 8*z3*z5^12*z6+ 2*z4*z5^12*z6- 6*z5^13*z6-
    z2*z3*z4^10- 10*z2*z4^11- 10*z3*z4^11+ 13*z4^12+ 21*z2*z3*z4^9*z5-
    11*z2*z4^10*z5- 11*z3*z4^10*z5+ 3*z4^11*z5+ 21*z2*z3*z4^8*z5^2-
    11*z2*z4^9*z5^2- 11*z3*z4^9*z5^2+ 3*z4^10*z5^2+ 21*z2*z3*z4^7*z5^3-
    11*z2*z4^8*z5^3- 11*z3*z4^8*z5^3+ 3*z4^9*z5^3+ 21*z2*z3*z4^6*z5^4-
    11*z2*z4^7*z5^4- 11*z3*z4^7*z5^4+ 3*z4^8*z5^4+ 21*z2*z3*z4^5*z5^5-
    11*z2*z4^6*z5^5- 11*z3*z4^6*z5^5+ 3*z4^7*z5^5+ 21*z2*z3*z4^4*z5^6-
    11*z2*z4^5*z5^6- 11*z3*z4^5*z5^6+ 3*z4^6*z5^6+ 21*z2*z3*z4^3*z5^7-
    11*z2*z4^4*z5^7- 11*z3*z4^4*z5^7+ 3*z4^5*z5^7+ 21*z2*z3*z4^2*z5^8-
    11*z2*z4^3*z5^8- 11*z3*z4^3*z5^8+ 3*z4^4*z5^8+ 21*z2*z3*z4*z5^9-
    11*z2*z4^2*z5^9- 11*z3*z4^2*z5^9+ 3*z4^3*z5^9- z2*z3*z5^10- 11*z2*z4*z5^10-
    11*z3*z4*z5^10+ 3*z4^2*z5^10- 10*z2*z5^11- 10*z3*z5^11+ 3*z4*z5^11+
    13*z5^12+ 22*z2*z3*z4^9*z6- z2*z4^10*z6- z3*z4^10*z6- 10*z4^11*z6-
    33*z2*z3*z4^8*z5*z6+ 21*z2*z4^9*z5*z6+ 21*z3*z4^9*z5*z6- 11*z4^10*z5*z6-
    33*z2*z3*z4^7*z5^2*z6+ 21*z2*z4^8*z5^2*z6+ 21*z3*z4^8*z5^2*z6-
    11*z4^9*z5^2*z6- 33*z2*z3*z4^6*z5^3*z6+ 21*z2*z4^7*z5^3*z6+
    21*z3*z4^7*z5^3*z6- 11*z4^8*z5^3*z6- 33*z2*z3*z4^5*z5^4*z6+
    21*z2*z4^6*z5^4*z6+ 21*z3*z4^6*z5^4*z6- 11*z4^7*z5^4*z6-
    33*z2*z3*z4^4*z5^5*z6+ 21*z2*z4^5*z5^5*z6+ 21*z3*z4^5*z5^5*z6-
    11*z4^6*z5^5*z6- 33*z2*z3*z4^3*z5^6*z6+ 21*z2*z4^4*z5^6*z6+
    21*z3*z4^4*z5^6*z6- 11*z4^5*z5^6*z6- 33*z2*z3*z4^2*z5^7*z6+
    21*z2*z4^3*z5^7*z6+ 21*z3*z4^3*z5^7*z6- 11*z4^4*z5^7*z6-
    33*z2*z3*z4*z5^8*z6+ 21*z2*z4^2*z5^8*z6+ 21*z3*z4^2*z5^8*z6-
    11*z4^3*z5^8*z6+ 22*z2*z3*z5^9*z6+ 21*z2*z4*z5^9*z6+ 21*z3*z4*z5^9*z6-
    11*z4^2*z5^9*z6- z2*z5^10*z6- z3*z5^10*z6- 11*z4*z5^10*z6- 10*z5^11*z6+
    2231*z2*z3*z4^8- 1121*z2*z4^9- 1121*z3*z4^9+ 12*z4^10- 1132*z2*z3*z4^7*z5+
    1110*z2*z4^8*z5+ 1110*z3*z4^8*z5- 1109*z4^9*z5- 1132*z2*z3*z4^6*z5^2+
    1110*z2*z4^7*z5^2+ 1110*z3*z4^7*z5^2- 1109*z4^8*z5^2- 1132*z2*z3*z4^5*z5^3+
    1110*z2*z4^6*z5^3+ 1110*z3*z4^6*z5^3- 1109*z4^7*z5^3- 1132*z2*z3*z4^4*z5^4+
    1110*z2*z4^5*z5^4+ 1110*z3*z4^5*z5^4- 1109*z4^6*z5^4- 1132*z2*z3*z4^3*z5^5+
    1110*z2*z4^4*z5^5+ 1110*z3*z4^4*z5^5- 1109*z4^5*z5^5- 1132*z2*z3*z4^2*z5^6+
    1110*z2*z4^3*z5^6+ 1110*z3*z4^3*z5^6- 1109*z4^4*z5^6- 1132*z2*z3*z4*z5^7+
    1110*z2*z4^2*z5^7+ 1110*z3*z4^2*z5^7- 1109*z4^3*z5^7+ 2231*z2*z3*z5^8+
    1110*z2*z4*z5^8+ 1110*z3*z4*z5^8- 1109*z4^2*z5^8- 1121*z2*z5^9-
    1121*z3*z5^9- 1109*z4*z5^9+ 12*z5^10- 3363*z2*z3*z4^7*z6+ 2231*z2*z4^8*z6+
    2231*z3*z4^8*z6- 1121*z4^9*z6+ 1187*z2*z3*z4^6*z5*z6- 1132*z2*z4^7*z5*z6-
    1132*z3*z4^7*z5*z6+ 1110*z4^8*z5*z6+ 1187*z2*z3*z4^5*z5^2*z6-
    1132*z2*z4^6*z5^2*z6- 1132*z3*z4^6*z5^2*z6+ 1110*z4^7*z5^2*z6+
    1187*z2*z3*z4^4*z5^3*z6- 1132*z2*z4^5*z5^3*z6- 1132*z3*z4^5*z5^3*z6+
    1110*z4^6*z5^3*z6+ 1187*z2*z3*z4^3*z5^4*z6- 1132*z2*z4^4*z5^4*z6-
    1132*z3*z4^4*z5^4*z6+ 1110*z4^5*z5^4*z6+ 1187*z2*z3*z4^2*z5^5*z6-
    1132*z2*z4^3*z5^5*z6- 1132*z3*z4^3*z5^5*z6+ 1110*z4^4*z5^5*z6+
    1187*z2*z3*z4*z5^6*z6- 1132*z2*z4^2*z5^6*z6- 1132*z3*z4^2*z5^6*z6+
    1110*z4^3*z5^6*z6- 3363*z2*z3*z5^7*z6- 1132*z2*z4*z5^7*z6-
    1132*z3*z4*z5^7*z6+ 1110*z4^2*z5^7*z6+ 2231*z2*z5^8*z6+ 2231*z3*z5^8*z6+
    1110*z4*z5^8*z6- 1121*z5^9*z6+ 1121*z2*z3*z4^6- 3363*z2*z4^7- 3363*z3*z4^7+
    3374*z4^8- 3396*z2*z3*z4^5*z5- 2242*z2*z4^6*z5- 2242*z3*z4^6*z5+ 11*z4^7*z5-
    3396*z2*z3*z4^4*z5^2- 2242*z2*z4^5*z5^2- 2242*z3*z4^5*z5^2+ 11*z4^6*z5^2-
    3396*z2*z3*z4^3*z5^3- 2242*z2*z4^4*z5^3- 2242*z3*z4^4*z5^3+ 11*z4^5*z5^3-
    3396*z2*z3*z4^2*z5^4- 2242*z2*z4^3*z5^4- 2242*z3*z4^3*z5^4+ 11*z4^4*z5^4-
    3396*z2*z3*z4*z5^5- 2242*z2*z4^2*z5^5- 2242*z3*z4^2*z5^5+ 11*z4^3*z5^5+
    1121*z2*z3*z5^6- 2242*z2*z4*z5^6- 2242*z3*z4*z5^6+ 11*z4^2*z5^6-
    3363*z2*z5^7- 3363*z3*z5^7+ 11*z4*z5^7+ 3374*z5^8+ 4484*z2*z3*z4^5*z6+
    1121*z2*z4^6*z6+ 1121*z3*z4^6*z6- 3363*z4^7*z6- 1154*z2*z3*z4^4*z5*z6-
    3396*z2*z4^5*z5*z6- 3396*z3*z4^5*z5*z6- 2242*z4^6*z5*z6-
    1154*z2*z3*z4^3*z5^2*z6- 3396*z2*z4^4*z5^2*z6- 3396*z3*z4^4*z5^2*z6-
    2242*z4^5*z5^2*z6- 1154*z2*z3*z4^2*z5^3*z6- 3396*z2*z4^3*z5^3*z6-
    3396*z3*z4^3*z5^3*z6- 2242*z4^4*z5^3*z6- 1154*z2*z3*z4*z5^4*z6-
    3396*z2*z4^2*z5^4*z6- 3396*z3*z4^2*z5^4*z6- 2242*z4^3*z5^4*z6+
    4484*z2*z3*z5^5*z6- 3396*z2*z4*z5^5*z6- 3396*z3*z4*z5^5*z6-
    2242*z4^2*z5^5*z6+ 1121*z2*z5^6*z6+ 1121*z3*z5^6*z6- 2242*z4*z5^6*z6-
    3363*z5^7*z6- 4495*z2*z3*z4^4- 2740*z2*z4^5- 2740*z3*z4^5- 147*z4^6+
    2751*z2*z3*z4^3*z5+ 1766*z2*z4^4*z5+ 1766*z3*z4^4*z5- 2887*z4^5*z5+
    2751*z2*z3*z4^2*z5^2+ 1766*z2*z4^3*z5^2+ 1766*z3*z4^3*z5^2- 2887*z4^4*z5^2+
    2751*z2*z3*z4*z5^3+ 1766*z2*z4^2*z5^3+ 1766*z3*z4^2*z5^3- 2887*z4^3*z5^3-
    4495*z2*z3*z5^4+ 1766*z2*z4*z5^4+ 1766*z3*z4*z5^4- 2887*z4^2*z5^4-
    2740*z2*z5^5- 2740*z3*z5^5- 2887*z4*z5^5- 147*z5^6- 1755*z2*z3*z4^3*z6-
    4495*z2*z4^4*z6- 4495*z3*z4^4*z6- 2740*z4^5*z6+ 2887*z2*z3*z4^2*z5*z6+
    2751*z2*z4^3*z5*z6+ 2751*z3*z4^3*z5*z6+ 1766*z4^4*z5*z6+
    2887*z2*z3*z4*z5^2*z6+ 2751*z2*z4^2*z5^2*z6+ 2751*z3*z4^2*z5^2*z6+
    1766*z4^3*z5^2*z6- 1755*z2*z3*z5^3*z6+ 2751*z2*z4*z5^3*z6+
    2751*z3*z4*z5^3*z6+ 1766*z4^2*z5^3*z6- 4495*z2*z5^4*z6- 4495*z3*z5^4*z6+
    1766*z4*z5^4*z6- 2740*z5^5*z6+ 2988*z2*z3*z4^2- 3588*z2*z4^3- 3588*z3*z4^3-
    318*z4^4+ 2355*z2*z3*z4*z5- 600*z2*z4^2*z5- 600*z3*z4^2*z5- 3906*z4^3*z5+
    2988*z2*z3*z5^2- 600*z2*z4*z5^2- 600*z3*z4*z5^2- 3906*z4^2*z5^2-
    3588*z2*z5^3- 3588*z3*z5^3- 3906*z4*z5^3- 318*z5^4- 633*z2*z3*z4*z6+
    2988*z2*z4^2*z6+ 2988*z3*z4^2*z6- 3588*z4^3*z6- 633*z2*z3*z5*z6+
    2355*z2*z4*z5*z6+ 2355*z3*z4*z5*z6- 600*z4^2*z5*z6+ 2988*z2*z5^2*z6+
    2988*z3*z5^2*z6- 600*z4*z5^2*z6- 3588*z5^3*z6+ 1068*z2*z3+ 2202*z2*z4+
    2202*z3*z4+ 1776*z4^2+ 2202*z2*z5+ 2202*z3*z5+ 3978*z4*z5+ 1776*z5^2+
    1068*z2*z6+ 1068*z3*z6+ 2202*z4*z6+ 2202*z5*z6- 3538",
    "8*z2*z3*z4^12- 6*z2*z4^13- 6*z3*z4^13+ 4*z4^14- 10*z2*z3*z4^11*z5+
    8*z2*z4^12*z5+ 8*z3*z4^12*z5- 6*z4^13*z5- 2*z2*z3*z4^11*z6+ 2*z2*z4^12*z6+
    2*z3*z4^12*z6- 2*z4^13*z6+ 2*z2*z3*z4^10*z5*z6- 2*z2*z4^11*z5*z6-
    2*z3*z4^11*z5*z6+ 2*z4^12*z5*z6- 2*z2*z3*z4^10*z6^2+ 2*z2*z4^11*z6^2+
    2*z3*z4^11*z6^2- 2*z4^12*z6^2+ 2*z2*z3*z4^9*z5*z6^2- 2*z2*z4^10*z5*z6^2-
    2*z3*z4^10*z5*z6^2+ 2*z4^11*z5*z6^2- 2*z2*z3*z4^9*z6^3+ 2*z2*z4^10*z6^3+
    2*z3*z4^10*z6^3- 2*z4^11*z6^3+ 2*z2*z3*z4^8*z5*z6^3- 2*z2*z4^9*z5*z6^3-
    2*z3*z4^9*z5*z6^3+ 2*z4^10*z5*z6^3- 2*z2*z3*z4^8*z6^4+ 2*z2*z4^9*z6^4+
    2*z3*z4^9*z6^4- 2*z4^10*z6^4+ 2*z2*z3*z4^7*z5*z6^4- 2*z2*z4^8*z5*z6^4-
    2*z3*z4^8*z5*z6^4+ 2*z4^9*z5*z6^4- 2*z2*z3*z4^7*z6^5+ 2*z2*z4^8*z6^5+
    2*z3*z4^8*z6^5- 2*z4^9*z6^5+ 2*z2*z3*z4^6*z5*z6^5- 2*z2*z4^7*z5*z6^5-
    2*z3*z4^7*z5*z6^5+ 2*z4^8*z5*z6^5- 2*z2*z3*z4^6*z6^6+ 2*z2*z4^7*z6^6+
    2*z3*z4^7*z6^6- 2*z4^8*z6^6+ 2*z2*z3*z4^5*z5*z6^6- 2*z2*z4^6*z5*z6^6-
    2*z3*z4^6*z5*z6^6+ 2*z4^7*z5*z6^6- 2*z2*z3*z4^5*z6^7+ 2*z2*z4^6*z6^7+
    2*z3*z4^6*z6^7- 2*z4^7*z6^7+ 2*z2*z3*z4^4*z5*z6^7- 2*z2*z4^5*z5*z6^7-
    2*z3*z4^5*z5*z6^7+ 2*z4^6*z5*z6^7- 2*z2*z3*z4^4*z6^8+ 2*z2*z4^5*z6^8+
    2*z3*z4^5*z6^8- 2*z4^6*z6^8+ 2*z2*z3*z4^3*z5*z6^8- 2*z2*z4^4*z5*z6^8-
    2*z3*z4^4*z5*z6^8+ 2*z4^5*z5*z6^8- 2*z2*z3*z4^3*z6^9+ 2*z2*z4^4*z6^9+
    2*z3*z4^4*z6^9- 2*z4^5*z6^9+ 2*z2*z3*z4^2*z5*z6^9- 2*z2*z4^3*z5*z6^9-
    2*z3*z4^3*z5*z6^9+ 2*z4^4*z5*z6^9- 2*z2*z3*z4^2*z6^10+ 2*z2*z4^3*z6^10+
    2*z3*z4^3*z6^10- 2*z4^4*z6^10+ 2*z2*z3*z4*z5*z6^10- 2*z2*z4^2*z5*z6^10-
    2*z3*z4^2*z5*z6^10+ 2*z4^3*z5*z6^10- 2*z2*z3*z4*z6^11+ 2*z2*z4^2*z6^11+
    2*z3*z4^2*z6^11- 2*z4^3*z6^11- 10*z2*z3*z5*z6^11- 2*z2*z4*z5*z6^11-
    2*z3*z4*z5*z6^11+ 2*z4^2*z5*z6^11+ 8*z2*z3*z6^12+ 2*z2*z4*z6^12+
    2*z3*z4*z6^12- 2*z4^2*z6^12+ 8*z2*z5*z6^12+ 8*z3*z5*z6^12+ 2*z4*z5*z6^12-
    6*z2*z6^13- 6*z3*z6^13- 2*z4*z6^13- 6*z5*z6^13+ 4*z6^14- z2*z3*z4^10-
    10*z2*z4^11- 10*z3*z4^11+ 13*z4^12+ 22*z2*z3*z4^9*z5- z2*z4^10*z5-
    z3*z4^10*z5- 10*z4^11*z5+ 21*z2*z3*z4^9*z6- 11*z2*z4^10*z6- 11*z3*z4^10*z6+
    3*z4^11*z6- 33*z2*z3*z4^8*z5*z6+ 21*z2*z4^9*z5*z6+ 21*z3*z4^9*z5*z6-
    11*z4^10*z5*z6+ 21*z2*z3*z4^8*z6^2- 11*z2*z4^9*z6^2- 11*z3*z4^9*z6^2+
    3*z4^10*z6^2- 33*z2*z3*z4^7*z5*z6^2+ 21*z2*z4^8*z5*z6^2+ 21*z3*z4^8*z5*z6^2-
    11*z4^9*z5*z6^2+ 21*z2*z3*z4^7*z6^3- 11*z2*z4^8*z6^3- 11*z3*z4^8*z6^3+
    3*z4^9*z6^3- 33*z2*z3*z4^6*z5*z6^3+ 21*z2*z4^7*z5*z6^3+ 21*z3*z4^7*z5*z6^3-
    11*z4^8*z5*z6^3+ 21*z2*z3*z4^6*z6^4- 11*z2*z4^7*z6^4- 11*z3*z4^7*z6^4+
    3*z4^8*z6^4- 33*z2*z3*z4^5*z5*z6^4+ 21*z2*z4^6*z5*z6^4+ 21*z3*z4^6*z5*z6^4-
    11*z4^7*z5*z6^4+ 21*z2*z3*z4^5*z6^5- 11*z2*z4^6*z6^5- 11*z3*z4^6*z6^5+
    3*z4^7*z6^5- 33*z2*z3*z4^4*z5*z6^5+ 21*z2*z4^5*z5*z6^5+ 21*z3*z4^5*z5*z6^5-
    11*z4^6*z5*z6^5+ 21*z2*z3*z4^4*z6^6- 11*z2*z4^5*z6^6- 11*z3*z4^5*z6^6+
    3*z4^6*z6^6- 33*z2*z3*z4^3*z5*z6^6+ 21*z2*z4^4*z5*z6^6+ 21*z3*z4^4*z5*z6^6-
    11*z4^5*z5*z6^6+ 21*z2*z3*z4^3*z6^7- 11*z2*z4^4*z6^7- 11*z3*z4^4*z6^7+
    3*z4^5*z6^7- 33*z2*z3*z4^2*z5*z6^7+ 21*z2*z4^3*z5*z6^7+ 21*z3*z4^3*z5*z6^7-
    11*z4^4*z5*z6^7+ 21*z2*z3*z4^2*z6^8- 11*z2*z4^3*z6^8- 11*z3*z4^3*z6^8+
    3*z4^4*z6^8- 33*z2*z3*z4*z5*z6^8+ 21*z2*z4^2*z5*z6^8+ 21*z3*z4^2*z5*z6^8-
    11*z4^3*z5*z6^8+ 21*z2*z3*z4*z6^9- 11*z2*z4^2*z6^9- 11*z3*z4^2*z6^9+
    3*z4^3*z6^9+ 22*z2*z3*z5*z6^9+ 21*z2*z4*z5*z6^9+ 21*z3*z4*z5*z6^9-
    11*z4^2*z5*z6^9- z2*z3*z6^10- 11*z2*z4*z6^10- 11*z3*z4*z6^10+ 3*z4^2*z6^10-
    z2*z5*z6^10- z3*z5*z6^10- 11*z4*z5*z6^10- 10*z2*z6^11- 10*z3*z6^11+
    3*z4*z6^11- 10*z5*z6^11+ 13*z6^12+ 2231*z2*z3*z4^8- 1121*z2*z4^9-
    1121*z3*z4^9+ 12*z4^10- 3363*z2*z3*z4^7*z5+ 2231*z2*z4^8*z5+
    2231*z3*z4^8*z5- 1121*z4^9*z5- 1132*z2*z3*z4^7*z6+ 1110*z2*z4^8*z6+
    1110*z3*z4^8*z6- 1109*z4^9*z6+ 1187*z2*z3*z4^6*z5*z6- 1132*z2*z4^7*z5*z6-
    1132*z3*z4^7*z5*z6+ 1110*z4^8*z5*z6- 1132*z2*z3*z4^6*z6^2+
    1110*z2*z4^7*z6^2+ 1110*z3*z4^7*z6^2- 1109*z4^8*z6^2+
    1187*z2*z3*z4^5*z5*z6^2- 1132*z2*z4^6*z5*z6^2- 1132*z3*z4^6*z5*z6^2+
    1110*z4^7*z5*z6^2- 1132*z2*z3*z4^5*z6^3+ 1110*z2*z4^6*z6^3+
    1110*z3*z4^6*z6^3- 1109*z4^7*z6^3+ 1187*z2*z3*z4^4*z5*z6^3-
    1132*z2*z4^5*z5*z6^3- 1132*z3*z4^5*z5*z6^3+ 1110*z4^6*z5*z6^3-
    1132*z2*z3*z4^4*z6^4+ 1110*z2*z4^5*z6^4+ 1110*z3*z4^5*z6^4- 1109*z4^6*z6^4+
    1187*z2*z3*z4^3*z5*z6^4- 1132*z2*z4^4*z5*z6^4- 1132*z3*z4^4*z5*z6^4+
    1110*z4^5*z5*z6^4- 1132*z2*z3*z4^3*z6^5+ 1110*z2*z4^4*z6^5+
    1110*z3*z4^4*z6^5- 1109*z4^5*z6^5+ 1187*z2*z3*z4^2*z5*z6^5-
    1132*z2*z4^3*z5*z6^5- 1132*z3*z4^3*z5*z6^5+ 1110*z4^4*z5*z6^5-
    1132*z2*z3*z4^2*z6^6+ 1110*z2*z4^3*z6^6+ 1110*z3*z4^3*z6^6- 1109*z4^4*z6^6+
    1187*z2*z3*z4*z5*z6^6- 1132*z2*z4^2*z5*z6^6- 1132*z3*z4^2*z5*z6^6+
    1110*z4^3*z5*z6^6- 1132*z2*z3*z4*z6^7+ 1110*z2*z4^2*z6^7+ 1110*z3*z4^2*z6^7-
    1109*z4^3*z6^7- 3363*z2*z3*z5*z6^7- 1132*z2*z4*z5*z6^7- 1132*z3*z4*z5*z6^7+
    1110*z4^2*z5*z6^7+ 2231*z2*z3*z6^8+ 1110*z2*z4*z6^8+ 1110*z3*z4*z6^8-
    1109*z4^2*z6^8+ 2231*z2*z5*z6^8+ 2231*z3*z5*z6^8+ 1110*z4*z5*z6^8-
    1121*z2*z6^9- 1121*z3*z6^9- 1109*z4*z6^9- 1121*z5*z6^9+ 12*z6^10+
    1121*z2*z3*z4^6- 3363*z2*z4^7- 3363*z3*z4^7+ 3374*z4^8+ 4484*z2*z3*z4^5*z5+
    1121*z2*z4^6*z5+ 1121*z3*z4^6*z5- 3363*z4^7*z5- 3396*z2*z3*z4^5*z6-
    2242*z2*z4^6*z6- 2242*z3*z4^6*z6+ 11*z4^7*z6- 1154*z2*z3*z4^4*z5*z6-
    3396*z2*z4^5*z5*z6- 3396*z3*z4^5*z5*z6- 2242*z4^6*z5*z6-
    3396*z2*z3*z4^4*z6^2- 2242*z2*z4^5*z6^2- 2242*z3*z4^5*z6^2+ 11*z4^6*z6^2-
    1154*z2*z3*z4^3*z5*z6^2- 3396*z2*z4^4*z5*z6^2- 3396*z3*z4^4*z5*z6^2-
    2242*z4^5*z5*z6^2- 3396*z2*z3*z4^3*z6^3- 2242*z2*z4^4*z6^3-
    2242*z3*z4^4*z6^3+ 11*z4^5*z6^3- 1154*z2*z3*z4^2*z5*z6^3-
    3396*z2*z4^3*z5*z6^3- 3396*z3*z4^3*z5*z6^3- 2242*z4^4*z5*z6^3-
    3396*z2*z3*z4^2*z6^4- 2242*z2*z4^3*z6^4- 2242*z3*z4^3*z6^4+ 11*z4^4*z6^4-
    1154*z2*z3*z4*z5*z6^4- 3396*z2*z4^2*z5*z6^4- 3396*z3*z4^2*z5*z6^4-
    2242*z4^3*z5*z6^4- 3396*z2*z3*z4*z6^5- 2242*z2*z4^2*z6^5- 2242*z3*z4^2*z6^5+
    11*z4^3*z6^5+ 4484*z2*z3*z5*z6^5- 3396*z2*z4*z5*z6^5- 3396*z3*z4*z5*z6^5-
    2242*z4^2*z5*z6^5+ 1121*z2*z3*z6^6- 2242*z2*z4*z6^6- 2242*z3*z4*z6^6+
    11*z4^2*z6^6+ 1121*z2*z5*z6^6+ 1121*z3*z5*z6^6- 2242*z4*z5*z6^6-
    3363*z2*z6^7- 3363*z3*z6^7+ 11*z4*z6^7- 3363*z5*z6^7+ 3374*z6^8-
    4495*z2*z3*z4^4- 2740*z2*z4^5- 2740*z3*z4^5- 147*z4^6- 1755*z2*z3*z4^3*z5-
    4495*z2*z4^4*z5- 4495*z3*z4^4*z5- 2740*z4^5*z5+ 2751*z2*z3*z4^3*z6+
    1766*z2*z4^4*z6+ 1766*z3*z4^4*z6- 2887*z4^5*z6+ 2887*z2*z3*z4^2*z5*z6+
    2751*z2*z4^3*z5*z6+ 2751*z3*z4^3*z5*z6+ 1766*z4^4*z5*z6+
    2751*z2*z3*z4^2*z6^2+ 1766*z2*z4^3*z6^2+ 1766*z3*z4^3*z6^2- 2887*z4^4*z6^2+
    2887*z2*z3*z4*z5*z6^2+ 2751*z2*z4^2*z5*z6^2+ 2751*z3*z4^2*z5*z6^2+
    1766*z4^3*z5*z6^2+ 2751*z2*z3*z4*z6^3+ 1766*z2*z4^2*z6^3+ 1766*z3*z4^2*z6^3-
    2887*z4^3*z6^3- 1755*z2*z3*z5*z6^3+ 2751*z2*z4*z5*z6^3+ 2751*z3*z4*z5*z6^3+
    1766*z4^2*z5*z6^3- 4495*z2*z3*z6^4+ 1766*z2*z4*z6^4+ 1766*z3*z4*z6^4-
    2887*z4^2*z6^4- 4495*z2*z5*z6^4- 4495*z3*z5*z6^4+ 1766*z4*z5*z6^4-
    2740*z2*z6^5- 2740*z3*z6^5- 2887*z4*z6^5- 2740*z5*z6^5- 147*z6^6+
    2988*z2*z3*z4^2- 3588*z2*z4^3- 3588*z3*z4^3- 318*z4^4- 633*z2*z3*z4*z5+
    2988*z2*z4^2*z5+ 2988*z3*z4^2*z5- 3588*z4^3*z5+ 2355*z2*z3*z4*z6-
    600*z2*z4^2*z6- 600*z3*z4^2*z6- 3906*z4^3*z6- 633*z2*z3*z5*z6+
    2355*z2*z4*z5*z6+ 2355*z3*z4*z5*z6- 600*z4^2*z5*z6+ 2988*z2*z3*z6^2-
    600*z2*z4*z6^2- 600*z3*z4*z6^2- 3906*z4^2*z6^2+ 2988*z2*z5*z6^2+
    2988*z3*z5*z6^2- 600*z4*z5*z6^2- 3588*z2*z6^3- 3588*z3*z6^3- 3906*z4*z6^3-
    3588*z5*z6^3- 318*z6^4+ 1068*z2*z3+ 2202*z2*z4+ 2202*z3*z4+ 1776*z4^2+
    1068*z2*z5+ 1068*z3*z5+ 2202*z4*z5+ 2202*z2*z6+ 2202*z3*z6+ 3978*z4*z6+
    2202*z5*z6+ 1776*z6^2- 3538",
    "- 10*z2*z3*z4*z5^11+ 8*z2*z3*z5^12+ 8*z2*z4*z5^12+ 8*z3*z4*z5^12-
    6*z2*z5^13- 6*z3*z5^13- 6*z4*z5^13+ 4*z5^14+ 2*z2*z3*z4*z5^10*z6-
    2*z2*z3*z5^11*z6- 2*z2*z4*z5^11*z6- 2*z3*z4*z5^11*z6+ 2*z2*z5^12*z6+
    2*z3*z5^12*z6+ 2*z4*z5^12*z6- 2*z5^13*z6+ 2*z2*z3*z4*z5^9*z6^2-
    2*z2*z3*z5^10*z6^2- 2*z2*z4*z5^10*z6^2- 2*z3*z4*z5^10*z6^2+ 2*z2*z5^11*z6^2+
    2*z3*z5^11*z6^2+ 2*z4*z5^11*z6^2- 2*z5^12*z6^2+ 2*z2*z3*z4*z5^8*z6^3-
    2*z2*z3*z5^9*z6^3- 2*z2*z4*z5^9*z6^3- 2*z3*z4*z5^9*z6^3+ 2*z2*z5^10*z6^3+
    2*z3*z5^10*z6^3+ 2*z4*z5^10*z6^3- 2*z5^11*z6^3+ 2*z2*z3*z4*z5^7*z6^4-
    2*z2*z3*z5^8*z6^4- 2*z2*z4*z5^8*z6^4- 2*z3*z4*z5^8*z6^4+ 2*z2*z5^9*z6^4+
    2*z3*z5^9*z6^4+ 2*z4*z5^9*z6^4- 2*z5^10*z6^4+ 2*z2*z3*z4*z5^6*z6^5-
    2*z2*z3*z5^7*z6^5- 2*z2*z4*z5^7*z6^5- 2*z3*z4*z5^7*z6^5+ 2*z2*z5^8*z6^5+
    2*z3*z5^8*z6^5+ 2*z4*z5^8*z6^5- 2*z5^9*z6^5+ 2*z2*z3*z4*z5^5*z6^6-
    2*z2*z3*z5^6*z6^6- 2*z2*z4*z5^6*z6^6- 2*z3*z4*z5^6*z6^6+ 2*z2*z5^7*z6^6+
    2*z3*z5^7*z6^6+ 2*z4*z5^7*z6^6- 2*z5^8*z6^6+ 2*z2*z3*z4*z5^4*z6^7-
    2*z2*z3*z5^5*z6^7- 2*z2*z4*z5^5*z6^7- 2*z3*z4*z5^5*z6^7+ 2*z2*z5^6*z6^7+
    2*z3*z5^6*z6^7+ 2*z4*z5^6*z6^7- 2*z5^7*z6^7+ 2*z2*z3*z4*z5^3*z6^8-
    2*z2*z3*z5^4*z6^8- 2*z2*z4*z5^4*z6^8- 2*z3*z4*z5^4*z6^8+ 2*z2*z5^5*z6^8+
    2*z3*z5^5*z6^8+ 2*z4*z5^5*z6^8- 2*z5^6*z6^8+ 2*z2*z3*z4*z5^2*z6^9-
    2*z2*z3*z5^3*z6^9- 2*z2*z4*z5^3*z6^9- 2*z3*z4*z5^3*z6^9+ 2*z2*z5^4*z6^9+
    2*z3*z5^4*z6^9+ 2*z4*z5^4*z6^9- 2*z5^5*z6^9+ 2*z2*z3*z4*z5*z6^10-
    2*z2*z3*z5^2*z6^10- 2*z2*z4*z5^2*z6^10- 2*z3*z4*z5^2*z6^10+ 2*z2*z5^3*z6^10+
    2*z3*z5^3*z6^10+ 2*z4*z5^3*z6^10- 2*z5^4*z6^10- 10*z2*z3*z4*z6^11-
    2*z2*z3*z5*z6^11- 2*z2*z4*z5*z6^11- 2*z3*z4*z5*z6^11+ 2*z2*z5^2*z6^11+
    2*z3*z5^2*z6^11+ 2*z4*z5^2*z6^11- 2*z5^3*z6^11+ 8*z2*z3*z6^12+
    8*z2*z4*z6^12+ 8*z3*z4*z6^12+ 2*z2*z5*z6^12+ 2*z3*z5*z6^12+ 2*z4*z5*z6^12-
    2*z5^2*z6^12- 6*z2*z6^13- 6*z3*z6^13- 6*z4*z6^13- 2*z5*z6^13+ 4*z6^14+
    22*z2*z3*z4*z5^9- z2*z3*z5^10- z2*z4*z5^10- z3*z4*z5^10- 10*z2*z5^11-
    10*z3*z5^11- 10*z4*z5^11+ 13*z5^12- 33*z2*z3*z4*z5^8*z6+ 21*z2*z3*z5^9*z6+
    21*z2*z4*z5^9*z6+ 21*z3*z4*z5^9*z6- 11*z2*z5^10*z6- 11*z3*z5^10*z6-
    11*z4*z5^10*z6+ 3*z5^11*z6- 33*z2*z3*z4*z5^7*z6^2+ 21*z2*z3*z5^8*z6^2+
    21*z2*z4*z5^8*z6^2+ 21*z3*z4*z5^8*z6^2- 11*z2*z5^9*z6^2- 11*z3*z5^9*z6^2-
    11*z4*z5^9*z6^2+ 3*z5^10*z6^2- 33*z2*z3*z4*z5^6*z6^3+ 21*z2*z3*z5^7*z6^3+
    21*z2*z4*z5^7*z6^3+ 21*z3*z4*z5^7*z6^3- 11*z2*z5^8*z6^3- 11*z3*z5^8*z6^3-
    11*z4*z5^8*z6^3+ 3*z5^9*z6^3- 33*z2*z3*z4*z5^5*z6^4+ 21*z2*z3*z5^6*z6^4+
    21*z2*z4*z5^6*z6^4+ 21*z3*z4*z5^6*z6^4- 11*z2*z5^7*z6^4- 11*z3*z5^7*z6^4-
    11*z4*z5^7*z6^4+ 3*z5^8*z6^4- 33*z2*z3*z4*z5^4*z6^5+ 21*z2*z3*z5^5*z6^5+
    21*z2*z4*z5^5*z6^5+ 21*z3*z4*z5^5*z6^5- 11*z2*z5^6*z6^5- 11*z3*z5^6*z6^5-
    11*z4*z5^6*z6^5+ 3*z5^7*z6^5- 33*z2*z3*z4*z5^3*z6^6+ 21*z2*z3*z5^4*z6^6+
    21*z2*z4*z5^4*z6^6+ 21*z3*z4*z5^4*z6^6- 11*z2*z5^5*z6^6- 11*z3*z5^5*z6^6-
    11*z4*z5^5*z6^6+ 3*z5^6*z6^6- 33*z2*z3*z4*z5^2*z6^7+ 21*z2*z3*z5^3*z6^7+
    21*z2*z4*z5^3*z6^7+ 21*z3*z4*z5^3*z6^7- 11*z2*z5^4*z6^7- 11*z3*z5^4*z6^7-
    11*z4*z5^4*z6^7+ 3*z5^5*z6^7- 33*z2*z3*z4*z5*z6^8+ 21*z2*z3*z5^2*z6^8+
    21*z2*z4*z5^2*z6^8+ 21*z3*z4*z5^2*z6^8- 11*z2*z5^3*z6^8- 11*z3*z5^3*z6^8-
    11*z4*z5^3*z6^8+ 3*z5^4*z6^8+ 22*z2*z3*z4*z6^9+ 21*z2*z3*z5*z6^9+
    21*z2*z4*z5*z6^9+ 21*z3*z4*z5*z6^9- 11*z2*z5^2*z6^9- 11*z3*z5^2*z6^9-
    11*z4*z5^2*z6^9+ 3*z5^3*z6^9- z2*z3*z6^10- z2*z4*z6^10- z3*z4*z6^10-
    11*z2*z5*z6^10- 11*z3*z5*z6^10- 11*z4*z5*z6^10+ 3*z5^2*z6^10- 10*z2*z6^11-
    10*z3*z6^11- 10*z4*z6^11+ 3*z5*z6^11+ 13*z6^12- 3363*z2*z3*z4*z5^7+
    2231*z2*z3*z5^8+ 2231*z2*z4*z5^8+ 2231*z3*z4*z5^8- 1121*z2*z5^9-
    1121*z3*z5^9- 1121*z4*z5^9+ 12*z5^10+ 1187*z2*z3*z4*z5^6*z6-
    1132*z2*z3*z5^7*z6- 1132*z2*z4*z5^7*z6- 1132*z3*z4*z5^7*z6+ 1110*z2*z5^8*z6+
    1110*z3*z5^8*z6+ 1110*z4*z5^8*z6- 1109*z5^9*z6+ 1187*z2*z3*z4*z5^5*z6^2-
    1132*z2*z3*z5^6*z6^2- 1132*z2*z4*z5^6*z6^2- 1132*z3*z4*z5^6*z6^2+
    1110*z2*z5^7*z6^2+ 1110*z3*z5^7*z6^2+ 1110*z4*z5^7*z6^2- 1109*z5^8*z6^2+
    1187*z2*z3*z4*z5^4*z6^3- 1132*z2*z3*z5^5*z6^3- 1132*z2*z4*z5^5*z6^3-
    1132*z3*z4*z5^5*z6^3+ 1110*z2*z5^6*z6^3+ 1110*z3*z5^6*z6^3+
    1110*z4*z5^6*z6^3- 1109*z5^7*z6^3+ 1187*z2*z3*z4*z5^3*z6^4-
    1132*z2*z3*z5^4*z6^4- 1132*z2*z4*z5^4*z6^4- 1132*z3*z4*z5^4*z6^4+
    1110*z2*z5^5*z6^4+ 1110*z3*z5^5*z6^4+ 1110*z4*z5^5*z6^4- 1109*z5^6*z6^4+
    1187*z2*z3*z4*z5^2*z6^5- 1132*z2*z3*z5^3*z6^5- 1132*z2*z4*z5^3*z6^5-
    1132*z3*z4*z5^3*z6^5+ 1110*z2*z5^4*z6^5+ 1110*z3*z5^4*z6^5+
    1110*z4*z5^4*z6^5- 1109*z5^5*z6^5+ 1187*z2*z3*z4*z5*z6^6-
    1132*z2*z3*z5^2*z6^6- 1132*z2*z4*z5^2*z6^6- 1132*z3*z4*z5^2*z6^6+
    1110*z2*z5^3*z6^6+ 1110*z3*z5^3*z6^6+ 1110*z4*z5^3*z6^6- 1109*z5^4*z6^6-
    3363*z2*z3*z4*z6^7- 1132*z2*z3*z5*z6^7- 1132*z2*z4*z5*z6^7-
    1132*z3*z4*z5*z6^7+ 1110*z2*z5^2*z6^7+ 1110*z3*z5^2*z6^7+ 1110*z4*z5^2*z6^7-
    1109*z5^3*z6^7+ 2231*z2*z3*z6^8+ 2231*z2*z4*z6^8+ 2231*z3*z4*z6^8+
    1110*z2*z5*z6^8+ 1110*z3*z5*z6^8+ 1110*z4*z5*z6^8- 1109*z5^2*z6^8-
    1121*z2*z6^9- 1121*z3*z6^9- 1121*z4*z6^9- 1109*z5*z6^9+ 12*z6^10+
    4484*z2*z3*z4*z5^5+ 1121*z2*z3*z5^6+ 1121*z2*z4*z5^6+ 1121*z3*z4*z5^6-
    3363*z2*z5^7- 3363*z3*z5^7- 3363*z4*z5^7+ 3374*z5^8- 1154*z2*z3*z4*z5^4*z6-
    3396*z2*z3*z5^5*z6- 3396*z2*z4*z5^5*z6- 3396*z3*z4*z5^5*z6- 2242*z2*z5^6*z6-
    2242*z3*z5^6*z6- 2242*z4*z5^6*z6+ 11*z5^7*z6- 1154*z2*z3*z4*z5^3*z6^2-
    3396*z2*z3*z5^4*z6^2- 3396*z2*z4*z5^4*z6^2- 3396*z3*z4*z5^4*z6^2-
    2242*z2*z5^5*z6^2- 2242*z3*z5^5*z6^2- 2242*z4*z5^5*z6^2+ 11*z5^6*z6^2-
    1154*z2*z3*z4*z5^2*z6^3- 3396*z2*z3*z5^3*z6^3- 3396*z2*z4*z5^3*z6^3-
    3396*z3*z4*z5^3*z6^3- 2242*z2*z5^4*z6^3- 2242*z3*z5^4*z6^3-
    2242*z4*z5^4*z6^3+ 11*z5^5*z6^3- 1154*z2*z3*z4*z5*z6^4-
    3396*z2*z3*z5^2*z6^4- 3396*z2*z4*z5^2*z6^4- 3396*z3*z4*z5^2*z6^4-
    2242*z2*z5^3*z6^4- 2242*z3*z5^3*z6^4- 2242*z4*z5^3*z6^4+ 11*z5^4*z6^4+
    4484*z2*z3*z4*z6^5- 3396*z2*z3*z5*z6^5- 3396*z2*z4*z5*z6^5-
    3396*z3*z4*z5*z6^5- 2242*z2*z5^2*z6^5- 2242*z3*z5^2*z6^5- 2242*z4*z5^2*z6^5+
    11*z5^3*z6^5+ 1121*z2*z3*z6^6+ 1121*z2*z4*z6^6+ 1121*z3*z4*z6^6-
    2242*z2*z5*z6^6- 2242*z3*z5*z6^6- 2242*z4*z5*z6^6+ 11*z5^2*z6^6-
    3363*z2*z6^7- 3363*z3*z6^7- 3363*z4*z6^7+ 11*z5*z6^7+ 3374*z6^8-
    1755*z2*z3*z4*z5^3- 4495*z2*z3*z5^4- 4495*z2*z4*z5^4- 4495*z3*z4*z5^4-
    2740*z2*z5^5- 2740*z3*z5^5- 2740*z4*z5^5- 147*z5^6+ 2887*z2*z3*z4*z5^2*z6+
    2751*z2*z3*z5^3*z6+ 2751*z2*z4*z5^3*z6+ 2751*z3*z4*z5^3*z6+ 1766*z2*z5^4*z6+
    1766*z3*z5^4*z6+ 1766*z4*z5^4*z6- 2887*z5^5*z6+ 2887*z2*z3*z4*z5*z6^2+
    2751*z2*z3*z5^2*z6^2+ 2751*z2*z4*z5^2*z6^2+ 2751*z3*z4*z5^2*z6^2+
    1766*z2*z5^3*z6^2+ 1766*z3*z5^3*z6^2+ 1766*z4*z5^3*z6^2- 2887*z5^4*z6^2-
    1755*z2*z3*z4*z6^3+ 2751*z2*z3*z5*z6^3+ 2751*z2*z4*z5*z6^3+
    2751*z3*z4*z5*z6^3+ 1766*z2*z5^2*z6^3+ 1766*z3*z5^2*z6^3+ 1766*z4*z5^2*z6^3-
    2887*z5^3*z6^3- 4495*z2*z3*z6^4- 4495*z2*z4*z6^4- 4495*z3*z4*z6^4+
    1766*z2*z5*z6^4+ 1766*z3*z5*z6^4+ 1766*z4*z5*z6^4- 2887*z5^2*z6^4-
    2740*z2*z6^5- 2740*z3*z6^5- 2740*z4*z6^5- 2887*z5*z6^5- 147*z6^6-
    633*z2*z3*z4*z5+ 2988*z2*z3*z5^2+ 2988*z2*z4*z5^2+ 2988*z3*z4*z5^2-
    3588*z2*z5^3- 3588*z3*z5^3- 3588*z4*z5^3- 318*z5^4- 633*z2*z3*z4*z6+
    2355*z2*z3*z5*z6+ 2355*z2*z4*z5*z6+ 2355*z3*z4*z5*z6- 600*z2*z5^2*z6-
    600*z3*z5^2*z6- 600*z4*z5^2*z6- 3906*z5^3*z6+ 2988*z2*z3*z6^2+
    2988*z2*z4*z6^2+ 2988*z3*z4*z6^2- 600*z2*z5*z6^2- 600*z3*z5*z6^2-
    600*z4*z5*z6^2- 3906*z5^2*z6^2- 3588*z2*z6^3- 3588*z3*z6^3- 3588*z4*z6^3-
    3906*z5*z6^3- 318*z6^4+ 1068*z2*z3+ 1068*z2*z4+ 1068*z3*z4+ 2202*z2*z5+
    2202*z3*z5+ 2202*z4*z5+ 1776*z5^2+ 2202*z2*z6+ 2202*z3*z6+ 2202*z4*z6+
    3978*z5*z6+ 1776*z6^2- 3538",
    "z1*z2^2*z3^2*z4^2*z5^2*z6^2- 2250*z1*z2^2*z3^2*z4^2*z5^2-
    2250*z1*z2^2*z3^2*z4^2*z6^2- 2250*z1*z2^2*z3^2*z5^2*z6^2-
    2250*z1*z2^2*z4^2*z5^2*z6^2- 2250*z1*z3^2*z4^2*z5^2*z6^2+
    3938*z1*z2^2*z3^2*z4^2+ 3938*z1*z2^2*z3^2*z5^2+ 3938*z1*z2^2*z4^2*z5^2+
    3938*z1*z3^2*z4^2*z5^2+ 3938*z1*z2^2*z3^2*z6^2+ 3938*z1*z2^2*z4^2*z6^2+
    3938*z1*z3^2*z4^2*z6^2+ 3938*z1*z2^2*z5^2*z6^2+ 3938*z1*z3^2*z5^2*z6^2+
    3938*z1*z4^2*z5^2*z6^2- 3516*z1*z2^2*z3^2- 3516*z1*z2^2*z4^2-
    3516*z1*z3^2*z4^2- 3516*z1*z2^2*z5^2- 3516*z1*z3^2*z5^2- 3516*z1*z4^2*z5^2-
    3516*z1*z2^2*z6^2- 3516*z1*z3^2*z6^2- 3516*z1*z4^2*z6^2- 3516*z1*z5^2*z6^2-
    879*z1*z2^2- 879*z1*z3^2- 879*z1*z4^2- 879*z1*z5^2- 879*z1*z6^2- 2470*z1- 1",
    "- z2- z3- z4- z5- z6+ z7",
    "- z2*z3- z2*z4- z3*z4-
    z2*z5- z3*z5- z4*z5- z2*z6- z3*z6- z4*z6- z5*z6+ z8",
    "- z2*z3*z4- z2*z3*z5-z2*z4*z5- z3*z4*z5- z2*z3*z6- z2*z4*z6- z3*z4*z6-
    z2*z5*z6- z3*z5*z6-z4*z5*z6+ z9",
    "- z2*z3*z4*z5- z2*z3*z4*z6- z2*z3*z5*z6- z2*z4*z5*z6-z3*z4*z5*z6+ z10",
   "- z2*z3*z4*z5*z6+ z11"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function zhang_l12_m6(
    char::Int,
    ord::Symbol=:degrevlex
    )
  if (ord != :lex) && (ord != :degrevlex)
    error("Order not known -- No ideal generated.")
  end
  n = 13
  vars = Array{String, 1}(undef, n)
  # generate dummy array of n strings for generating
  # singular polynomial ring
  for i = 1:n
    vars[i] = "z$(i)"
  end
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZpField(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
    "2*z2^16- 4*z2^15*z3- 4*z2^15*z4+ 6*z2^14*z3*z4- 4*z2^15*z5+ 6*z2^14*z3*z5+
    6*z2^14*z4*z5- 8*z2^13*z3*z4*z5- 4*z2^15*z6+ 6*z2^14*z3*z6+ 6*z2^14*z4*z6-
    8*z2^13*z3*z4*z6+ 6*z2^14*z5*z6- 8*z2^13*z3*z5*z6- 8*z2^13*z4*z5*z6+
    10*z2^12*z3*z4*z5*z6- 4*z2^15*z7+ 6*z2^14*z3*z7+ 6*z2^14*z4*z7-
    8*z2^13*z3*z4*z7+ 6*z2^14*z5*z7- 8*z2^13*z3*z5*z7- 8*z2^13*z4*z5*z7+
    10*z2^12*z3*z4*z5*z7+ 6*z2^14*z6*z7- 8*z2^13*z3*z6*z7- 8*z2^13*z4*z6*z7+
    10*z2^12*z3*z4*z6*z7- 8*z2^13*z5*z6*z7+ 10*z2^12*z3*z5*z6*z7+
    10*z2^12*z4*z5*z6*z7- 12*z2^11*z3*z4*z5*z6*z7+ 10*z2^14- 13*z2^13*z3-
    13*z2^13*z4+ 10*z2^12*z3*z4- 13*z2^13*z5+ 10*z2^12*z3*z5+ 10*z2^12*z4*z5+
    z2^11*z3*z4*z5- 13*z2^13*z6+ 10*z2^12*z3*z6+ 10*z2^12*z4*z6+ z2^11*z3*z4*z6+
    10*z2^12*z5*z6+ z2^11*z3*z5*z6+ z2^11*z4*z5*z6- 22*z2^10*z3*z4*z5*z6-
    13*z2^13*z7+ 10*z2^12*z3*z7+ 10*z2^12*z4*z7+ z2^11*z3*z4*z7+ 10*z2^12*z5*z7+
    z2^11*z3*z5*z7+ z2^11*z4*z5*z7- 22*z2^10*z3*z4*z5*z7+ 10*z2^12*z6*z7+
    z2^11*z3*z6*z7+ z2^11*z4*z6*z7- 22*z2^10*z3*z4*z6*z7+ z2^11*z5*z6*z7-
    22*z2^10*z3*z5*z6*z7- 22*z2^10*z4*z5*z6*z7+ 55*z2^9*z3*z4*z5*z6*z7-
    1107*z2^12- 12*z2^11*z3- 12*z2^11*z4+ 1121*z2^10*z3*z4- 12*z2^11*z5+
    1121*z2^10*z3*z5+ 1121*z2^10*z4*z5- 2231*z2^9*z3*z4*z5- 12*z2^11*z6+
    1121*z2^10*z3*z6+ 1121*z2^10*z4*z6- 2231*z2^9*z3*z4*z6+ 1121*z2^10*z5*z6-
    2231*z2^9*z3*z5*z6- 2231*z2^9*z4*z5*z6+ 3363*z2^8*z3*z4*z5*z6- 12*z2^11*z7+
    1121*z2^10*z3*z7+ 1121*z2^10*z4*z7- 2231*z2^9*z3*z4*z7+ 1121*z2^10*z5*z7-
    2231*z2^9*z3*z5*z7- 2231*z2^9*z4*z5*z7+ 3363*z2^8*z3*z4*z5*z7+
    1121*z2^10*z6*z7- 2231*z2^9*z3*z6*z7- 2231*z2^9*z4*z6*z7+
    3363*z2^8*z3*z4*z6*z7- 2231*z2^9*z5*z6*z7+ 3363*z2^8*z3*z5*z6*z7+
    3363*z2^8*z4*z5*z6*z7+ 4451*z2^7*z3*z4*z5*z6*z7+ 2264*z2^10- 3374*z2^9*z3-
    3374*z2^9*z4+ 3363*z2^8*z3*z4- 3374*z2^9*z5+ 3363*z2^8*z3*z5+
    3363*z2^8*z4*z5- 1121*z2^7*z3*z4*z5- 3374*z2^9*z6+ 3363*z2^8*z3*z6+
    3363*z2^8*z4*z6- 1121*z2^7*z3*z4*z6+ 3363*z2^8*z5*z6- 1121*z2^7*z3*z5*z6-
    1121*z2^7*z4*z5*z6- 4484*z2^6*z3*z4*z5*z6- 3374*z2^9*z7+ 3363*z2^8*z3*z7+
    3363*z2^8*z4*z7- 1121*z2^7*z3*z4*z7+ 3363*z2^8*z5*z7- 1121*z2^7*z3*z5*z7-
    1121*z2^7*z4*z5*z7- 4484*z2^6*z3*z4*z5*z7+ 3363*z2^8*z6*z7-
    1121*z2^7*z3*z6*z7- 1121*z2^7*z4*z6*z7- 4484*z2^6*z3*z4*z6*z7-
    1121*z2^7*z5*z6*z7- 4484*z2^6*z3*z5*z6*z7- 4484*z2^6*z4*z5*z6*z7-
    3363*z2^5*z3*z4*z5*z6*z7+ 2604*z2^8+ 147*z2^7*z3+ 147*z2^7*z4+
    2740*z2^6*z3*z4+ 147*z2^7*z5+ 2740*z2^6*z3*z5+ 2740*z2^6*z4*z5+
    4495*z2^5*z3*z4*z5+ 147*z2^7*z6+ 2740*z2^6*z3*z6+ 2740*z2^6*z4*z6+
    4495*z2^5*z3*z4*z6+ 2740*z2^6*z5*z6+ 4495*z2^5*z3*z5*z6+ 4495*z2^5*z4*z5*z6+
    1755*z2^4*z3*z4*z5*z6+ 147*z2^7*z7+ 2740*z2^6*z3*z7+ 2740*z2^6*z4*z7+
    4495*z2^5*z3*z4*z7+ 2740*z2^6*z5*z7+ 4495*z2^5*z3*z5*z7+ 4495*z2^5*z4*z5*z7+
    1755*z2^4*z3*z4*z5*z7+ 2740*z2^6*z6*z7+ 4495*z2^5*z3*z6*z7+
    4495*z2^5*z4*z6*z7+ 1755*z2^4*z3*z4*z6*z7+ 4495*z2^5*z5*z6*z7+
    1755*z2^4*z3*z5*z6*z7+ 1755*z2^4*z4*z5*z6*z7+ 4359*z2^3*z3*z4*z5*z6*z7+
    2037*z2^6+ 318*z2^5*z3+ 318*z2^5*z4+ 3588*z2^4*z3*z4+ 318*z2^5*z5+
    3588*z2^4*z3*z5+ 3588*z2^4*z4*z5- 2988*z2^3*z3*z4*z5+ 318*z2^5*z6+
    3588*z2^4*z3*z6+ 3588*z2^4*z4*z6- 2988*z2^3*z3*z4*z6+ 3588*z2^4*z5*z6-
    2988*z2^3*z3*z5*z6- 2988*z2^3*z4*z5*z6+ 633*z2^2*z3*z4*z5*z6+ 318*z2^5*z7+
    3588*z2^4*z3*z7+ 3588*z2^4*z4*z7- 2988*z2^3*z3*z4*z7+ 3588*z2^4*z5*z7-
    2988*z2^3*z3*z5*z7- 2988*z2^3*z4*z5*z7+ 633*z2^2*z3*z4*z5*z7+
    3588*z2^4*z6*z7- 2988*z2^3*z3*z6*z7- 2988*z2^3*z4*z6*z7+
    633*z2^2*z3*z4*z6*z7- 2988*z2^3*z5*z6*z7+ 633*z2^2*z3*z5*z6*z7+
    633*z2^2*z4*z5*z6*z7- 2637*z2*z3*z4*z5*z6*z7+ 2166*z2^4- 1776*z2^3*z3-
    1776*z2^3*z4- 2202*z2^2*z3*z4- 1776*z2^3*z5- 2202*z2^2*z3*z5-
    2202*z2^2*z4*z5+ 167*z2*z3*z4*z5- 1776*z2^3*z6- 2202*z2^2*z3*z6-
    2202*z2^2*z4*z6+ 167*z2*z3*z4*z6- 2202*z2^2*z5*z6+ 167*z2*z3*z5*z6+
    167*z2*z4*z5*z6+ 1235*z3*z4*z5*z6- 1776*z2^3*z7- 2202*z2^2*z3*z7-
    2202*z2^2*z4*z7+ 167*z2*z3*z4*z7- 2202*z2^2*z5*z7+ 167*z2*z3*z5*z7+
    167*z2*z4*z5*z7+ 1235*z3*z4*z5*z7- 2202*z2^2*z6*z7+ 167*z2*z3*z6*z7+
    167*z2*z4*z6*z7+ 1235*z3*z4*z6*z7+ 167*z2*z5*z6*z7+ 1235*z3*z5*z6*z7+
    1235*z4*z5*z6*z7- 1169*z2^2+ 2303*z2*z3+ 2303*z2*z4- 1235*z3*z4+ 2303*z2*z5-
    1235*z3*z5- 1235*z4*z5+ 2303*z2*z6- 1235*z3*z6- 1235*z4*z6- 1235*z5*z6+
    2303*z2*z7- 1235*z3*z7- 1235*z4*z7- 1235*z5*z7- 1235*z6*z7+ 1235",
    "- 4*z2*z3^15+ 2*z3^16+ 6*z2*z3^14*z4- 4*z3^15*z4+ 6*z2*z3^14*z5-
    4*z3^15*z5- 8*z2*z3^13*z4*z5+ 6*z3^14*z4*z5+ 6*z2*z3^14*z6- 4*z3^15*z6-
    8*z2*z3^13*z4*z6+ 6*z3^14*z4*z6- 8*z2*z3^13*z5*z6+ 6*z3^14*z5*z6+
    10*z2*z3^12*z4*z5*z6- 8*z3^13*z4*z5*z6+ 6*z2*z3^14*z7- 4*z3^15*z7-
    8*z2*z3^13*z4*z7+ 6*z3^14*z4*z7- 8*z2*z3^13*z5*z7+ 6*z3^14*z5*z7+
    10*z2*z3^12*z4*z5*z7- 8*z3^13*z4*z5*z7- 8*z2*z3^13*z6*z7+ 6*z3^14*z6*z7+
    10*z2*z3^12*z4*z6*z7- 8*z3^13*z4*z6*z7+ 10*z2*z3^12*z5*z6*z7-
    8*z3^13*z5*z6*z7- 12*z2*z3^11*z4*z5*z6*z7+ 10*z3^12*z4*z5*z6*z7-
    13*z2*z3^13+ 10*z3^14+ 10*z2*z3^12*z4- 13*z3^13*z4+ 10*z2*z3^12*z5-
    13*z3^13*z5+ z2*z3^11*z4*z5+ 10*z3^12*z4*z5+ 10*z2*z3^12*z6- 13*z3^13*z6+
    z2*z3^11*z4*z6+ 10*z3^12*z4*z6+ z2*z3^11*z5*z6+ 10*z3^12*z5*z6-
    22*z2*z3^10*z4*z5*z6+ z3^11*z4*z5*z6+ 10*z2*z3^12*z7- 13*z3^13*z7+
    z2*z3^11*z4*z7+ 10*z3^12*z4*z7+ z2*z3^11*z5*z7+ 10*z3^12*z5*z7-
    22*z2*z3^10*z4*z5*z7+ z3^11*z4*z5*z7+ z2*z3^11*z6*z7+ 10*z3^12*z6*z7-
    22*z2*z3^10*z4*z6*z7+ z3^11*z4*z6*z7- 22*z2*z3^10*z5*z6*z7+ z3^11*z5*z6*z7+
    55*z2*z3^9*z4*z5*z6*z7- 22*z3^10*z4*z5*z6*z7- 12*z2*z3^11- 1107*z3^12+
    1121*z2*z3^10*z4- 12*z3^11*z4+ 1121*z2*z3^10*z5- 12*z3^11*z5-
    2231*z2*z3^9*z4*z5+ 1121*z3^10*z4*z5+ 1121*z2*z3^10*z6- 12*z3^11*z6-
    2231*z2*z3^9*z4*z6+ 1121*z3^10*z4*z6- 2231*z2*z3^9*z5*z6+ 1121*z3^10*z5*z6+
    3363*z2*z3^8*z4*z5*z6- 2231*z3^9*z4*z5*z6+ 1121*z2*z3^10*z7- 12*z3^11*z7-
    2231*z2*z3^9*z4*z7+ 1121*z3^10*z4*z7- 2231*z2*z3^9*z5*z7+ 1121*z3^10*z5*z7+
    3363*z2*z3^8*z4*z5*z7- 2231*z3^9*z4*z5*z7- 2231*z2*z3^9*z6*z7+
    1121*z3^10*z6*z7+ 3363*z2*z3^8*z4*z6*z7- 2231*z3^9*z4*z6*z7+
    3363*z2*z3^8*z5*z6*z7- 2231*z3^9*z5*z6*z7+ 4451*z2*z3^7*z4*z5*z6*z7+
    3363*z3^8*z4*z5*z6*z7- 3374*z2*z3^9+ 2264*z3^10+ 3363*z2*z3^8*z4-
    3374*z3^9*z4+ 3363*z2*z3^8*z5- 3374*z3^9*z5- 1121*z2*z3^7*z4*z5+
    3363*z3^8*z4*z5+ 3363*z2*z3^8*z6- 3374*z3^9*z6- 1121*z2*z3^7*z4*z6+
    3363*z3^8*z4*z6- 1121*z2*z3^7*z5*z6+ 3363*z3^8*z5*z6- 4484*z2*z3^6*z4*z5*z6-
    1121*z3^7*z4*z5*z6+ 3363*z2*z3^8*z7- 3374*z3^9*z7- 1121*z2*z3^7*z4*z7+
    3363*z3^8*z4*z7- 1121*z2*z3^7*z5*z7+ 3363*z3^8*z5*z7- 4484*z2*z3^6*z4*z5*z7-
    1121*z3^7*z4*z5*z7- 1121*z2*z3^7*z6*z7+ 3363*z3^8*z6*z7-
    4484*z2*z3^6*z4*z6*z7- 1121*z3^7*z4*z6*z7- 4484*z2*z3^6*z5*z6*z7-
    1121*z3^7*z5*z6*z7- 3363*z2*z3^5*z4*z5*z6*z7- 4484*z3^6*z4*z5*z6*z7+
    147*z2*z3^7+ 2604*z3^8+ 2740*z2*z3^6*z4+ 147*z3^7*z4+ 2740*z2*z3^6*z5+
    147*z3^7*z5+ 4495*z2*z3^5*z4*z5+ 2740*z3^6*z4*z5+ 2740*z2*z3^6*z6+
    147*z3^7*z6+ 4495*z2*z3^5*z4*z6+ 2740*z3^6*z4*z6+ 4495*z2*z3^5*z5*z6+
    2740*z3^6*z5*z6+ 1755*z2*z3^4*z4*z5*z6+ 4495*z3^5*z4*z5*z6+ 2740*z2*z3^6*z7+
    147*z3^7*z7+ 4495*z2*z3^5*z4*z7+ 2740*z3^6*z4*z7+ 4495*z2*z3^5*z5*z7+
    2740*z3^6*z5*z7+ 1755*z2*z3^4*z4*z5*z7+ 4495*z3^5*z4*z5*z7+
    4495*z2*z3^5*z6*z7+ 2740*z3^6*z6*z7+ 1755*z2*z3^4*z4*z6*z7+
    4495*z3^5*z4*z6*z7+ 1755*z2*z3^4*z5*z6*z7+ 4495*z3^5*z5*z6*z7+
    4359*z2*z3^3*z4*z5*z6*z7+ 1755*z3^4*z4*z5*z6*z7+ 318*z2*z3^5+ 2037*z3^6+
    3588*z2*z3^4*z4+ 318*z3^5*z4+ 3588*z2*z3^4*z5+ 318*z3^5*z5-
    2988*z2*z3^3*z4*z5+ 3588*z3^4*z4*z5+ 3588*z2*z3^4*z6+ 318*z3^5*z6-
    2988*z2*z3^3*z4*z6+ 3588*z3^4*z4*z6- 2988*z2*z3^3*z5*z6+ 3588*z3^4*z5*z6+
    633*z2*z3^2*z4*z5*z6- 2988*z3^3*z4*z5*z6+ 3588*z2*z3^4*z7+ 318*z3^5*z7-
    2988*z2*z3^3*z4*z7+ 3588*z3^4*z4*z7- 2988*z2*z3^3*z5*z7+ 3588*z3^4*z5*z7+
    633*z2*z3^2*z4*z5*z7- 2988*z3^3*z4*z5*z7- 2988*z2*z3^3*z6*z7+
    3588*z3^4*z6*z7+ 633*z2*z3^2*z4*z6*z7- 2988*z3^3*z4*z6*z7+
    633*z2*z3^2*z5*z6*z7- 2988*z3^3*z5*z6*z7- 2637*z2*z3*z4*z5*z6*z7+
    633*z3^2*z4*z5*z6*z7- 1776*z2*z3^3+ 2166*z3^4- 2202*z2*z3^2*z4-
    1776*z3^3*z4- 2202*z2*z3^2*z5- 1776*z3^3*z5+ 167*z2*z3*z4*z5-
    2202*z3^2*z4*z5- 2202*z2*z3^2*z6- 1776*z3^3*z6+ 167*z2*z3*z4*z6-
    2202*z3^2*z4*z6+ 167*z2*z3*z5*z6- 2202*z3^2*z5*z6+ 1235*z2*z4*z5*z6+
    167*z3*z4*z5*z6- 2202*z2*z3^2*z7- 1776*z3^3*z7+ 167*z2*z3*z4*z7-
    2202*z3^2*z4*z7+ 167*z2*z3*z5*z7- 2202*z3^2*z5*z7+ 1235*z2*z4*z5*z7+
    167*z3*z4*z5*z7+ 167*z2*z3*z6*z7- 2202*z3^2*z6*z7+ 1235*z2*z4*z6*z7+
    167*z3*z4*z6*z7+ 1235*z2*z5*z6*z7+ 167*z3*z5*z6*z7+ 1235*z4*z5*z6*z7+
    2303*z2*z3- 1169*z3^2- 1235*z2*z4+ 2303*z3*z4- 1235*z2*z5+ 2303*z3*z5-
    1235*z4*z5- 1235*z2*z6+ 2303*z3*z6- 1235*z4*z6- 1235*z5*z6- 1235*z2*z7+
    2303*z3*z7- 1235*z4*z7- 1235*z5*z7- 1235*z6*z7+ 1235",
    "6*z2*z3*z4^14- 4*z2*z4^15- 4*z3*z4^15+ 2*z4^16- 8*z2*z3*z4^13*z5+
    6*z2*z4^14*z5+ 6*z3*z4^14*z5- 4*z4^15*z5- 8*z2*z3*z4^13*z6+ 6*z2*z4^14*z6+
    6*z3*z4^14*z6- 4*z4^15*z6+ 10*z2*z3*z4^12*z5*z6- 8*z2*z4^13*z5*z6-
    8*z3*z4^13*z5*z6+ 6*z4^14*z5*z6- 8*z2*z3*z4^13*z7+ 6*z2*z4^14*z7+
    6*z3*z4^14*z7- 4*z4^15*z7+ 10*z2*z3*z4^12*z5*z7- 8*z2*z4^13*z5*z7-
    8*z3*z4^13*z5*z7+ 6*z4^14*z5*z7+ 10*z2*z3*z4^12*z6*z7- 8*z2*z4^13*z6*z7-
    8*z3*z4^13*z6*z7+ 6*z4^14*z6*z7- 12*z2*z3*z4^11*z5*z6*z7+
    10*z2*z4^12*z5*z6*z7+ 10*z3*z4^12*z5*z6*z7- 8*z4^13*z5*z6*z7+
    10*z2*z3*z4^12- 13*z2*z4^13- 13*z3*z4^13+ 10*z4^14+ z2*z3*z4^11*z5+
    10*z2*z4^12*z5+ 10*z3*z4^12*z5- 13*z4^13*z5+ z2*z3*z4^11*z6+ 10*z2*z4^12*z6+
    10*z3*z4^12*z6- 13*z4^13*z6- 22*z2*z3*z4^10*z5*z6+ z2*z4^11*z5*z6+
    z3*z4^11*z5*z6+ 10*z4^12*z5*z6+ z2*z3*z4^11*z7+ 10*z2*z4^12*z7+
    10*z3*z4^12*z7- 13*z4^13*z7- 22*z2*z3*z4^10*z5*z7+ z2*z4^11*z5*z7+
    z3*z4^11*z5*z7+ 10*z4^12*z5*z7- 22*z2*z3*z4^10*z6*z7+ z2*z4^11*z6*z7+
    z3*z4^11*z6*z7+ 10*z4^12*z6*z7+ 55*z2*z3*z4^9*z5*z6*z7-
    22*z2*z4^10*z5*z6*z7- 22*z3*z4^10*z5*z6*z7+ z4^11*z5*z6*z7+
    1121*z2*z3*z4^10- 12*z2*z4^11- 12*z3*z4^11- 1107*z4^12- 2231*z2*z3*z4^9*z5+
    1121*z2*z4^10*z5+ 1121*z3*z4^10*z5- 12*z4^11*z5- 2231*z2*z3*z4^9*z6+
    1121*z2*z4^10*z6+ 1121*z3*z4^10*z6- 12*z4^11*z6+ 3363*z2*z3*z4^8*z5*z6-
    2231*z2*z4^9*z5*z6- 2231*z3*z4^9*z5*z6+ 1121*z4^10*z5*z6-
    2231*z2*z3*z4^9*z7+ 1121*z2*z4^10*z7+ 1121*z3*z4^10*z7- 12*z4^11*z7+
    3363*z2*z3*z4^8*z5*z7- 2231*z2*z4^9*z5*z7- 2231*z3*z4^9*z5*z7+
    1121*z4^10*z5*z7+ 3363*z2*z3*z4^8*z6*z7- 2231*z2*z4^9*z6*z7-
    2231*z3*z4^9*z6*z7+ 1121*z4^10*z6*z7+ 4451*z2*z3*z4^7*z5*z6*z7+
    3363*z2*z4^8*z5*z6*z7+ 3363*z3*z4^8*z5*z6*z7- 2231*z4^9*z5*z6*z7+
    3363*z2*z3*z4^8- 3374*z2*z4^9- 3374*z3*z4^9+ 2264*z4^10- 1121*z2*z3*z4^7*z5+
    3363*z2*z4^8*z5+ 3363*z3*z4^8*z5- 3374*z4^9*z5- 1121*z2*z3*z4^7*z6+
    3363*z2*z4^8*z6+ 3363*z3*z4^8*z6- 3374*z4^9*z6- 4484*z2*z3*z4^6*z5*z6-
    1121*z2*z4^7*z5*z6- 1121*z3*z4^7*z5*z6+ 3363*z4^8*z5*z6- 1121*z2*z3*z4^7*z7+
    3363*z2*z4^8*z7+ 3363*z3*z4^8*z7- 3374*z4^9*z7- 4484*z2*z3*z4^6*z5*z7-
    1121*z2*z4^7*z5*z7- 1121*z3*z4^7*z5*z7+ 3363*z4^8*z5*z7-
    4484*z2*z3*z4^6*z6*z7- 1121*z2*z4^7*z6*z7- 1121*z3*z4^7*z6*z7+
    3363*z4^8*z6*z7- 3363*z2*z3*z4^5*z5*z6*z7- 4484*z2*z4^6*z5*z6*z7-
    4484*z3*z4^6*z5*z6*z7- 1121*z4^7*z5*z6*z7+ 2740*z2*z3*z4^6+ 147*z2*z4^7+
    147*z3*z4^7+ 2604*z4^8+ 4495*z2*z3*z4^5*z5+ 2740*z2*z4^6*z5+
    2740*z3*z4^6*z5+ 147*z4^7*z5+ 4495*z2*z3*z4^5*z6+ 2740*z2*z4^6*z6+
    2740*z3*z4^6*z6+ 147*z4^7*z6+ 1755*z2*z3*z4^4*z5*z6+ 4495*z2*z4^5*z5*z6+
    4495*z3*z4^5*z5*z6+ 2740*z4^6*z5*z6+ 4495*z2*z3*z4^5*z7+ 2740*z2*z4^6*z7+
    2740*z3*z4^6*z7+ 147*z4^7*z7+ 1755*z2*z3*z4^4*z5*z7+ 4495*z2*z4^5*z5*z7+
    4495*z3*z4^5*z5*z7+ 2740*z4^6*z5*z7+ 1755*z2*z3*z4^4*z6*z7+
    4495*z2*z4^5*z6*z7+ 4495*z3*z4^5*z6*z7+ 2740*z4^6*z6*z7+
    4359*z2*z3*z4^3*z5*z6*z7+ 1755*z2*z4^4*z5*z6*z7+ 1755*z3*z4^4*z5*z6*z7+
    4495*z4^5*z5*z6*z7+ 3588*z2*z3*z4^4+ 318*z2*z4^5+ 318*z3*z4^5+ 2037*z4^6-
    2988*z2*z3*z4^3*z5+ 3588*z2*z4^4*z5+ 3588*z3*z4^4*z5+ 318*z4^5*z5-
    2988*z2*z3*z4^3*z6+ 3588*z2*z4^4*z6+ 3588*z3*z4^4*z6+ 318*z4^5*z6+
    633*z2*z3*z4^2*z5*z6- 2988*z2*z4^3*z5*z6- 2988*z3*z4^3*z5*z6+
    3588*z4^4*z5*z6- 2988*z2*z3*z4^3*z7+ 3588*z2*z4^4*z7+ 3588*z3*z4^4*z7+
    318*z4^5*z7+ 633*z2*z3*z4^2*z5*z7- 2988*z2*z4^3*z5*z7- 2988*z3*z4^3*z5*z7+
    3588*z4^4*z5*z7+ 633*z2*z3*z4^2*z6*z7- 2988*z2*z4^3*z6*z7-
    2988*z3*z4^3*z6*z7+ 3588*z4^4*z6*z7- 2637*z2*z3*z4*z5*z6*z7+
    633*z2*z4^2*z5*z6*z7+ 633*z3*z4^2*z5*z6*z7- 2988*z4^3*z5*z6*z7-
    2202*z2*z3*z4^2- 1776*z2*z4^3- 1776*z3*z4^3+ 2166*z4^4+ 167*z2*z3*z4*z5-
    2202*z2*z4^2*z5- 2202*z3*z4^2*z5- 1776*z4^3*z5+ 167*z2*z3*z4*z6-
    2202*z2*z4^2*z6- 2202*z3*z4^2*z6- 1776*z4^3*z6+ 1235*z2*z3*z5*z6+
    167*z2*z4*z5*z6+ 167*z3*z4*z5*z6- 2202*z4^2*z5*z6+ 167*z2*z3*z4*z7-
    2202*z2*z4^2*z7- 2202*z3*z4^2*z7- 1776*z4^3*z7+ 1235*z2*z3*z5*z7+
    167*z2*z4*z5*z7+ 167*z3*z4*z5*z7- 2202*z4^2*z5*z7+ 1235*z2*z3*z6*z7+
    167*z2*z4*z6*z7+ 167*z3*z4*z6*z7- 2202*z4^2*z6*z7+ 1235*z2*z5*z6*z7+
    1235*z3*z5*z6*z7+ 167*z4*z5*z6*z7- 1235*z2*z3+ 2303*z2*z4+ 2303*z3*z4-
    1169*z4^2- 1235*z2*z5- 1235*z3*z5+ 2303*z4*z5- 1235*z2*z6- 1235*z3*z6+
    2303*z4*z6- 1235*z5*z6- 1235*z2*z7- 1235*z3*z7+ 2303*z4*z7- 1235*z5*z7-
    1235*z6*z7+ 1235",
    "- 8*z2*z3*z4*z5^13+ 6*z2*z3*z5^14+ 6*z2*z4*z5^14+ 6*z3*z4*z5^14-
    4*z2*z5^15- 4*z3*z5^15- 4*z4*z5^15+ 2*z5^16+ 10*z2*z3*z4*z5^12*z6-
    8*z2*z3*z5^13*z6- 8*z2*z4*z5^13*z6- 8*z3*z4*z5^13*z6+ 6*z2*z5^14*z6+
    6*z3*z5^14*z6+ 6*z4*z5^14*z6- 4*z5^15*z6+ 10*z2*z3*z4*z5^12*z7-
    8*z2*z3*z5^13*z7- 8*z2*z4*z5^13*z7- 8*z3*z4*z5^13*z7+ 6*z2*z5^14*z7+
    6*z3*z5^14*z7+ 6*z4*z5^14*z7- 4*z5^15*z7- 12*z2*z3*z4*z5^11*z6*z7+
    10*z2*z3*z5^12*z6*z7+ 10*z2*z4*z5^12*z6*z7+ 10*z3*z4*z5^12*z6*z7-
    8*z2*z5^13*z6*z7- 8*z3*z5^13*z6*z7- 8*z4*z5^13*z6*z7+ 6*z5^14*z6*z7+
    z2*z3*z4*z5^11+ 10*z2*z3*z5^12+ 10*z2*z4*z5^12+ 10*z3*z4*z5^12- 13*z2*z5^13-
    13*z3*z5^13- 13*z4*z5^13+ 10*z5^14- 22*z2*z3*z4*z5^10*z6+ z2*z3*z5^11*z6+
    z2*z4*z5^11*z6+ z3*z4*z5^11*z6+ 10*z2*z5^12*z6+ 10*z3*z5^12*z6+
    10*z4*z5^12*z6- 13*z5^13*z6- 22*z2*z3*z4*z5^10*z7+ z2*z3*z5^11*z7+
    z2*z4*z5^11*z7+ z3*z4*z5^11*z7+ 10*z2*z5^12*z7+ 10*z3*z5^12*z7+
    10*z4*z5^12*z7- 13*z5^13*z7+ 55*z2*z3*z4*z5^9*z6*z7- 22*z2*z3*z5^10*z6*z7-
    22*z2*z4*z5^10*z6*z7- 22*z3*z4*z5^10*z6*z7+ z2*z5^11*z6*z7+ z3*z5^11*z6*z7+
    z4*z5^11*z6*z7+ 10*z5^12*z6*z7- 2231*z2*z3*z4*z5^9+ 1121*z2*z3*z5^10+
    1121*z2*z4*z5^10+ 1121*z3*z4*z5^10- 12*z2*z5^11- 12*z3*z5^11- 12*z4*z5^11-
    1107*z5^12+ 3363*z2*z3*z4*z5^8*z6- 2231*z2*z3*z5^9*z6- 2231*z2*z4*z5^9*z6-
    2231*z3*z4*z5^9*z6+ 1121*z2*z5^10*z6+ 1121*z3*z5^10*z6+ 1121*z4*z5^10*z6-
    12*z5^11*z6+ 3363*z2*z3*z4*z5^8*z7- 2231*z2*z3*z5^9*z7- 2231*z2*z4*z5^9*z7-
    2231*z3*z4*z5^9*z7+ 1121*z2*z5^10*z7+ 1121*z3*z5^10*z7+ 1121*z4*z5^10*z7-
    12*z5^11*z7+ 4451*z2*z3*z4*z5^7*z6*z7+ 3363*z2*z3*z5^8*z6*z7+
    3363*z2*z4*z5^8*z6*z7+ 3363*z3*z4*z5^8*z6*z7- 2231*z2*z5^9*z6*z7-
    2231*z3*z5^9*z6*z7- 2231*z4*z5^9*z6*z7+ 1121*z5^10*z6*z7-
    1121*z2*z3*z4*z5^7+ 3363*z2*z3*z5^8+ 3363*z2*z4*z5^8+ 3363*z3*z4*z5^8-
    3374*z2*z5^9- 3374*z3*z5^9- 3374*z4*z5^9+ 2264*z5^10- 4484*z2*z3*z4*z5^6*z6-
    1121*z2*z3*z5^7*z6- 1121*z2*z4*z5^7*z6- 1121*z3*z4*z5^7*z6+ 3363*z2*z5^8*z6+
    3363*z3*z5^8*z6+ 3363*z4*z5^8*z6- 3374*z5^9*z6- 4484*z2*z3*z4*z5^6*z7-
    1121*z2*z3*z5^7*z7- 1121*z2*z4*z5^7*z7- 1121*z3*z4*z5^7*z7+ 3363*z2*z5^8*z7+
    3363*z3*z5^8*z7+ 3363*z4*z5^8*z7- 3374*z5^9*z7- 3363*z2*z3*z4*z5^5*z6*z7-
    4484*z2*z3*z5^6*z6*z7- 4484*z2*z4*z5^6*z6*z7- 4484*z3*z4*z5^6*z6*z7-
    1121*z2*z5^7*z6*z7- 1121*z3*z5^7*z6*z7- 1121*z4*z5^7*z6*z7+ 3363*z5^8*z6*z7+
    4495*z2*z3*z4*z5^5+ 2740*z2*z3*z5^6+ 2740*z2*z4*z5^6+ 2740*z3*z4*z5^6+
    147*z2*z5^7+ 147*z3*z5^7+ 147*z4*z5^7+ 2604*z5^8+ 1755*z2*z3*z4*z5^4*z6+
    4495*z2*z3*z5^5*z6+ 4495*z2*z4*z5^5*z6+ 4495*z3*z4*z5^5*z6+ 2740*z2*z5^6*z6+
    2740*z3*z5^6*z6+ 2740*z4*z5^6*z6+ 147*z5^7*z6+ 1755*z2*z3*z4*z5^4*z7+
    4495*z2*z3*z5^5*z7+ 4495*z2*z4*z5^5*z7+ 4495*z3*z4*z5^5*z7+ 2740*z2*z5^6*z7+
    2740*z3*z5^6*z7+ 2740*z4*z5^6*z7+ 147*z5^7*z7+ 4359*z2*z3*z4*z5^3*z6*z7+
    1755*z2*z3*z5^4*z6*z7+ 1755*z2*z4*z5^4*z6*z7+ 1755*z3*z4*z5^4*z6*z7+
    4495*z2*z5^5*z6*z7+ 4495*z3*z5^5*z6*z7+ 4495*z4*z5^5*z6*z7+ 2740*z5^6*z6*z7-
    2988*z2*z3*z4*z5^3+ 3588*z2*z3*z5^4+ 3588*z2*z4*z5^4+ 3588*z3*z4*z5^4+
    318*z2*z5^5+ 318*z3*z5^5+ 318*z4*z5^5+ 2037*z5^6+ 633*z2*z3*z4*z5^2*z6-
    2988*z2*z3*z5^3*z6- 2988*z2*z4*z5^3*z6- 2988*z3*z4*z5^3*z6+ 3588*z2*z5^4*z6+
    3588*z3*z5^4*z6+ 3588*z4*z5^4*z6+ 318*z5^5*z6+ 633*z2*z3*z4*z5^2*z7-
    2988*z2*z3*z5^3*z7- 2988*z2*z4*z5^3*z7- 2988*z3*z4*z5^3*z7+ 3588*z2*z5^4*z7+
    3588*z3*z5^4*z7+ 3588*z4*z5^4*z7+ 318*z5^5*z7- 2637*z2*z3*z4*z5*z6*z7+
    633*z2*z3*z5^2*z6*z7+ 633*z2*z4*z5^2*z6*z7+ 633*z3*z4*z5^2*z6*z7-
    2988*z2*z5^3*z6*z7- 2988*z3*z5^3*z6*z7- 2988*z4*z5^3*z6*z7+ 3588*z5^4*z6*z7+
    167*z2*z3*z4*z5- 2202*z2*z3*z5^2- 2202*z2*z4*z5^2- 2202*z3*z4*z5^2-
    1776*z2*z5^3- 1776*z3*z5^3- 1776*z4*z5^3+ 2166*z5^4+ 1235*z2*z3*z4*z6+
    167*z2*z3*z5*z6+ 167*z2*z4*z5*z6+ 167*z3*z4*z5*z6- 2202*z2*z5^2*z6-
    2202*z3*z5^2*z6- 2202*z4*z5^2*z6- 1776*z5^3*z6+ 1235*z2*z3*z4*z7+
    167*z2*z3*z5*z7+ 167*z2*z4*z5*z7+ 167*z3*z4*z5*z7- 2202*z2*z5^2*z7-
    2202*z3*z5^2*z7- 2202*z4*z5^2*z7- 1776*z5^3*z7+ 1235*z2*z3*z6*z7+
    1235*z2*z4*z6*z7+ 1235*z3*z4*z6*z7+ 167*z2*z5*z6*z7+ 167*z3*z5*z6*z7+
    167*z4*z5*z6*z7- 2202*z5^2*z6*z7- 1235*z2*z3- 1235*z2*z4- 1235*z3*z4+
    2303*z2*z5+ 2303*z3*z5+ 2303*z4*z5- 1169*z5^2- 1235*z2*z6- 1235*z3*z6-
    1235*z4*z6+ 2303*z5*z6- 1235*z2*z7- 1235*z3*z7- 1235*z4*z7+ 2303*z5*z7-
    1235*z6*z7+ 1235",
    "10*z2*z3*z4*z5*z6^12- 8*z2*z3*z4*z6^13- 8*z2*z3*z5*z6^13- 8*z2*z4*z5*z6^13-
    8*z3*z4*z5*z6^13+ 6*z2*z3*z6^14+ 6*z2*z4*z6^14+ 6*z3*z4*z6^14+
    6*z2*z5*z6^14+ 6*z3*z5*z6^14+ 6*z4*z5*z6^14- 4*z2*z6^15- 4*z3*z6^15-
    4*z4*z6^15- 4*z5*z6^15+ 2*z6^16- 12*z2*z3*z4*z5*z6^11*z7+
    10*z2*z3*z4*z6^12*z7+ 10*z2*z3*z5*z6^12*z7+ 10*z2*z4*z5*z6^12*z7+
    10*z3*z4*z5*z6^12*z7- 8*z2*z3*z6^13*z7- 8*z2*z4*z6^13*z7- 8*z3*z4*z6^13*z7-
    8*z2*z5*z6^13*z7- 8*z3*z5*z6^13*z7- 8*z4*z5*z6^13*z7+ 6*z2*z6^14*z7+
    6*z3*z6^14*z7+ 6*z4*z6^14*z7+ 6*z5*z6^14*z7- 4*z6^15*z7-
    22*z2*z3*z4*z5*z6^10+ z2*z3*z4*z6^11+ z2*z3*z5*z6^11+ z2*z4*z5*z6^11+
    z3*z4*z5*z6^11+ 10*z2*z3*z6^12+ 10*z2*z4*z6^12+ 10*z3*z4*z6^12+
    10*z2*z5*z6^12+ 10*z3*z5*z6^12+ 10*z4*z5*z6^12- 13*z2*z6^13- 13*z3*z6^13-
    13*z4*z6^13- 13*z5*z6^13+ 10*z6^14+ 55*z2*z3*z4*z5*z6^9*z7-
    22*z2*z3*z4*z6^10*z7- 22*z2*z3*z5*z6^10*z7- 22*z2*z4*z5*z6^10*z7-
    22*z3*z4*z5*z6^10*z7+ z2*z3*z6^11*z7+ z2*z4*z6^11*z7+ z3*z4*z6^11*z7+
    z2*z5*z6^11*z7+ z3*z5*z6^11*z7+ z4*z5*z6^11*z7+ 10*z2*z6^12*z7+
    10*z3*z6^12*z7+ 10*z4*z6^12*z7+ 10*z5*z6^12*z7- 13*z6^13*z7+
    3363*z2*z3*z4*z5*z6^8- 2231*z2*z3*z4*z6^9- 2231*z2*z3*z5*z6^9-
    2231*z2*z4*z5*z6^9- 2231*z3*z4*z5*z6^9+ 1121*z2*z3*z6^10+ 1121*z2*z4*z6^10+
    1121*z3*z4*z6^10+ 1121*z2*z5*z6^10+ 1121*z3*z5*z6^10+ 1121*z4*z5*z6^10-
    12*z2*z6^11- 12*z3*z6^11- 12*z4*z6^11- 12*z5*z6^11- 1107*z6^12+
    4451*z2*z3*z4*z5*z6^7*z7+ 3363*z2*z3*z4*z6^8*z7+ 3363*z2*z3*z5*z6^8*z7+
    3363*z2*z4*z5*z6^8*z7+ 3363*z3*z4*z5*z6^8*z7- 2231*z2*z3*z6^9*z7-
    2231*z2*z4*z6^9*z7- 2231*z3*z4*z6^9*z7- 2231*z2*z5*z6^9*z7-
    2231*z3*z5*z6^9*z7- 2231*z4*z5*z6^9*z7+ 1121*z2*z6^10*z7+ 1121*z3*z6^10*z7+
    1121*z4*z6^10*z7+ 1121*z5*z6^10*z7- 12*z6^11*z7- 4484*z2*z3*z4*z5*z6^6-
    1121*z2*z3*z4*z6^7- 1121*z2*z3*z5*z6^7- 1121*z2*z4*z5*z6^7-
    1121*z3*z4*z5*z6^7+ 3363*z2*z3*z6^8+ 3363*z2*z4*z6^8+ 3363*z3*z4*z6^8+
    3363*z2*z5*z6^8+ 3363*z3*z5*z6^8+ 3363*z4*z5*z6^8- 3374*z2*z6^9-
    3374*z3*z6^9- 3374*z4*z6^9- 3374*z5*z6^9+ 2264*z6^10-
    3363*z2*z3*z4*z5*z6^5*z7- 4484*z2*z3*z4*z6^6*z7- 4484*z2*z3*z5*z6^6*z7-
    4484*z2*z4*z5*z6^6*z7- 4484*z3*z4*z5*z6^6*z7- 1121*z2*z3*z6^7*z7-
    1121*z2*z4*z6^7*z7- 1121*z3*z4*z6^7*z7- 1121*z2*z5*z6^7*z7-
    1121*z3*z5*z6^7*z7- 1121*z4*z5*z6^7*z7+ 3363*z2*z6^8*z7+ 3363*z3*z6^8*z7+
    3363*z4*z6^8*z7+ 3363*z5*z6^8*z7- 3374*z6^9*z7+ 1755*z2*z3*z4*z5*z6^4+
    4495*z2*z3*z4*z6^5+ 4495*z2*z3*z5*z6^5+ 4495*z2*z4*z5*z6^5+
    4495*z3*z4*z5*z6^5+ 2740*z2*z3*z6^6+ 2740*z2*z4*z6^6+ 2740*z3*z4*z6^6+
    2740*z2*z5*z6^6+ 2740*z3*z5*z6^6+ 2740*z4*z5*z6^6+ 147*z2*z6^7+ 147*z3*z6^7+
    147*z4*z6^7+ 147*z5*z6^7+ 2604*z6^8+ 4359*z2*z3*z4*z5*z6^3*z7+
    1755*z2*z3*z4*z6^4*z7+ 1755*z2*z3*z5*z6^4*z7+ 1755*z2*z4*z5*z6^4*z7+
    1755*z3*z4*z5*z6^4*z7+ 4495*z2*z3*z6^5*z7+ 4495*z2*z4*z6^5*z7+
    4495*z3*z4*z6^5*z7+ 4495*z2*z5*z6^5*z7+ 4495*z3*z5*z6^5*z7+
    4495*z4*z5*z6^5*z7+ 2740*z2*z6^6*z7+ 2740*z3*z6^6*z7+ 2740*z4*z6^6*z7+
    2740*z5*z6^6*z7+ 147*z6^7*z7+ 633*z2*z3*z4*z5*z6^2- 2988*z2*z3*z4*z6^3-
    2988*z2*z3*z5*z6^3- 2988*z2*z4*z5*z6^3- 2988*z3*z4*z5*z6^3+ 3588*z2*z3*z6^4+
    3588*z2*z4*z6^4+ 3588*z3*z4*z6^4+ 3588*z2*z5*z6^4+ 3588*z3*z5*z6^4+
    3588*z4*z5*z6^4+ 318*z2*z6^5+ 318*z3*z6^5+ 318*z4*z6^5+ 318*z5*z6^5+
    2037*z6^6- 2637*z2*z3*z4*z5*z6*z7+ 633*z2*z3*z4*z6^2*z7+
    633*z2*z3*z5*z6^2*z7+ 633*z2*z4*z5*z6^2*z7+ 633*z3*z4*z5*z6^2*z7-
    2988*z2*z3*z6^3*z7- 2988*z2*z4*z6^3*z7- 2988*z3*z4*z6^3*z7-
    2988*z2*z5*z6^3*z7- 2988*z3*z5*z6^3*z7- 2988*z4*z5*z6^3*z7+ 3588*z2*z6^4*z7+
    3588*z3*z6^4*z7+ 3588*z4*z6^4*z7+ 3588*z5*z6^4*z7+ 318*z6^5*z7+
    1235*z2*z3*z4*z5+ 167*z2*z3*z4*z6+ 167*z2*z3*z5*z6+ 167*z2*z4*z5*z6+
    167*z3*z4*z5*z6- 2202*z2*z3*z6^2- 2202*z2*z4*z6^2- 2202*z3*z4*z6^2-
    2202*z2*z5*z6^2- 2202*z3*z5*z6^2- 2202*z4*z5*z6^2- 1776*z2*z6^3-
    1776*z3*z6^3- 1776*z4*z6^3- 1776*z5*z6^3+ 2166*z6^4+ 1235*z2*z3*z4*z7+
    1235*z2*z3*z5*z7+ 1235*z2*z4*z5*z7+ 1235*z3*z4*z5*z7+ 167*z2*z3*z6*z7+
    167*z2*z4*z6*z7+ 167*z3*z4*z6*z7+ 167*z2*z5*z6*z7+ 167*z3*z5*z6*z7+
    167*z4*z5*z6*z7- 2202*z2*z6^2*z7- 2202*z3*z6^2*z7- 2202*z4*z6^2*z7-
    2202*z5*z6^2*z7- 1776*z6^3*z7- 1235*z2*z3- 1235*z2*z4- 1235*z3*z4-
    1235*z2*z5- 1235*z3*z5- 1235*z4*z5+ 2303*z2*z6+ 2303*z3*z6+ 2303*z4*z6+
    2303*z5*z6- 1169*z6^2- 1235*z2*z7- 1235*z3*z7- 1235*z4*z7- 1235*z5*z7+
    2303*z6*z7+ 1235",
    "- 12*z2*z3*z4*z5*z6*z7^11+ 10*z2*z3*z4*z5*z7^12+ 10*z2*z3*z4*z6*z7^12+
    10*z2*z3*z5*z6*z7^12+ 10*z2*z4*z5*z6*z7^12+ 10*z3*z4*z5*z6*z7^12-
    8*z2*z3*z4*z7^13- 8*z2*z3*z5*z7^13- 8*z2*z4*z5*z7^13- 8*z3*z4*z5*z7^13-
    8*z2*z3*z6*z7^13- 8*z2*z4*z6*z7^13- 8*z3*z4*z6*z7^13- 8*z2*z5*z6*z7^13-
    8*z3*z5*z6*z7^13- 8*z4*z5*z6*z7^13+ 6*z2*z3*z7^14+ 6*z2*z4*z7^14+
    6*z3*z4*z7^14+ 6*z2*z5*z7^14+ 6*z3*z5*z7^14+ 6*z4*z5*z7^14+ 6*z2*z6*z7^14+
    6*z3*z6*z7^14+ 6*z4*z6*z7^14+ 6*z5*z6*z7^14- 4*z2*z7^15- 4*z3*z7^15-
    4*z4*z7^15- 4*z5*z7^15- 4*z6*z7^15+ 2*z7^16+ 55*z2*z3*z4*z5*z6*z7^9-
    22*z2*z3*z4*z5*z7^10- 22*z2*z3*z4*z6*z7^10- 22*z2*z3*z5*z6*z7^10-
    22*z2*z4*z5*z6*z7^10- 22*z3*z4*z5*z6*z7^10+ z2*z3*z4*z7^11+ z2*z3*z5*z7^11+
    z2*z4*z5*z7^11+ z3*z4*z5*z7^11+ z2*z3*z6*z7^11+ z2*z4*z6*z7^11+
    z3*z4*z6*z7^11+ z2*z5*z6*z7^11+ z3*z5*z6*z7^11+ z4*z5*z6*z7^11+
    10*z2*z3*z7^12+ 10*z2*z4*z7^12+ 10*z3*z4*z7^12+ 10*z2*z5*z7^12+
    10*z3*z5*z7^12+ 10*z4*z5*z7^12+ 10*z2*z6*z7^12+ 10*z3*z6*z7^12+
    10*z4*z6*z7^12+ 10*z5*z6*z7^12- 13*z2*z7^13- 13*z3*z7^13- 13*z4*z7^13-
    13*z5*z7^13- 13*z6*z7^13+ 10*z7^14+ 4451*z2*z3*z4*z5*z6*z7^7+
    3363*z2*z3*z4*z5*z7^8+ 3363*z2*z3*z4*z6*z7^8+ 3363*z2*z3*z5*z6*z7^8+
    3363*z2*z4*z5*z6*z7^8+ 3363*z3*z4*z5*z6*z7^8- 2231*z2*z3*z4*z7^9-
    2231*z2*z3*z5*z7^9- 2231*z2*z4*z5*z7^9- 2231*z3*z4*z5*z7^9-
    2231*z2*z3*z6*z7^9- 2231*z2*z4*z6*z7^9- 2231*z3*z4*z6*z7^9-
    2231*z2*z5*z6*z7^9- 2231*z3*z5*z6*z7^9- 2231*z4*z5*z6*z7^9+
    1121*z2*z3*z7^10+ 1121*z2*z4*z7^10+ 1121*z3*z4*z7^10+ 1121*z2*z5*z7^10+
    1121*z3*z5*z7^10+ 1121*z4*z5*z7^10+ 1121*z2*z6*z7^10+ 1121*z3*z6*z7^10+
    1121*z4*z6*z7^10+ 1121*z5*z6*z7^10- 12*z2*z7^11- 12*z3*z7^11- 12*z4*z7^11-
    12*z5*z7^11- 12*z6*z7^11- 1107*z7^12- 3363*z2*z3*z4*z5*z6*z7^5-
    4484*z2*z3*z4*z5*z7^6- 4484*z2*z3*z4*z6*z7^6- 4484*z2*z3*z5*z6*z7^6-
    4484*z2*z4*z5*z6*z7^6- 4484*z3*z4*z5*z6*z7^6- 1121*z2*z3*z4*z7^7-
    1121*z2*z3*z5*z7^7- 1121*z2*z4*z5*z7^7- 1121*z3*z4*z5*z7^7-
    1121*z2*z3*z6*z7^7- 1121*z2*z4*z6*z7^7- 1121*z3*z4*z6*z7^7-
    1121*z2*z5*z6*z7^7- 1121*z3*z5*z6*z7^7- 1121*z4*z5*z6*z7^7+ 3363*z2*z3*z7^8+
    3363*z2*z4*z7^8+ 3363*z3*z4*z7^8+ 3363*z2*z5*z7^8+ 3363*z3*z5*z7^8+
    3363*z4*z5*z7^8+ 3363*z2*z6*z7^8+ 3363*z3*z6*z7^8+ 3363*z4*z6*z7^8+
    3363*z5*z6*z7^8- 3374*z2*z7^9- 3374*z3*z7^9- 3374*z4*z7^9- 3374*z5*z7^9-
    3374*z6*z7^9+ 2264*z7^10+ 4359*z2*z3*z4*z5*z6*z7^3+ 1755*z2*z3*z4*z5*z7^4+
    1755*z2*z3*z4*z6*z7^4+ 1755*z2*z3*z5*z6*z7^4+ 1755*z2*z4*z5*z6*z7^4+
    1755*z3*z4*z5*z6*z7^4+ 4495*z2*z3*z4*z7^5+ 4495*z2*z3*z5*z7^5+
    4495*z2*z4*z5*z7^5+ 4495*z3*z4*z5*z7^5+ 4495*z2*z3*z6*z7^5+
    4495*z2*z4*z6*z7^5+ 4495*z3*z4*z6*z7^5+ 4495*z2*z5*z6*z7^5+
    4495*z3*z5*z6*z7^5+ 4495*z4*z5*z6*z7^5+ 2740*z2*z3*z7^6+ 2740*z2*z4*z7^6+
    2740*z3*z4*z7^6+ 2740*z2*z5*z7^6+ 2740*z3*z5*z7^6+ 2740*z4*z5*z7^6+
    2740*z2*z6*z7^6+ 2740*z3*z6*z7^6+ 2740*z4*z6*z7^6+ 2740*z5*z6*z7^6+
    147*z2*z7^7+ 147*z3*z7^7+ 147*z4*z7^7+ 147*z5*z7^7+ 147*z6*z7^7+ 2604*z7^8-
    2637*z2*z3*z4*z5*z6*z7+ 633*z2*z3*z4*z5*z7^2+ 633*z2*z3*z4*z6*z7^2+
    633*z2*z3*z5*z6*z7^2+ 633*z2*z4*z5*z6*z7^2+ 633*z3*z4*z5*z6*z7^2-
    2988*z2*z3*z4*z7^3- 2988*z2*z3*z5*z7^3- 2988*z2*z4*z5*z7^3-
    2988*z3*z4*z5*z7^3- 2988*z2*z3*z6*z7^3- 2988*z2*z4*z6*z7^3-
    2988*z3*z4*z6*z7^3- 2988*z2*z5*z6*z7^3- 2988*z3*z5*z6*z7^3-
    2988*z4*z5*z6*z7^3+ 3588*z2*z3*z7^4+ 3588*z2*z4*z7^4+ 3588*z3*z4*z7^4+
    3588*z2*z5*z7^4+ 3588*z3*z5*z7^4+ 3588*z4*z5*z7^4+ 3588*z2*z6*z7^4+
    3588*z3*z6*z7^4+ 3588*z4*z6*z7^4+ 3588*z5*z6*z7^4+ 318*z2*z7^5+ 318*z3*z7^5+
    318*z4*z7^5+ 318*z5*z7^5+ 318*z6*z7^5+ 2037*z7^6+ 1235*z2*z3*z4*z5+
    1235*z2*z3*z4*z6+ 1235*z2*z3*z5*z6+ 1235*z2*z4*z5*z6+ 1235*z3*z4*z5*z6+
    167*z2*z3*z4*z7+ 167*z2*z3*z5*z7+ 167*z2*z4*z5*z7+ 167*z3*z4*z5*z7+
    167*z2*z3*z6*z7+ 167*z2*z4*z6*z7+ 167*z3*z4*z6*z7+ 167*z2*z5*z6*z7+
    167*z3*z5*z6*z7+ 167*z4*z5*z6*z7- 2202*z2*z3*z7^2- 2202*z2*z4*z7^2-
    2202*z3*z4*z7^2- 2202*z2*z5*z7^2- 2202*z3*z5*z7^2- 2202*z4*z5*z7^2-
    2202*z2*z6*z7^2- 2202*z3*z6*z7^2- 2202*z4*z6*z7^2- 2202*z5*z6*z7^2-
    1776*z2*z7^3- 1776*z3*z7^3- 1776*z4*z7^3- 1776*z5*z7^3- 1776*z6*z7^3+
    2166*z7^4- 1235*z2*z3- 1235*z2*z4- 1235*z3*z4- 1235*z2*z5- 1235*z3*z5-
    1235*z4*z5- 1235*z2*z6- 1235*z3*z6- 1235*z4*z6- 1235*z5*z6+ 2303*z2*z7+
    2303*z3*z7+ 2303*z4*z7+ 2303*z5*z7+ 2303*z6*z7- 1169*z7^2+ 1235",
    "2*z2^15- 2*z2^14*z3- 2*z2^13*z3^2- 2*z2^12*z3^3- 2*z2^11*z3^4-
    2*z2^10*z3^5- 2*z2^9*z3^6- 2*z2^8*z3^7- 2*z2^7*z3^8- 2*z2^6*z3^9-
    2*z2^5*z3^10- 2*z2^4*z3^11- 2*z2^3*z3^12- 2*z2^2*z3^13- 2*z2*z3^14+ 2*z3^15-
    4*z2^14*z4+ 2*z2^13*z3*z4+ 2*z2^12*z3^2*z4+ 2*z2^11*z3^3*z4+
    2*z2^10*z3^4*z4+ 2*z2^9*z3^5*z4+ 2*z2^8*z3^6*z4+ 2*z2^7*z3^7*z4+
    2*z2^6*z3^8*z4+ 2*z2^5*z3^9*z4+ 2*z2^4*z3^10*z4+ 2*z2^3*z3^11*z4+
    2*z2^2*z3^12*z4+ 2*z2*z3^13*z4- 4*z3^14*z4- 4*z2^14*z5+ 2*z2^13*z3*z5+
    2*z2^12*z3^2*z5+ 2*z2^11*z3^3*z5+ 2*z2^10*z3^4*z5+ 2*z2^9*z3^5*z5+
    2*z2^8*z3^6*z5+ 2*z2^7*z3^7*z5+ 2*z2^6*z3^8*z5+ 2*z2^5*z3^9*z5+
    2*z2^4*z3^10*z5+ 2*z2^3*z3^11*z5+ 2*z2^2*z3^12*z5+ 2*z2*z3^13*z5-
    4*z3^14*z5+ 6*z2^13*z4*z5- 2*z2^12*z3*z4*z5- 2*z2^11*z3^2*z4*z5-
    2*z2^10*z3^3*z4*z5- 2*z2^9*z3^4*z4*z5- 2*z2^8*z3^5*z4*z5- 2*z2^7*z3^6*z4*z5-
    2*z2^6*z3^7*z4*z5- 2*z2^5*z3^8*z4*z5- 2*z2^4*z3^9*z4*z5- 2*z2^3*z3^10*z4*z5-
    2*z2^2*z3^11*z4*z5- 2*z2*z3^12*z4*z5+ 6*z3^13*z4*z5- 4*z2^14*z6+
    2*z2^13*z3*z6+ 2*z2^12*z3^2*z6+ 2*z2^11*z3^3*z6+ 2*z2^10*z3^4*z6+
    2*z2^9*z3^5*z6+ 2*z2^8*z3^6*z6+ 2*z2^7*z3^7*z6+ 2*z2^6*z3^8*z6+
    2*z2^5*z3^9*z6+ 2*z2^4*z3^10*z6+ 2*z2^3*z3^11*z6+ 2*z2^2*z3^12*z6+
    2*z2*z3^13*z6- 4*z3^14*z6+ 6*z2^13*z4*z6- 2*z2^12*z3*z4*z6-
    2*z2^11*z3^2*z4*z6- 2*z2^10*z3^3*z4*z6- 2*z2^9*z3^4*z4*z6-
    2*z2^8*z3^5*z4*z6- 2*z2^7*z3^6*z4*z6- 2*z2^6*z3^7*z4*z6- 2*z2^5*z3^8*z4*z6-
    2*z2^4*z3^9*z4*z6- 2*z2^3*z3^10*z4*z6- 2*z2^2*z3^11*z4*z6- 2*z2*z3^12*z4*z6+
    6*z3^13*z4*z6+ 6*z2^13*z5*z6- 2*z2^12*z3*z5*z6- 2*z2^11*z3^2*z5*z6-
    2*z2^10*z3^3*z5*z6- 2*z2^9*z3^4*z5*z6- 2*z2^8*z3^5*z5*z6- 2*z2^7*z3^6*z5*z6-
    2*z2^6*z3^7*z5*z6- 2*z2^5*z3^8*z5*z6- 2*z2^4*z3^9*z5*z6- 2*z2^3*z3^10*z5*z6-
    2*z2^2*z3^11*z5*z6- 2*z2*z3^12*z5*z6+ 6*z3^13*z5*z6- 8*z2^12*z4*z5*z6+
    2*z2^11*z3*z4*z5*z6+ 2*z2^10*z3^2*z4*z5*z6+ 2*z2^9*z3^3*z4*z5*z6+
    2*z2^8*z3^4*z4*z5*z6+ 2*z2^7*z3^5*z4*z5*z6+ 2*z2^6*z3^6*z4*z5*z6+
    2*z2^5*z3^7*z4*z5*z6+ 2*z2^4*z3^8*z4*z5*z6+ 2*z2^3*z3^9*z4*z5*z6+
    2*z2^2*z3^10*z4*z5*z6+ 2*z2*z3^11*z4*z5*z6- 8*z3^12*z4*z5*z6- 4*z2^14*z7+
    2*z2^13*z3*z7+ 2*z2^12*z3^2*z7+ 2*z2^11*z3^3*z7+ 2*z2^10*z3^4*z7+
    2*z2^9*z3^5*z7+ 2*z2^8*z3^6*z7+ 2*z2^7*z3^7*z7+ 2*z2^6*z3^8*z7+
    2*z2^5*z3^9*z7+ 2*z2^4*z3^10*z7+ 2*z2^3*z3^11*z7+ 2*z2^2*z3^12*z7+
    2*z2*z3^13*z7- 4*z3^14*z7+ 6*z2^13*z4*z7- 2*z2^12*z3*z4*z7-
    2*z2^11*z3^2*z4*z7- 2*z2^10*z3^3*z4*z7- 2*z2^9*z3^4*z4*z7-
    2*z2^8*z3^5*z4*z7- 2*z2^7*z3^6*z4*z7- 2*z2^6*z3^7*z4*z7- 2*z2^5*z3^8*z4*z7-
    2*z2^4*z3^9*z4*z7- 2*z2^3*z3^10*z4*z7- 2*z2^2*z3^11*z4*z7- 2*z2*z3^12*z4*z7+
    6*z3^13*z4*z7+ 6*z2^13*z5*z7- 2*z2^12*z3*z5*z7- 2*z2^11*z3^2*z5*z7-
    2*z2^10*z3^3*z5*z7- 2*z2^9*z3^4*z5*z7- 2*z2^8*z3^5*z5*z7- 2*z2^7*z3^6*z5*z7-
    2*z2^6*z3^7*z5*z7- 2*z2^5*z3^8*z5*z7- 2*z2^4*z3^9*z5*z7- 2*z2^3*z3^10*z5*z7-
    2*z2^2*z3^11*z5*z7- 2*z2*z3^12*z5*z7+ 6*z3^13*z5*z7- 8*z2^12*z4*z5*z7+
    2*z2^11*z3*z4*z5*z7+ 2*z2^10*z3^2*z4*z5*z7+ 2*z2^9*z3^3*z4*z5*z7+
    2*z2^8*z3^4*z4*z5*z7+ 2*z2^7*z3^5*z4*z5*z7+ 2*z2^6*z3^6*z4*z5*z7+
    2*z2^5*z3^7*z4*z5*z7+ 2*z2^4*z3^8*z4*z5*z7+ 2*z2^3*z3^9*z4*z5*z7+
    2*z2^2*z3^10*z4*z5*z7+ 2*z2*z3^11*z4*z5*z7- 8*z3^12*z4*z5*z7+ 6*z2^13*z6*z7-
    2*z2^12*z3*z6*z7- 2*z2^11*z3^2*z6*z7- 2*z2^10*z3^3*z6*z7- 2*z2^9*z3^4*z6*z7-
    2*z2^8*z3^5*z6*z7- 2*z2^7*z3^6*z6*z7- 2*z2^6*z3^7*z6*z7- 2*z2^5*z3^8*z6*z7-
    2*z2^4*z3^9*z6*z7- 2*z2^3*z3^10*z6*z7- 2*z2^2*z3^11*z6*z7- 2*z2*z3^12*z6*z7+
    6*z3^13*z6*z7- 8*z2^12*z4*z6*z7+ 2*z2^11*z3*z4*z6*z7+ 2*z2^10*z3^2*z4*z6*z7+
    2*z2^9*z3^3*z4*z6*z7+ 2*z2^8*z3^4*z4*z6*z7+ 2*z2^7*z3^5*z4*z6*z7+
    2*z2^6*z3^6*z4*z6*z7+ 2*z2^5*z3^7*z4*z6*z7+ 2*z2^4*z3^8*z4*z6*z7+
    2*z2^3*z3^9*z4*z6*z7+ 2*z2^2*z3^10*z4*z6*z7+ 2*z2*z3^11*z4*z6*z7-
    8*z3^12*z4*z6*z7- 8*z2^12*z5*z6*z7+ 2*z2^11*z3*z5*z6*z7+
    2*z2^10*z3^2*z5*z6*z7+ 2*z2^9*z3^3*z5*z6*z7+ 2*z2^8*z3^4*z5*z6*z7+
    2*z2^7*z3^5*z5*z6*z7+ 2*z2^6*z3^6*z5*z6*z7+ 2*z2^5*z3^7*z5*z6*z7+
    2*z2^4*z3^8*z5*z6*z7+ 2*z2^3*z3^9*z5*z6*z7+ 2*z2^2*z3^10*z5*z6*z7+
    2*z2*z3^11*z5*z6*z7- 8*z3^12*z5*z6*z7+ 10*z2^11*z4*z5*z6*z7-
    2*z2^10*z3*z4*z5*z6*z7- 2*z2^9*z3^2*z4*z5*z6*z7- 2*z2^8*z3^3*z4*z5*z6*z7-
    2*z2^7*z3^4*z4*z5*z6*z7- 2*z2^6*z3^5*z4*z5*z6*z7- 2*z2^5*z3^6*z4*z5*z6*z7-
    2*z2^4*z3^7*z4*z5*z6*z7- 2*z2^3*z3^8*z4*z5*z6*z7- 2*z2^2*z3^9*z4*z5*z6*z7-
    2*z2*z3^10*z4*z5*z6*z7+ 10*z3^11*z4*z5*z6*z7+ 10*z2^13- 3*z2^12*z3-
    3*z2^11*z3^2- 3*z2^10*z3^3- 3*z2^9*z3^4- 3*z2^8*z3^5- 3*z2^7*z3^6-
    3*z2^6*z3^7- 3*z2^5*z3^8- 3*z2^4*z3^9- 3*z2^3*z3^10- 3*z2^2*z3^11-
    3*z2*z3^12+ 10*z3^13- 13*z2^12*z4- 3*z2^11*z3*z4- 3*z2^10*z3^2*z4-
    3*z2^9*z3^3*z4- 3*z2^8*z3^4*z4- 3*z2^7*z3^5*z4- 3*z2^6*z3^6*z4-
    3*z2^5*z3^7*z4- 3*z2^4*z3^8*z4- 3*z2^3*z3^9*z4- 3*z2^2*z3^10*z4-
    3*z2*z3^11*z4- 13*z3^12*z4- 13*z2^12*z5- 3*z2^11*z3*z5- 3*z2^10*z3^2*z5-
    3*z2^9*z3^3*z5- 3*z2^8*z3^4*z5- 3*z2^7*z3^5*z5- 3*z2^6*z3^6*z5-
    3*z2^5*z3^7*z5- 3*z2^4*z3^8*z5- 3*z2^3*z3^9*z5- 3*z2^2*z3^10*z5-
    3*z2*z3^11*z5- 13*z3^12*z5+ 10*z2^11*z4*z5+ 11*z2^10*z3*z4*z5+
    11*z2^9*z3^2*z4*z5+ 11*z2^8*z3^3*z4*z5+ 11*z2^7*z3^4*z4*z5+
    11*z2^6*z3^5*z4*z5+ 11*z2^5*z3^6*z4*z5+ 11*z2^4*z3^7*z4*z5+
    11*z2^3*z3^8*z4*z5+ 11*z2^2*z3^9*z4*z5+ 11*z2*z3^10*z4*z5+ 10*z3^11*z4*z5-
    13*z2^12*z6- 3*z2^11*z3*z6- 3*z2^10*z3^2*z6- 3*z2^9*z3^3*z6- 3*z2^8*z3^4*z6-
    3*z2^7*z3^5*z6- 3*z2^6*z3^6*z6- 3*z2^5*z3^7*z6- 3*z2^4*z3^8*z6-
    3*z2^3*z3^9*z6- 3*z2^2*z3^10*z6- 3*z2*z3^11*z6- 13*z3^12*z6+ 10*z2^11*z4*z6+
    11*z2^10*z3*z4*z6+ 11*z2^9*z3^2*z4*z6+ 11*z2^8*z3^3*z4*z6+
    11*z2^7*z3^4*z4*z6+ 11*z2^6*z3^5*z4*z6+ 11*z2^5*z3^6*z4*z6+
    11*z2^4*z3^7*z4*z6+ 11*z2^3*z3^8*z4*z6+ 11*z2^2*z3^9*z4*z6+
    11*z2*z3^10*z4*z6+ 10*z3^11*z4*z6+ 10*z2^11*z5*z6+ 11*z2^10*z3*z5*z6+
    11*z2^9*z3^2*z5*z6+ 11*z2^8*z3^3*z5*z6+ 11*z2^7*z3^4*z5*z6+
    11*z2^6*z3^5*z5*z6+ 11*z2^5*z3^6*z5*z6+ 11*z2^4*z3^7*z5*z6+
    11*z2^3*z3^8*z5*z6+ 11*z2^2*z3^9*z5*z6+ 11*z2*z3^10*z5*z6+ 10*z3^11*z5*z6+
    z2^10*z4*z5*z6- 21*z2^9*z3*z4*z5*z6- 21*z2^8*z3^2*z4*z5*z6-
    21*z2^7*z3^3*z4*z5*z6- 21*z2^6*z3^4*z4*z5*z6- 21*z2^5*z3^5*z4*z5*z6-
    21*z2^4*z3^6*z4*z5*z6- 21*z2^3*z3^7*z4*z5*z6- 21*z2^2*z3^8*z4*z5*z6-
    21*z2*z3^9*z4*z5*z6+ z3^10*z4*z5*z6- 13*z2^12*z7- 3*z2^11*z3*z7-
    3*z2^10*z3^2*z7- 3*z2^9*z3^3*z7- 3*z2^8*z3^4*z7- 3*z2^7*z3^5*z7-
    3*z2^6*z3^6*z7- 3*z2^5*z3^7*z7- 3*z2^4*z3^8*z7- 3*z2^3*z3^9*z7-
    3*z2^2*z3^10*z7- 3*z2*z3^11*z7- 13*z3^12*z7+ 10*z2^11*z4*z7+
    11*z2^10*z3*z4*z7+ 11*z2^9*z3^2*z4*z7+ 11*z2^8*z3^3*z4*z7+
    11*z2^7*z3^4*z4*z7+ 11*z2^6*z3^5*z4*z7+ 11*z2^5*z3^6*z4*z7+
    11*z2^4*z3^7*z4*z7+ 11*z2^3*z3^8*z4*z7+ 11*z2^2*z3^9*z4*z7+
    11*z2*z3^10*z4*z7+ 10*z3^11*z4*z7+ 10*z2^11*z5*z7+ 11*z2^10*z3*z5*z7+
    11*z2^9*z3^2*z5*z7+ 11*z2^8*z3^3*z5*z7+ 11*z2^7*z3^4*z5*z7+
    11*z2^6*z3^5*z5*z7+ 11*z2^5*z3^6*z5*z7+ 11*z2^4*z3^7*z5*z7+
    11*z2^3*z3^8*z5*z7+ 11*z2^2*z3^9*z5*z7+ 11*z2*z3^10*z5*z7+ 10*z3^11*z5*z7+
    z2^10*z4*z5*z7- 21*z2^9*z3*z4*z5*z7- 21*z2^8*z3^2*z4*z5*z7-
    21*z2^7*z3^3*z4*z5*z7- 21*z2^6*z3^4*z4*z5*z7- 21*z2^5*z3^5*z4*z5*z7-
    21*z2^4*z3^6*z4*z5*z7- 21*z2^3*z3^7*z4*z5*z7- 21*z2^2*z3^8*z4*z5*z7-
    21*z2*z3^9*z4*z5*z7+ z3^10*z4*z5*z7+ 10*z2^11*z6*z7+ 11*z2^10*z3*z6*z7+
    11*z2^9*z3^2*z6*z7+ 11*z2^8*z3^3*z6*z7+ 11*z2^7*z3^4*z6*z7+
    11*z2^6*z3^5*z6*z7+ 11*z2^5*z3^6*z6*z7+ 11*z2^4*z3^7*z6*z7+
    11*z2^3*z3^8*z6*z7+ 11*z2^2*z3^9*z6*z7+ 11*z2*z3^10*z6*z7+ 10*z3^11*z6*z7+
    z2^10*z4*z6*z7- 21*z2^9*z3*z4*z6*z7- 21*z2^8*z3^2*z4*z6*z7-
    21*z2^7*z3^3*z4*z6*z7- 21*z2^6*z3^4*z4*z6*z7- 21*z2^5*z3^5*z4*z6*z7-
    21*z2^4*z3^6*z4*z6*z7- 21*z2^3*z3^7*z4*z6*z7- 21*z2^2*z3^8*z4*z6*z7-
    21*z2*z3^9*z4*z6*z7+ z3^10*z4*z6*z7+ z2^10*z5*z6*z7- 21*z2^9*z3*z5*z6*z7-
    21*z2^8*z3^2*z5*z6*z7- 21*z2^7*z3^3*z5*z6*z7- 21*z2^6*z3^4*z5*z6*z7-
    21*z2^5*z3^5*z5*z6*z7- 21*z2^4*z3^6*z5*z6*z7- 21*z2^3*z3^7*z5*z6*z7-
    21*z2^2*z3^8*z5*z6*z7- 21*z2*z3^9*z5*z6*z7+ z3^10*z5*z6*z7-
    22*z2^9*z4*z5*z6*z7+ 33*z2^8*z3*z4*z5*z6*z7+ 33*z2^7*z3^2*z4*z5*z6*z7+
    33*z2^6*z3^3*z4*z5*z6*z7+ 33*z2^5*z3^4*z4*z5*z6*z7+
    33*z2^4*z3^5*z4*z5*z6*z7+ 33*z2^3*z3^6*z4*z5*z6*z7+
    33*z2^2*z3^7*z4*z5*z6*z7+ 33*z2*z3^8*z4*z5*z6*z7- 22*z3^9*z4*z5*z6*z7-
    1107*z2^11- 1119*z2^10*z3- 1119*z2^9*z3^2- 1119*z2^8*z3^3- 1119*z2^7*z3^4-
    1119*z2^6*z3^5- 1119*z2^5*z3^6- 1119*z2^4*z3^7- 1119*z2^3*z3^8-
    1119*z2^2*z3^9- 1119*z2*z3^10- 1107*z3^11- 12*z2^10*z4+ 1109*z2^9*z3*z4+
    1109*z2^8*z3^2*z4+ 1109*z2^7*z3^3*z4+ 1109*z2^6*z3^4*z4+ 1109*z2^5*z3^5*z4+
    1109*z2^4*z3^6*z4+ 1109*z2^3*z3^7*z4+ 1109*z2^2*z3^8*z4+ 1109*z2*z3^9*z4-
    12*z3^10*z4- 12*z2^10*z5+ 1109*z2^9*z3*z5+ 1109*z2^8*z3^2*z5+
    1109*z2^7*z3^3*z5+ 1109*z2^6*z3^4*z5+ 1109*z2^5*z3^5*z5+ 1109*z2^4*z3^6*z5+
    1109*z2^3*z3^7*z5+ 1109*z2^2*z3^8*z5+ 1109*z2*z3^9*z5- 12*z3^10*z5+
    1121*z2^9*z4*z5- 1110*z2^8*z3*z4*z5- 1110*z2^7*z3^2*z4*z5-
    1110*z2^6*z3^3*z4*z5- 1110*z2^5*z3^4*z4*z5- 1110*z2^4*z3^5*z4*z5-
    1110*z2^3*z3^6*z4*z5- 1110*z2^2*z3^7*z4*z5- 1110*z2*z3^8*z4*z5+
    1121*z3^9*z4*z5- 12*z2^10*z6+ 1109*z2^9*z3*z6+ 1109*z2^8*z3^2*z6+
    1109*z2^7*z3^3*z6+ 1109*z2^6*z3^4*z6+ 1109*z2^5*z3^5*z6+ 1109*z2^4*z3^6*z6+
    1109*z2^3*z3^7*z6+ 1109*z2^2*z3^8*z6+ 1109*z2*z3^9*z6- 12*z3^10*z6+
    1121*z2^9*z4*z6- 1110*z2^8*z3*z4*z6- 1110*z2^7*z3^2*z4*z6-
    1110*z2^6*z3^3*z4*z6- 1110*z2^5*z3^4*z4*z6- 1110*z2^4*z3^5*z4*z6-
    1110*z2^3*z3^6*z4*z6- 1110*z2^2*z3^7*z4*z6- 1110*z2*z3^8*z4*z6+
    1121*z3^9*z4*z6+ 1121*z2^9*z5*z6- 1110*z2^8*z3*z5*z6- 1110*z2^7*z3^2*z5*z6-
    1110*z2^6*z3^3*z5*z6- 1110*z2^5*z3^4*z5*z6- 1110*z2^4*z3^5*z5*z6-
    1110*z2^3*z3^6*z5*z6- 1110*z2^2*z3^7*z5*z6- 1110*z2*z3^8*z5*z6+
    1121*z3^9*z5*z6- 2231*z2^8*z4*z5*z6+ 1132*z2^7*z3*z4*z5*z6+
    1132*z2^6*z3^2*z4*z5*z6+ 1132*z2^5*z3^3*z4*z5*z6+ 1132*z2^4*z3^4*z4*z5*z6+
    1132*z2^3*z3^5*z4*z5*z6+ 1132*z2^2*z3^6*z4*z5*z6+ 1132*z2*z3^7*z4*z5*z6-
    2231*z3^8*z4*z5*z6- 12*z2^10*z7+ 1109*z2^9*z3*z7+ 1109*z2^8*z3^2*z7+
    1109*z2^7*z3^3*z7+ 1109*z2^6*z3^4*z7+ 1109*z2^5*z3^5*z7+ 1109*z2^4*z3^6*z7+
    1109*z2^3*z3^7*z7+ 1109*z2^2*z3^8*z7+ 1109*z2*z3^9*z7- 12*z3^10*z7+
    1121*z2^9*z4*z7- 1110*z2^8*z3*z4*z7- 1110*z2^7*z3^2*z4*z7-
    1110*z2^6*z3^3*z4*z7- 1110*z2^5*z3^4*z4*z7- 1110*z2^4*z3^5*z4*z7-
    1110*z2^3*z3^6*z4*z7- 1110*z2^2*z3^7*z4*z7- 1110*z2*z3^8*z4*z7+
    1121*z3^9*z4*z7+ 1121*z2^9*z5*z7- 1110*z2^8*z3*z5*z7- 1110*z2^7*z3^2*z5*z7-
    1110*z2^6*z3^3*z5*z7- 1110*z2^5*z3^4*z5*z7- 1110*z2^4*z3^5*z5*z7-
    1110*z2^3*z3^6*z5*z7- 1110*z2^2*z3^7*z5*z7- 1110*z2*z3^8*z5*z7+
    1121*z3^9*z5*z7- 2231*z2^8*z4*z5*z7+ 1132*z2^7*z3*z4*z5*z7+
    1132*z2^6*z3^2*z4*z5*z7+ 1132*z2^5*z3^3*z4*z5*z7+ 1132*z2^4*z3^4*z4*z5*z7+
    1132*z2^3*z3^5*z4*z5*z7+ 1132*z2^2*z3^6*z4*z5*z7+ 1132*z2*z3^7*z4*z5*z7-
    2231*z3^8*z4*z5*z7+ 1121*z2^9*z6*z7- 1110*z2^8*z3*z6*z7-
    1110*z2^7*z3^2*z6*z7- 1110*z2^6*z3^3*z6*z7- 1110*z2^5*z3^4*z6*z7-
    1110*z2^4*z3^5*z6*z7- 1110*z2^3*z3^6*z6*z7- 1110*z2^2*z3^7*z6*z7-
    1110*z2*z3^8*z6*z7+ 1121*z3^9*z6*z7- 2231*z2^8*z4*z6*z7+
    1132*z2^7*z3*z4*z6*z7+ 1132*z2^6*z3^2*z4*z6*z7+ 1132*z2^5*z3^3*z4*z6*z7+
    1132*z2^4*z3^4*z4*z6*z7+ 1132*z2^3*z3^5*z4*z6*z7+ 1132*z2^2*z3^6*z4*z6*z7+
    1132*z2*z3^7*z4*z6*z7- 2231*z3^8*z4*z6*z7- 2231*z2^8*z5*z6*z7+
    1132*z2^7*z3*z5*z6*z7+ 1132*z2^6*z3^2*z5*z6*z7+ 1132*z2^5*z3^3*z5*z6*z7+
    1132*z2^4*z3^4*z5*z6*z7+ 1132*z2^3*z3^5*z5*z6*z7+ 1132*z2^2*z3^6*z5*z6*z7+
    1132*z2*z3^7*z5*z6*z7- 2231*z3^8*z5*z6*z7+ 3363*z2^7*z4*z5*z6*z7-
    1187*z2^6*z3*z4*z5*z6*z7- 1187*z2^5*z3^2*z4*z5*z6*z7-
    1187*z2^4*z3^3*z4*z5*z6*z7- 1187*z2^3*z3^4*z4*z5*z6*z7-
    1187*z2^2*z3^5*z4*z5*z6*z7- 1187*z2*z3^6*z4*z5*z6*z7+ 3363*z3^7*z4*z5*z6*z7+
    2264*z2^9- 1110*z2^8*z3- 1110*z2^7*z3^2- 1110*z2^6*z3^3- 1110*z2^5*z3^4-
    1110*z2^4*z3^5- 1110*z2^3*z3^6- 1110*z2^2*z3^7- 1110*z2*z3^8+ 2264*z3^9-
    3374*z2^8*z4- 11*z2^7*z3*z4- 11*z2^6*z3^2*z4- 11*z2^5*z3^3*z4-
    11*z2^4*z3^4*z4- 11*z2^3*z3^5*z4- 11*z2^2*z3^6*z4- 11*z2*z3^7*z4-
    3374*z3^8*z4- 3374*z2^8*z5- 11*z2^7*z3*z5- 11*z2^6*z3^2*z5- 11*z2^5*z3^3*z5-
    11*z2^4*z3^4*z5- 11*z2^3*z3^5*z5- 11*z2^2*z3^6*z5- 11*z2*z3^7*z5-
    3374*z3^8*z5+ 3363*z2^7*z4*z5+ 2242*z2^6*z3*z4*z5+ 2242*z2^5*z3^2*z4*z5+
    2242*z2^4*z3^3*z4*z5+ 2242*z2^3*z3^4*z4*z5+ 2242*z2^2*z3^5*z4*z5+
    2242*z2*z3^6*z4*z5+ 3363*z3^7*z4*z5- 3374*z2^8*z6- 11*z2^7*z3*z6-
    11*z2^6*z3^2*z6- 11*z2^5*z3^3*z6- 11*z2^4*z3^4*z6- 11*z2^3*z3^5*z6-
    11*z2^2*z3^6*z6- 11*z2*z3^7*z6- 3374*z3^8*z6+ 3363*z2^7*z4*z6+
    2242*z2^6*z3*z4*z6+ 2242*z2^5*z3^2*z4*z6+ 2242*z2^4*z3^3*z4*z6+
    2242*z2^3*z3^4*z4*z6+ 2242*z2^2*z3^5*z4*z6+ 2242*z2*z3^6*z4*z6+
    3363*z3^7*z4*z6+ 3363*z2^7*z5*z6+ 2242*z2^6*z3*z5*z6+ 2242*z2^5*z3^2*z5*z6+
    2242*z2^4*z3^3*z5*z6+ 2242*z2^3*z3^4*z5*z6+ 2242*z2^2*z3^5*z5*z6+
    2242*z2*z3^6*z5*z6+ 3363*z3^7*z5*z6- 1121*z2^6*z4*z5*z6+
    3396*z2^5*z3*z4*z5*z6+ 3396*z2^4*z3^2*z4*z5*z6+ 3396*z2^3*z3^3*z4*z5*z6+
    3396*z2^2*z3^4*z4*z5*z6+ 3396*z2*z3^5*z4*z5*z6- 1121*z3^6*z4*z5*z6-
    3374*z2^8*z7- 11*z2^7*z3*z7- 11*z2^6*z3^2*z7- 11*z2^5*z3^3*z7-
    11*z2^4*z3^4*z7- 11*z2^3*z3^5*z7- 11*z2^2*z3^6*z7- 11*z2*z3^7*z7-
    3374*z3^8*z7+ 3363*z2^7*z4*z7+ 2242*z2^6*z3*z4*z7+ 2242*z2^5*z3^2*z4*z7+
    2242*z2^4*z3^3*z4*z7+ 2242*z2^3*z3^4*z4*z7+ 2242*z2^2*z3^5*z4*z7+
    2242*z2*z3^6*z4*z7+ 3363*z3^7*z4*z7+ 3363*z2^7*z5*z7+ 2242*z2^6*z3*z5*z7+
    2242*z2^5*z3^2*z5*z7+ 2242*z2^4*z3^3*z5*z7+ 2242*z2^3*z3^4*z5*z7+
    2242*z2^2*z3^5*z5*z7+ 2242*z2*z3^6*z5*z7+ 3363*z3^7*z5*z7-
    1121*z2^6*z4*z5*z7+ 3396*z2^5*z3*z4*z5*z7+ 3396*z2^4*z3^2*z4*z5*z7+
    3396*z2^3*z3^3*z4*z5*z7+ 3396*z2^2*z3^4*z4*z5*z7+ 3396*z2*z3^5*z4*z5*z7-
    1121*z3^6*z4*z5*z7+ 3363*z2^7*z6*z7+ 2242*z2^6*z3*z6*z7+
    2242*z2^5*z3^2*z6*z7+ 2242*z2^4*z3^3*z6*z7+ 2242*z2^3*z3^4*z6*z7+
    2242*z2^2*z3^5*z6*z7+ 2242*z2*z3^6*z6*z7+ 3363*z3^7*z6*z7-
    1121*z2^6*z4*z6*z7+ 3396*z2^5*z3*z4*z6*z7+ 3396*z2^4*z3^2*z4*z6*z7+
    3396*z2^3*z3^3*z4*z6*z7+ 3396*z2^2*z3^4*z4*z6*z7+ 3396*z2*z3^5*z4*z6*z7-
    1121*z3^6*z4*z6*z7- 1121*z2^6*z5*z6*z7+ 3396*z2^5*z3*z5*z6*z7+
    3396*z2^4*z3^2*z5*z6*z7+ 3396*z2^3*z3^3*z5*z6*z7+ 3396*z2^2*z3^4*z5*z6*z7+
    3396*z2*z3^5*z5*z6*z7- 1121*z3^6*z5*z6*z7- 4484*z2^5*z4*z5*z6*z7+
    1154*z2^4*z3*z4*z5*z6*z7+ 1154*z2^3*z3^2*z4*z5*z6*z7+
    1154*z2^2*z3^3*z4*z5*z6*z7+ 1154*z2*z3^4*z4*z5*z6*z7- 4484*z3^5*z4*z5*z6*z7+
    2604*z2^7+ 2751*z2^6*z3+ 2751*z2^5*z3^2+ 2751*z2^4*z3^3+ 2751*z2^3*z3^4+
    2751*z2^2*z3^5+ 2751*z2*z3^6+ 2604*z3^7+ 147*z2^6*z4+ 2887*z2^5*z3*z4+
    2887*z2^4*z3^2*z4+ 2887*z2^3*z3^3*z4+ 2887*z2^2*z3^4*z4+ 2887*z2*z3^5*z4+
    147*z3^6*z4+ 147*z2^6*z5+ 2887*z2^5*z3*z5+ 2887*z2^4*z3^2*z5+
    2887*z2^3*z3^3*z5+ 2887*z2^2*z3^4*z5+ 2887*z2*z3^5*z5+ 147*z3^6*z5+
    2740*z2^5*z4*z5- 1766*z2^4*z3*z4*z5- 1766*z2^3*z3^2*z4*z5-
    1766*z2^2*z3^3*z4*z5- 1766*z2*z3^4*z4*z5+ 2740*z3^5*z4*z5+ 147*z2^6*z6+
    2887*z2^5*z3*z6+ 2887*z2^4*z3^2*z6+ 2887*z2^3*z3^3*z6+ 2887*z2^2*z3^4*z6+
    2887*z2*z3^5*z6+ 147*z3^6*z6+ 2740*z2^5*z4*z6- 1766*z2^4*z3*z4*z6-
    1766*z2^3*z3^2*z4*z6- 1766*z2^2*z3^3*z4*z6- 1766*z2*z3^4*z4*z6+
    2740*z3^5*z4*z6+ 2740*z2^5*z5*z6- 1766*z2^4*z3*z5*z6- 1766*z2^3*z3^2*z5*z6-
    1766*z2^2*z3^3*z5*z6- 1766*z2*z3^4*z5*z6+ 2740*z3^5*z5*z6+
    4495*z2^4*z4*z5*z6- 2751*z2^3*z3*z4*z5*z6- 2751*z2^2*z3^2*z4*z5*z6-
    2751*z2*z3^3*z4*z5*z6+ 4495*z3^4*z4*z5*z6+ 147*z2^6*z7+ 2887*z2^5*z3*z7+
    2887*z2^4*z3^2*z7+ 2887*z2^3*z3^3*z7+ 2887*z2^2*z3^4*z7+ 2887*z2*z3^5*z7+
    147*z3^6*z7+ 2740*z2^5*z4*z7- 1766*z2^4*z3*z4*z7- 1766*z2^3*z3^2*z4*z7-
    1766*z2^2*z3^3*z4*z7- 1766*z2*z3^4*z4*z7+ 2740*z3^5*z4*z7+ 2740*z2^5*z5*z7-
    1766*z2^4*z3*z5*z7- 1766*z2^3*z3^2*z5*z7- 1766*z2^2*z3^3*z5*z7-
    1766*z2*z3^4*z5*z7+ 2740*z3^5*z5*z7+ 4495*z2^4*z4*z5*z7-
    2751*z2^3*z3*z4*z5*z7- 2751*z2^2*z3^2*z4*z5*z7- 2751*z2*z3^3*z4*z5*z7+
    4495*z3^4*z4*z5*z7+ 2740*z2^5*z6*z7- 1766*z2^4*z3*z6*z7-
    1766*z2^3*z3^2*z6*z7- 1766*z2^2*z3^3*z6*z7- 1766*z2*z3^4*z6*z7+
    2740*z3^5*z6*z7+ 4495*z2^4*z4*z6*z7- 2751*z2^3*z3*z4*z6*z7-
    2751*z2^2*z3^2*z4*z6*z7- 2751*z2*z3^3*z4*z6*z7+ 4495*z3^4*z4*z6*z7+
    4495*z2^4*z5*z6*z7- 2751*z2^3*z3*z5*z6*z7- 2751*z2^2*z3^2*z5*z6*z7-
    2751*z2*z3^3*z5*z6*z7+ 4495*z3^4*z5*z6*z7+ 1755*z2^3*z4*z5*z6*z7-
    2887*z2^2*z3*z4*z5*z6*z7- 2887*z2*z3^2*z4*z5*z6*z7+ 1755*z3^3*z4*z5*z6*z7+
    2037*z2^5+ 2355*z2^4*z3+ 2355*z2^3*z3^2+ 2355*z2^2*z3^3+ 2355*z2*z3^4+
    2037*z3^5+ 318*z2^4*z4+ 3906*z2^3*z3*z4+ 3906*z2^2*z3^2*z4+ 3906*z2*z3^3*z4+
    318*z3^4*z4+ 318*z2^4*z5+ 3906*z2^3*z3*z5+ 3906*z2^2*z3^2*z5+
    3906*z2*z3^3*z5+ 318*z3^4*z5+ 3588*z2^3*z4*z5+ 600*z2^2*z3*z4*z5+
    600*z2*z3^2*z4*z5+ 3588*z3^3*z4*z5+ 318*z2^4*z6+ 3906*z2^3*z3*z6+
    3906*z2^2*z3^2*z6+ 3906*z2*z3^3*z6+ 318*z3^4*z6+ 3588*z2^3*z4*z6+
    600*z2^2*z3*z4*z6+ 600*z2*z3^2*z4*z6+ 3588*z3^3*z4*z6+ 3588*z2^3*z5*z6+
    600*z2^2*z3*z5*z6+ 600*z2*z3^2*z5*z6+ 3588*z3^3*z5*z6- 2988*z2^2*z4*z5*z6-
    2355*z2*z3*z4*z5*z6- 2988*z3^2*z4*z5*z6+ 318*z2^4*z7+ 3906*z2^3*z3*z7+
    3906*z2^2*z3^2*z7+ 3906*z2*z3^3*z7+ 318*z3^4*z7+ 3588*z2^3*z4*z7+
    600*z2^2*z3*z4*z7+ 600*z2*z3^2*z4*z7+ 3588*z3^3*z4*z7+ 3588*z2^3*z5*z7+
    600*z2^2*z3*z5*z7+ 600*z2*z3^2*z5*z7+ 3588*z3^3*z5*z7- 2988*z2^2*z4*z5*z7-
    2355*z2*z3*z4*z5*z7- 2988*z3^2*z4*z5*z7+ 3588*z2^3*z6*z7+ 600*z2^2*z3*z6*z7+
    600*z2*z3^2*z6*z7+ 3588*z3^3*z6*z7- 2988*z2^2*z4*z6*z7- 2355*z2*z3*z4*z6*z7-
    2988*z3^2*z4*z6*z7- 2988*z2^2*z5*z6*z7- 2355*z2*z3*z5*z6*z7-
    2988*z3^2*z5*z6*z7+ 633*z2*z4*z5*z6*z7+ 633*z3*z4*z5*z6*z7+ 2166*z2^3+
    390*z2^2*z3+ 390*z2*z3^2+ 2166*z3^3- 1776*z2^2*z4- 3978*z2*z3*z4-
    1776*z3^2*z4- 1776*z2^2*z5- 3978*z2*z3*z5- 1776*z3^2*z5- 2202*z2*z4*z5-
    2202*z3*z4*z5- 1776*z2^2*z6- 3978*z2*z3*z6- 1776*z3^2*z6- 2202*z2*z4*z6-
    2202*z3*z4*z6- 2202*z2*z5*z6- 2202*z3*z5*z6- 1068*z4*z5*z6- 1776*z2^2*z7-
    3978*z2*z3*z7- 1776*z3^2*z7- 2202*z2*z4*z7- 2202*z3*z4*z7- 2202*z2*z5*z7-
    2202*z3*z5*z7- 1068*z4*z5*z7- 2202*z2*z6*z7- 2202*z3*z6*z7- 1068*z4*z6*z7-
    1068*z5*z6*z7- 1169*z2- 1169*z3+ 3538*z4+ 3538*z5+ 3538*z6+ 3538*z7",
    "2*z2^15- 4*z2^14*z3- 2*z2^14*z4+ 2*z2^13*z3*z4- 2*z2^13*z4^2+
    2*z2^12*z3*z4^2- 2*z2^12*z4^3+ 2*z2^11*z3*z4^3- 2*z2^11*z4^4+
    2*z2^10*z3*z4^4- 2*z2^10*z4^5+ 2*z2^9*z3*z4^5- 2*z2^9*z4^6+ 2*z2^8*z3*z4^6-
    2*z2^8*z4^7+ 2*z2^7*z3*z4^7- 2*z2^7*z4^8+ 2*z2^6*z3*z4^8- 2*z2^6*z4^9+
    2*z2^5*z3*z4^9- 2*z2^5*z4^10+ 2*z2^4*z3*z4^10- 2*z2^4*z4^11+
    2*z2^3*z3*z4^11- 2*z2^3*z4^12+ 2*z2^2*z3*z4^12- 2*z2^2*z4^13+ 2*z2*z3*z4^13-
    2*z2*z4^14- 4*z3*z4^14+ 2*z4^15- 4*z2^14*z5+ 6*z2^13*z3*z5+ 2*z2^13*z4*z5-
    2*z2^12*z3*z4*z5+ 2*z2^12*z4^2*z5- 2*z2^11*z3*z4^2*z5+ 2*z2^11*z4^3*z5-
    2*z2^10*z3*z4^3*z5+ 2*z2^10*z4^4*z5- 2*z2^9*z3*z4^4*z5+ 2*z2^9*z4^5*z5-
    2*z2^8*z3*z4^5*z5+ 2*z2^8*z4^6*z5- 2*z2^7*z3*z4^6*z5+ 2*z2^7*z4^7*z5-
    2*z2^6*z3*z4^7*z5+ 2*z2^6*z4^8*z5- 2*z2^5*z3*z4^8*z5+ 2*z2^5*z4^9*z5-
    2*z2^4*z3*z4^9*z5+ 2*z2^4*z4^10*z5- 2*z2^3*z3*z4^10*z5+ 2*z2^3*z4^11*z5-
    2*z2^2*z3*z4^11*z5+ 2*z2^2*z4^12*z5- 2*z2*z3*z4^12*z5+ 2*z2*z4^13*z5+
    6*z3*z4^13*z5- 4*z4^14*z5- 4*z2^14*z6+ 6*z2^13*z3*z6+ 2*z2^13*z4*z6-
    2*z2^12*z3*z4*z6+ 2*z2^12*z4^2*z6- 2*z2^11*z3*z4^2*z6+ 2*z2^11*z4^3*z6-
    2*z2^10*z3*z4^3*z6+ 2*z2^10*z4^4*z6- 2*z2^9*z3*z4^4*z6+ 2*z2^9*z4^5*z6-
    2*z2^8*z3*z4^5*z6+ 2*z2^8*z4^6*z6- 2*z2^7*z3*z4^6*z6+ 2*z2^7*z4^7*z6-
    2*z2^6*z3*z4^7*z6+ 2*z2^6*z4^8*z6- 2*z2^5*z3*z4^8*z6+ 2*z2^5*z4^9*z6-
    2*z2^4*z3*z4^9*z6+ 2*z2^4*z4^10*z6- 2*z2^3*z3*z4^10*z6+ 2*z2^3*z4^11*z6-
    2*z2^2*z3*z4^11*z6+ 2*z2^2*z4^12*z6- 2*z2*z3*z4^12*z6+ 2*z2*z4^13*z6+
    6*z3*z4^13*z6- 4*z4^14*z6+ 6*z2^13*z5*z6- 8*z2^12*z3*z5*z6-
    2*z2^12*z4*z5*z6+ 2*z2^11*z3*z4*z5*z6- 2*z2^11*z4^2*z5*z6+
    2*z2^10*z3*z4^2*z5*z6- 2*z2^10*z4^3*z5*z6+ 2*z2^9*z3*z4^3*z5*z6-
    2*z2^9*z4^4*z5*z6+ 2*z2^8*z3*z4^4*z5*z6- 2*z2^8*z4^5*z5*z6+
    2*z2^7*z3*z4^5*z5*z6- 2*z2^7*z4^6*z5*z6+ 2*z2^6*z3*z4^6*z5*z6-
    2*z2^6*z4^7*z5*z6+ 2*z2^5*z3*z4^7*z5*z6- 2*z2^5*z4^8*z5*z6+
    2*z2^4*z3*z4^8*z5*z6- 2*z2^4*z4^9*z5*z6+ 2*z2^3*z3*z4^9*z5*z6-
    2*z2^3*z4^10*z5*z6+ 2*z2^2*z3*z4^10*z5*z6- 2*z2^2*z4^11*z5*z6+
    2*z2*z3*z4^11*z5*z6- 2*z2*z4^12*z5*z6- 8*z3*z4^12*z5*z6+ 6*z4^13*z5*z6-
    4*z2^14*z7+ 6*z2^13*z3*z7+ 2*z2^13*z4*z7- 2*z2^12*z3*z4*z7+ 2*z2^12*z4^2*z7-
    2*z2^11*z3*z4^2*z7+ 2*z2^11*z4^3*z7- 2*z2^10*z3*z4^3*z7+ 2*z2^10*z4^4*z7-
    2*z2^9*z3*z4^4*z7+ 2*z2^9*z4^5*z7- 2*z2^8*z3*z4^5*z7+ 2*z2^8*z4^6*z7-
    2*z2^7*z3*z4^6*z7+ 2*z2^7*z4^7*z7- 2*z2^6*z3*z4^7*z7+ 2*z2^6*z4^8*z7-
    2*z2^5*z3*z4^8*z7+ 2*z2^5*z4^9*z7- 2*z2^4*z3*z4^9*z7+ 2*z2^4*z4^10*z7-
    2*z2^3*z3*z4^10*z7+ 2*z2^3*z4^11*z7- 2*z2^2*z3*z4^11*z7+ 2*z2^2*z4^12*z7-
    2*z2*z3*z4^12*z7+ 2*z2*z4^13*z7+ 6*z3*z4^13*z7- 4*z4^14*z7+ 6*z2^13*z5*z7-
    8*z2^12*z3*z5*z7- 2*z2^12*z4*z5*z7+ 2*z2^11*z3*z4*z5*z7- 2*z2^11*z4^2*z5*z7+
    2*z2^10*z3*z4^2*z5*z7- 2*z2^10*z4^3*z5*z7+ 2*z2^9*z3*z4^3*z5*z7-
    2*z2^9*z4^4*z5*z7+ 2*z2^8*z3*z4^4*z5*z7- 2*z2^8*z4^5*z5*z7+
    2*z2^7*z3*z4^5*z5*z7- 2*z2^7*z4^6*z5*z7+ 2*z2^6*z3*z4^6*z5*z7-
    2*z2^6*z4^7*z5*z7+ 2*z2^5*z3*z4^7*z5*z7- 2*z2^5*z4^8*z5*z7+
    2*z2^4*z3*z4^8*z5*z7- 2*z2^4*z4^9*z5*z7+ 2*z2^3*z3*z4^9*z5*z7-
    2*z2^3*z4^10*z5*z7+ 2*z2^2*z3*z4^10*z5*z7- 2*z2^2*z4^11*z5*z7+
    2*z2*z3*z4^11*z5*z7- 2*z2*z4^12*z5*z7- 8*z3*z4^12*z5*z7+ 6*z4^13*z5*z7+
    6*z2^13*z6*z7- 8*z2^12*z3*z6*z7- 2*z2^12*z4*z6*z7+ 2*z2^11*z3*z4*z6*z7-
    2*z2^11*z4^2*z6*z7+ 2*z2^10*z3*z4^2*z6*z7- 2*z2^10*z4^3*z6*z7+
    2*z2^9*z3*z4^3*z6*z7- 2*z2^9*z4^4*z6*z7+ 2*z2^8*z3*z4^4*z6*z7-
    2*z2^8*z4^5*z6*z7+ 2*z2^7*z3*z4^5*z6*z7- 2*z2^7*z4^6*z6*z7+
    2*z2^6*z3*z4^6*z6*z7- 2*z2^6*z4^7*z6*z7+ 2*z2^5*z3*z4^7*z6*z7-
    2*z2^5*z4^8*z6*z7+ 2*z2^4*z3*z4^8*z6*z7- 2*z2^4*z4^9*z6*z7+
    2*z2^3*z3*z4^9*z6*z7- 2*z2^3*z4^10*z6*z7+ 2*z2^2*z3*z4^10*z6*z7-
    2*z2^2*z4^11*z6*z7+ 2*z2*z3*z4^11*z6*z7- 2*z2*z4^12*z6*z7- 8*z3*z4^12*z6*z7+
    6*z4^13*z6*z7- 8*z2^12*z5*z6*z7+ 10*z2^11*z3*z5*z6*z7+ 2*z2^11*z4*z5*z6*z7-
    2*z2^10*z3*z4*z5*z6*z7+ 2*z2^10*z4^2*z5*z6*z7- 2*z2^9*z3*z4^2*z5*z6*z7+
    2*z2^9*z4^3*z5*z6*z7- 2*z2^8*z3*z4^3*z5*z6*z7+ 2*z2^8*z4^4*z5*z6*z7-
    2*z2^7*z3*z4^4*z5*z6*z7+ 2*z2^7*z4^5*z5*z6*z7- 2*z2^6*z3*z4^5*z5*z6*z7+
    2*z2^6*z4^6*z5*z6*z7- 2*z2^5*z3*z4^6*z5*z6*z7+ 2*z2^5*z4^7*z5*z6*z7-
    2*z2^4*z3*z4^7*z5*z6*z7+ 2*z2^4*z4^8*z5*z6*z7- 2*z2^3*z3*z4^8*z5*z6*z7+
    2*z2^3*z4^9*z5*z6*z7- 2*z2^2*z3*z4^9*z5*z6*z7+ 2*z2^2*z4^10*z5*z6*z7-
    2*z2*z3*z4^10*z5*z6*z7+ 2*z2*z4^11*z5*z6*z7+ 10*z3*z4^11*z5*z6*z7-
    8*z4^12*z5*z6*z7+ 10*z2^13- 13*z2^12*z3- 3*z2^12*z4- 3*z2^11*z3*z4-
    3*z2^11*z4^2- 3*z2^10*z3*z4^2- 3*z2^10*z4^3- 3*z2^9*z3*z4^3- 3*z2^9*z4^4-
    3*z2^8*z3*z4^4- 3*z2^8*z4^5- 3*z2^7*z3*z4^5- 3*z2^7*z4^6- 3*z2^6*z3*z4^6-
    3*z2^6*z4^7- 3*z2^5*z3*z4^7- 3*z2^5*z4^8- 3*z2^4*z3*z4^8- 3*z2^4*z4^9-
    3*z2^3*z3*z4^9- 3*z2^3*z4^10- 3*z2^2*z3*z4^10- 3*z2^2*z4^11- 3*z2*z3*z4^11-
    3*z2*z4^12- 13*z3*z4^12+ 10*z4^13- 13*z2^12*z5+ 10*z2^11*z3*z5-
    3*z2^11*z4*z5+ 11*z2^10*z3*z4*z5- 3*z2^10*z4^2*z5+ 11*z2^9*z3*z4^2*z5-
    3*z2^9*z4^3*z5+ 11*z2^8*z3*z4^3*z5- 3*z2^8*z4^4*z5+ 11*z2^7*z3*z4^4*z5-
    3*z2^7*z4^5*z5+ 11*z2^6*z3*z4^5*z5- 3*z2^6*z4^6*z5+ 11*z2^5*z3*z4^6*z5-
    3*z2^5*z4^7*z5+ 11*z2^4*z3*z4^7*z5- 3*z2^4*z4^8*z5+ 11*z2^3*z3*z4^8*z5-
    3*z2^3*z4^9*z5+ 11*z2^2*z3*z4^9*z5- 3*z2^2*z4^10*z5+ 11*z2*z3*z4^10*z5-
    3*z2*z4^11*z5+ 10*z3*z4^11*z5- 13*z4^12*z5- 13*z2^12*z6+ 10*z2^11*z3*z6-
    3*z2^11*z4*z6+ 11*z2^10*z3*z4*z6- 3*z2^10*z4^2*z6+ 11*z2^9*z3*z4^2*z6-
    3*z2^9*z4^3*z6+ 11*z2^8*z3*z4^3*z6- 3*z2^8*z4^4*z6+ 11*z2^7*z3*z4^4*z6-
    3*z2^7*z4^5*z6+ 11*z2^6*z3*z4^5*z6- 3*z2^6*z4^6*z6+ 11*z2^5*z3*z4^6*z6-
    3*z2^5*z4^7*z6+ 11*z2^4*z3*z4^7*z6- 3*z2^4*z4^8*z6+ 11*z2^3*z3*z4^8*z6-
    3*z2^3*z4^9*z6+ 11*z2^2*z3*z4^9*z6- 3*z2^2*z4^10*z6+ 11*z2*z3*z4^10*z6-
    3*z2*z4^11*z6+ 10*z3*z4^11*z6- 13*z4^12*z6+ 10*z2^11*z5*z6+ z2^10*z3*z5*z6+
    11*z2^10*z4*z5*z6- 21*z2^9*z3*z4*z5*z6+ 11*z2^9*z4^2*z5*z6-
    21*z2^8*z3*z4^2*z5*z6+ 11*z2^8*z4^3*z5*z6- 21*z2^7*z3*z4^3*z5*z6+
    11*z2^7*z4^4*z5*z6- 21*z2^6*z3*z4^4*z5*z6+ 11*z2^6*z4^5*z5*z6-
    21*z2^5*z3*z4^5*z5*z6+ 11*z2^5*z4^6*z5*z6- 21*z2^4*z3*z4^6*z5*z6+
    11*z2^4*z4^7*z5*z6- 21*z2^3*z3*z4^7*z5*z6+ 11*z2^3*z4^8*z5*z6-
    21*z2^2*z3*z4^8*z5*z6+ 11*z2^2*z4^9*z5*z6- 21*z2*z3*z4^9*z5*z6+
    11*z2*z4^10*z5*z6+ z3*z4^10*z5*z6+ 10*z4^11*z5*z6- 13*z2^12*z7+
    10*z2^11*z3*z7- 3*z2^11*z4*z7+ 11*z2^10*z3*z4*z7- 3*z2^10*z4^2*z7+
    11*z2^9*z3*z4^2*z7- 3*z2^9*z4^3*z7+ 11*z2^8*z3*z4^3*z7- 3*z2^8*z4^4*z7+
    11*z2^7*z3*z4^4*z7- 3*z2^7*z4^5*z7+ 11*z2^6*z3*z4^5*z7- 3*z2^6*z4^6*z7+
    11*z2^5*z3*z4^6*z7- 3*z2^5*z4^7*z7+ 11*z2^4*z3*z4^7*z7- 3*z2^4*z4^8*z7+
    11*z2^3*z3*z4^8*z7- 3*z2^3*z4^9*z7+ 11*z2^2*z3*z4^9*z7- 3*z2^2*z4^10*z7+
    11*z2*z3*z4^10*z7- 3*z2*z4^11*z7+ 10*z3*z4^11*z7- 13*z4^12*z7+
    10*z2^11*z5*z7+ z2^10*z3*z5*z7+ 11*z2^10*z4*z5*z7- 21*z2^9*z3*z4*z5*z7+
    11*z2^9*z4^2*z5*z7- 21*z2^8*z3*z4^2*z5*z7+ 11*z2^8*z4^3*z5*z7-
    21*z2^7*z3*z4^3*z5*z7+ 11*z2^7*z4^4*z5*z7- 21*z2^6*z3*z4^4*z5*z7+
    11*z2^6*z4^5*z5*z7- 21*z2^5*z3*z4^5*z5*z7+ 11*z2^5*z4^6*z5*z7-
    21*z2^4*z3*z4^6*z5*z7+ 11*z2^4*z4^7*z5*z7- 21*z2^3*z3*z4^7*z5*z7+
    11*z2^3*z4^8*z5*z7- 21*z2^2*z3*z4^8*z5*z7+ 11*z2^2*z4^9*z5*z7-
    21*z2*z3*z4^9*z5*z7+ 11*z2*z4^10*z5*z7+ z3*z4^10*z5*z7+ 10*z4^11*z5*z7+
    10*z2^11*z6*z7+ z2^10*z3*z6*z7+ 11*z2^10*z4*z6*z7- 21*z2^9*z3*z4*z6*z7+
    11*z2^9*z4^2*z6*z7- 21*z2^8*z3*z4^2*z6*z7+ 11*z2^8*z4^3*z6*z7-
    21*z2^7*z3*z4^3*z6*z7+ 11*z2^7*z4^4*z6*z7- 21*z2^6*z3*z4^4*z6*z7+
    11*z2^6*z4^5*z6*z7- 21*z2^5*z3*z4^5*z6*z7+ 11*z2^5*z4^6*z6*z7-
    21*z2^4*z3*z4^6*z6*z7+ 11*z2^4*z4^7*z6*z7- 21*z2^3*z3*z4^7*z6*z7+
    11*z2^3*z4^8*z6*z7- 21*z2^2*z3*z4^8*z6*z7+ 11*z2^2*z4^9*z6*z7-
    21*z2*z3*z4^9*z6*z7+ 11*z2*z4^10*z6*z7+ z3*z4^10*z6*z7+ 10*z4^11*z6*z7+
    z2^10*z5*z6*z7- 22*z2^9*z3*z5*z6*z7- 21*z2^9*z4*z5*z6*z7+
    33*z2^8*z3*z4*z5*z6*z7- 21*z2^8*z4^2*z5*z6*z7+ 33*z2^7*z3*z4^2*z5*z6*z7-
    21*z2^7*z4^3*z5*z6*z7+ 33*z2^6*z3*z4^3*z5*z6*z7- 21*z2^6*z4^4*z5*z6*z7+
    33*z2^5*z3*z4^4*z5*z6*z7- 21*z2^5*z4^5*z5*z6*z7+ 33*z2^4*z3*z4^5*z5*z6*z7-
    21*z2^4*z4^6*z5*z6*z7+ 33*z2^3*z3*z4^6*z5*z6*z7- 21*z2^3*z4^7*z5*z6*z7+
    33*z2^2*z3*z4^7*z5*z6*z7- 21*z2^2*z4^8*z5*z6*z7+ 33*z2*z3*z4^8*z5*z6*z7-
    21*z2*z4^9*z5*z6*z7- 22*z3*z4^9*z5*z6*z7+ z4^10*z5*z6*z7- 1107*z2^11-
    12*z2^10*z3- 1119*z2^10*z4+ 1109*z2^9*z3*z4- 1119*z2^9*z4^2+
    1109*z2^8*z3*z4^2- 1119*z2^8*z4^3+ 1109*z2^7*z3*z4^3- 1119*z2^7*z4^4+
    1109*z2^6*z3*z4^4- 1119*z2^6*z4^5+ 1109*z2^5*z3*z4^5- 1119*z2^5*z4^6+
    1109*z2^4*z3*z4^6- 1119*z2^4*z4^7+ 1109*z2^3*z3*z4^7- 1119*z2^3*z4^8+
    1109*z2^2*z3*z4^8- 1119*z2^2*z4^9+ 1109*z2*z3*z4^9- 1119*z2*z4^10-
    12*z3*z4^10- 1107*z4^11- 12*z2^10*z5+ 1121*z2^9*z3*z5+ 1109*z2^9*z4*z5-
    1110*z2^8*z3*z4*z5+ 1109*z2^8*z4^2*z5- 1110*z2^7*z3*z4^2*z5+
    1109*z2^7*z4^3*z5- 1110*z2^6*z3*z4^3*z5+ 1109*z2^6*z4^4*z5-
    1110*z2^5*z3*z4^4*z5+ 1109*z2^5*z4^5*z5- 1110*z2^4*z3*z4^5*z5+
    1109*z2^4*z4^6*z5- 1110*z2^3*z3*z4^6*z5+ 1109*z2^3*z4^7*z5-
    1110*z2^2*z3*z4^7*z5+ 1109*z2^2*z4^8*z5- 1110*z2*z3*z4^8*z5+
    1109*z2*z4^9*z5+ 1121*z3*z4^9*z5- 12*z4^10*z5- 12*z2^10*z6+ 1121*z2^9*z3*z6+
    1109*z2^9*z4*z6- 1110*z2^8*z3*z4*z6+ 1109*z2^8*z4^2*z6-
    1110*z2^7*z3*z4^2*z6+ 1109*z2^7*z4^3*z6- 1110*z2^6*z3*z4^3*z6+
    1109*z2^6*z4^4*z6- 1110*z2^5*z3*z4^4*z6+ 1109*z2^5*z4^5*z6-
    1110*z2^4*z3*z4^5*z6+ 1109*z2^4*z4^6*z6- 1110*z2^3*z3*z4^6*z6+
    1109*z2^3*z4^7*z6- 1110*z2^2*z3*z4^7*z6+ 1109*z2^2*z4^8*z6-
    1110*z2*z3*z4^8*z6+ 1109*z2*z4^9*z6+ 1121*z3*z4^9*z6- 12*z4^10*z6+
    1121*z2^9*z5*z6- 2231*z2^8*z3*z5*z6- 1110*z2^8*z4*z5*z6+
    1132*z2^7*z3*z4*z5*z6- 1110*z2^7*z4^2*z5*z6+ 1132*z2^6*z3*z4^2*z5*z6-
    1110*z2^6*z4^3*z5*z6+ 1132*z2^5*z3*z4^3*z5*z6- 1110*z2^5*z4^4*z5*z6+
    1132*z2^4*z3*z4^4*z5*z6- 1110*z2^4*z4^5*z5*z6+ 1132*z2^3*z3*z4^5*z5*z6-
    1110*z2^3*z4^6*z5*z6+ 1132*z2^2*z3*z4^6*z5*z6- 1110*z2^2*z4^7*z5*z6+
    1132*z2*z3*z4^7*z5*z6- 1110*z2*z4^8*z5*z6- 2231*z3*z4^8*z5*z6+
    1121*z4^9*z5*z6- 12*z2^10*z7+ 1121*z2^9*z3*z7+ 1109*z2^9*z4*z7-
    1110*z2^8*z3*z4*z7+ 1109*z2^8*z4^2*z7- 1110*z2^7*z3*z4^2*z7+
    1109*z2^7*z4^3*z7- 1110*z2^6*z3*z4^3*z7+ 1109*z2^6*z4^4*z7-
    1110*z2^5*z3*z4^4*z7+ 1109*z2^5*z4^5*z7- 1110*z2^4*z3*z4^5*z7+
    1109*z2^4*z4^6*z7- 1110*z2^3*z3*z4^6*z7+ 1109*z2^3*z4^7*z7-
    1110*z2^2*z3*z4^7*z7+ 1109*z2^2*z4^8*z7- 1110*z2*z3*z4^8*z7+
    1109*z2*z4^9*z7+ 1121*z3*z4^9*z7- 12*z4^10*z7+ 1121*z2^9*z5*z7-
    2231*z2^8*z3*z5*z7- 1110*z2^8*z4*z5*z7+ 1132*z2^7*z3*z4*z5*z7-
    1110*z2^7*z4^2*z5*z7+ 1132*z2^6*z3*z4^2*z5*z7- 1110*z2^6*z4^3*z5*z7+
    1132*z2^5*z3*z4^3*z5*z7- 1110*z2^5*z4^4*z5*z7+ 1132*z2^4*z3*z4^4*z5*z7-
    1110*z2^4*z4^5*z5*z7+ 1132*z2^3*z3*z4^5*z5*z7- 1110*z2^3*z4^6*z5*z7+
    1132*z2^2*z3*z4^6*z5*z7- 1110*z2^2*z4^7*z5*z7+ 1132*z2*z3*z4^7*z5*z7-
    1110*z2*z4^8*z5*z7- 2231*z3*z4^8*z5*z7+ 1121*z4^9*z5*z7+ 1121*z2^9*z6*z7-
    2231*z2^8*z3*z6*z7- 1110*z2^8*z4*z6*z7+ 1132*z2^7*z3*z4*z6*z7-
    1110*z2^7*z4^2*z6*z7+ 1132*z2^6*z3*z4^2*z6*z7- 1110*z2^6*z4^3*z6*z7+
    1132*z2^5*z3*z4^3*z6*z7- 1110*z2^5*z4^4*z6*z7+ 1132*z2^4*z3*z4^4*z6*z7-
    1110*z2^4*z4^5*z6*z7+ 1132*z2^3*z3*z4^5*z6*z7- 1110*z2^3*z4^6*z6*z7+
    1132*z2^2*z3*z4^6*z6*z7- 1110*z2^2*z4^7*z6*z7+ 1132*z2*z3*z4^7*z6*z7-
    1110*z2*z4^8*z6*z7- 2231*z3*z4^8*z6*z7+ 1121*z4^9*z6*z7- 2231*z2^8*z5*z6*z7+
    3363*z2^7*z3*z5*z6*z7+ 1132*z2^7*z4*z5*z6*z7- 1187*z2^6*z3*z4*z5*z6*z7+
    1132*z2^6*z4^2*z5*z6*z7- 1187*z2^5*z3*z4^2*z5*z6*z7+
    1132*z2^5*z4^3*z5*z6*z7- 1187*z2^4*z3*z4^3*z5*z6*z7+
    1132*z2^4*z4^4*z5*z6*z7- 1187*z2^3*z3*z4^4*z5*z6*z7+
    1132*z2^3*z4^5*z5*z6*z7- 1187*z2^2*z3*z4^5*z5*z6*z7+
    1132*z2^2*z4^6*z5*z6*z7- 1187*z2*z3*z4^6*z5*z6*z7+ 1132*z2*z4^7*z5*z6*z7+
    3363*z3*z4^7*z5*z6*z7- 2231*z4^8*z5*z6*z7+ 2264*z2^9- 3374*z2^8*z3-
    1110*z2^8*z4- 11*z2^7*z3*z4- 1110*z2^7*z4^2- 11*z2^6*z3*z4^2-
    1110*z2^6*z4^3- 11*z2^5*z3*z4^3- 1110*z2^5*z4^4- 11*z2^4*z3*z4^4-
    1110*z2^4*z4^5- 11*z2^3*z3*z4^5- 1110*z2^3*z4^6- 11*z2^2*z3*z4^6-
    1110*z2^2*z4^7- 11*z2*z3*z4^7- 1110*z2*z4^8- 3374*z3*z4^8+ 2264*z4^9-
    3374*z2^8*z5+ 3363*z2^7*z3*z5- 11*z2^7*z4*z5+ 2242*z2^6*z3*z4*z5-
    11*z2^6*z4^2*z5+ 2242*z2^5*z3*z4^2*z5- 11*z2^5*z4^3*z5+
    2242*z2^4*z3*z4^3*z5- 11*z2^4*z4^4*z5+ 2242*z2^3*z3*z4^4*z5-
    11*z2^3*z4^5*z5+ 2242*z2^2*z3*z4^5*z5- 11*z2^2*z4^6*z5+ 2242*z2*z3*z4^6*z5-
    11*z2*z4^7*z5+ 3363*z3*z4^7*z5- 3374*z4^8*z5- 3374*z2^8*z6+ 3363*z2^7*z3*z6-
    11*z2^7*z4*z6+ 2242*z2^6*z3*z4*z6- 11*z2^6*z4^2*z6+ 2242*z2^5*z3*z4^2*z6-
    11*z2^5*z4^3*z6+ 2242*z2^4*z3*z4^3*z6- 11*z2^4*z4^4*z6+
    2242*z2^3*z3*z4^4*z6- 11*z2^3*z4^5*z6+ 2242*z2^2*z3*z4^5*z6-
    11*z2^2*z4^6*z6+ 2242*z2*z3*z4^6*z6- 11*z2*z4^7*z6+ 3363*z3*z4^7*z6-
    3374*z4^8*z6+ 3363*z2^7*z5*z6- 1121*z2^6*z3*z5*z6+ 2242*z2^6*z4*z5*z6+
    3396*z2^5*z3*z4*z5*z6+ 2242*z2^5*z4^2*z5*z6+ 3396*z2^4*z3*z4^2*z5*z6+
    2242*z2^4*z4^3*z5*z6+ 3396*z2^3*z3*z4^3*z5*z6+ 2242*z2^3*z4^4*z5*z6+
    3396*z2^2*z3*z4^4*z5*z6+ 2242*z2^2*z4^5*z5*z6+ 3396*z2*z3*z4^5*z5*z6+
    2242*z2*z4^6*z5*z6- 1121*z3*z4^6*z5*z6+ 3363*z4^7*z5*z6- 3374*z2^8*z7+
    3363*z2^7*z3*z7- 11*z2^7*z4*z7+ 2242*z2^6*z3*z4*z7- 11*z2^6*z4^2*z7+
    2242*z2^5*z3*z4^2*z7- 11*z2^5*z4^3*z7+ 2242*z2^4*z3*z4^3*z7-
    11*z2^4*z4^4*z7+ 2242*z2^3*z3*z4^4*z7- 11*z2^3*z4^5*z7+
    2242*z2^2*z3*z4^5*z7- 11*z2^2*z4^6*z7+ 2242*z2*z3*z4^6*z7- 11*z2*z4^7*z7+
    3363*z3*z4^7*z7- 3374*z4^8*z7+ 3363*z2^7*z5*z7- 1121*z2^6*z3*z5*z7+
    2242*z2^6*z4*z5*z7+ 3396*z2^5*z3*z4*z5*z7+ 2242*z2^5*z4^2*z5*z7+
    3396*z2^4*z3*z4^2*z5*z7+ 2242*z2^4*z4^3*z5*z7+ 3396*z2^3*z3*z4^3*z5*z7+
    2242*z2^3*z4^4*z5*z7+ 3396*z2^2*z3*z4^4*z5*z7+ 2242*z2^2*z4^5*z5*z7+
    3396*z2*z3*z4^5*z5*z7+ 2242*z2*z4^6*z5*z7- 1121*z3*z4^6*z5*z7+
    3363*z4^7*z5*z7+ 3363*z2^7*z6*z7- 1121*z2^6*z3*z6*z7+ 2242*z2^6*z4*z6*z7+
    3396*z2^5*z3*z4*z6*z7+ 2242*z2^5*z4^2*z6*z7+ 3396*z2^4*z3*z4^2*z6*z7+
    2242*z2^4*z4^3*z6*z7+ 3396*z2^3*z3*z4^3*z6*z7+ 2242*z2^3*z4^4*z6*z7+
    3396*z2^2*z3*z4^4*z6*z7+ 2242*z2^2*z4^5*z6*z7+ 3396*z2*z3*z4^5*z6*z7+
    2242*z2*z4^6*z6*z7- 1121*z3*z4^6*z6*z7+ 3363*z4^7*z6*z7- 1121*z2^6*z5*z6*z7-
    4484*z2^5*z3*z5*z6*z7+ 3396*z2^5*z4*z5*z6*z7+ 1154*z2^4*z3*z4*z5*z6*z7+
    3396*z2^4*z4^2*z5*z6*z7+ 1154*z2^3*z3*z4^2*z5*z6*z7+
    3396*z2^3*z4^3*z5*z6*z7+ 1154*z2^2*z3*z4^3*z5*z6*z7+
    3396*z2^2*z4^4*z5*z6*z7+ 1154*z2*z3*z4^4*z5*z6*z7+ 3396*z2*z4^5*z5*z6*z7-
    4484*z3*z4^5*z5*z6*z7- 1121*z4^6*z5*z6*z7+ 2604*z2^7+ 147*z2^6*z3+
    2751*z2^6*z4+ 2887*z2^5*z3*z4+ 2751*z2^5*z4^2+ 2887*z2^4*z3*z4^2+
    2751*z2^4*z4^3+ 2887*z2^3*z3*z4^3+ 2751*z2^3*z4^4+ 2887*z2^2*z3*z4^4+
    2751*z2^2*z4^5+ 2887*z2*z3*z4^5+ 2751*z2*z4^6+ 147*z3*z4^6+ 2604*z4^7+
    147*z2^6*z5+ 2740*z2^5*z3*z5+ 2887*z2^5*z4*z5- 1766*z2^4*z3*z4*z5+
    2887*z2^4*z4^2*z5- 1766*z2^3*z3*z4^2*z5+ 2887*z2^3*z4^3*z5-
    1766*z2^2*z3*z4^3*z5+ 2887*z2^2*z4^4*z5- 1766*z2*z3*z4^4*z5+
    2887*z2*z4^5*z5+ 2740*z3*z4^5*z5+ 147*z4^6*z5+ 147*z2^6*z6+ 2740*z2^5*z3*z6+
    2887*z2^5*z4*z6- 1766*z2^4*z3*z4*z6+ 2887*z2^4*z4^2*z6-
    1766*z2^3*z3*z4^2*z6+ 2887*z2^3*z4^3*z6- 1766*z2^2*z3*z4^3*z6+
    2887*z2^2*z4^4*z6- 1766*z2*z3*z4^4*z6+ 2887*z2*z4^5*z6+ 2740*z3*z4^5*z6+
    147*z4^6*z6+ 2740*z2^5*z5*z6+ 4495*z2^4*z3*z5*z6- 1766*z2^4*z4*z5*z6-
    2751*z2^3*z3*z4*z5*z6- 1766*z2^3*z4^2*z5*z6- 2751*z2^2*z3*z4^2*z5*z6-
    1766*z2^2*z4^3*z5*z6- 2751*z2*z3*z4^3*z5*z6- 1766*z2*z4^4*z5*z6+
    4495*z3*z4^4*z5*z6+ 2740*z4^5*z5*z6+ 147*z2^6*z7+ 2740*z2^5*z3*z7+
    2887*z2^5*z4*z7- 1766*z2^4*z3*z4*z7+ 2887*z2^4*z4^2*z7-
    1766*z2^3*z3*z4^2*z7+ 2887*z2^3*z4^3*z7- 1766*z2^2*z3*z4^3*z7+
    2887*z2^2*z4^4*z7- 1766*z2*z3*z4^4*z7+ 2887*z2*z4^5*z7+ 2740*z3*z4^5*z7+
    147*z4^6*z7+ 2740*z2^5*z5*z7+ 4495*z2^4*z3*z5*z7- 1766*z2^4*z4*z5*z7-
    2751*z2^3*z3*z4*z5*z7- 1766*z2^3*z4^2*z5*z7- 2751*z2^2*z3*z4^2*z5*z7-
    1766*z2^2*z4^3*z5*z7- 2751*z2*z3*z4^3*z5*z7- 1766*z2*z4^4*z5*z7+
    4495*z3*z4^4*z5*z7+ 2740*z4^5*z5*z7+ 2740*z2^5*z6*z7+ 4495*z2^4*z3*z6*z7-
    1766*z2^4*z4*z6*z7- 2751*z2^3*z3*z4*z6*z7- 1766*z2^3*z4^2*z6*z7-
    2751*z2^2*z3*z4^2*z6*z7- 1766*z2^2*z4^3*z6*z7- 2751*z2*z3*z4^3*z6*z7-
    1766*z2*z4^4*z6*z7+ 4495*z3*z4^4*z6*z7+ 2740*z4^5*z6*z7+ 4495*z2^4*z5*z6*z7+
    1755*z2^3*z3*z5*z6*z7- 2751*z2^3*z4*z5*z6*z7- 2887*z2^2*z3*z4*z5*z6*z7-
    2751*z2^2*z4^2*z5*z6*z7- 2887*z2*z3*z4^2*z5*z6*z7- 2751*z2*z4^3*z5*z6*z7+
    1755*z3*z4^3*z5*z6*z7+ 4495*z4^4*z5*z6*z7+ 2037*z2^5+ 318*z2^4*z3+
    2355*z2^4*z4+ 3906*z2^3*z3*z4+ 2355*z2^3*z4^2+ 3906*z2^2*z3*z4^2+
    2355*z2^2*z4^3+ 3906*z2*z3*z4^3+ 2355*z2*z4^4+ 318*z3*z4^4+ 2037*z4^5+
    318*z2^4*z5+ 3588*z2^3*z3*z5+ 3906*z2^3*z4*z5+ 600*z2^2*z3*z4*z5+
    3906*z2^2*z4^2*z5+ 600*z2*z3*z4^2*z5+ 3906*z2*z4^3*z5+ 3588*z3*z4^3*z5+
    318*z4^4*z5+ 318*z2^4*z6+ 3588*z2^3*z3*z6+ 3906*z2^3*z4*z6+
    600*z2^2*z3*z4*z6+ 3906*z2^2*z4^2*z6+ 600*z2*z3*z4^2*z6+ 3906*z2*z4^3*z6+
    3588*z3*z4^3*z6+ 318*z4^4*z6+ 3588*z2^3*z5*z6- 2988*z2^2*z3*z5*z6+
    600*z2^2*z4*z5*z6- 2355*z2*z3*z4*z5*z6+ 600*z2*z4^2*z5*z6-
    2988*z3*z4^2*z5*z6+ 3588*z4^3*z5*z6+ 318*z2^4*z7+ 3588*z2^3*z3*z7+
    3906*z2^3*z4*z7+ 600*z2^2*z3*z4*z7+ 3906*z2^2*z4^2*z7+ 600*z2*z3*z4^2*z7+
    3906*z2*z4^3*z7+ 3588*z3*z4^3*z7+ 318*z4^4*z7+ 3588*z2^3*z5*z7-
    2988*z2^2*z3*z5*z7+ 600*z2^2*z4*z5*z7- 2355*z2*z3*z4*z5*z7+
    600*z2*z4^2*z5*z7- 2988*z3*z4^2*z5*z7+ 3588*z4^3*z5*z7+ 3588*z2^3*z6*z7-
    2988*z2^2*z3*z6*z7+ 600*z2^2*z4*z6*z7- 2355*z2*z3*z4*z6*z7+
    600*z2*z4^2*z6*z7- 2988*z3*z4^2*z6*z7+ 3588*z4^3*z6*z7- 2988*z2^2*z5*z6*z7+
    633*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7+ 633*z3*z4*z5*z6*z7-
    2988*z4^2*z5*z6*z7+ 2166*z2^3- 1776*z2^2*z3+ 390*z2^2*z4- 3978*z2*z3*z4+
    390*z2*z4^2- 1776*z3*z4^2+ 2166*z4^3- 1776*z2^2*z5- 2202*z2*z3*z5-
    3978*z2*z4*z5- 2202*z3*z4*z5- 1776*z4^2*z5- 1776*z2^2*z6- 2202*z2*z3*z6-
    3978*z2*z4*z6- 2202*z3*z4*z6- 1776*z4^2*z6- 2202*z2*z5*z6- 1068*z3*z5*z6-
    2202*z4*z5*z6- 1776*z2^2*z7- 2202*z2*z3*z7- 3978*z2*z4*z7- 2202*z3*z4*z7-
    1776*z4^2*z7- 2202*z2*z5*z7- 1068*z3*z5*z7- 2202*z4*z5*z7- 2202*z2*z6*z7-
    1068*z3*z6*z7- 2202*z4*z6*z7- 1068*z5*z6*z7- 1169*z2+ 3538*z3- 1169*z4+
    3538*z5+ 3538*z6+ 3538*z7",
    "2*z2^15- 4*z2^14*z3- 4*z2^14*z4+ 6*z2^13*z3*z4- 2*z2^14*z5+ 2*z2^13*z3*z5+
    2*z2^13*z4*z5- 2*z2^12*z3*z4*z5- 2*z2^13*z5^2+ 2*z2^12*z3*z5^2+
    2*z2^12*z4*z5^2- 2*z2^11*z3*z4*z5^2- 2*z2^12*z5^3+ 2*z2^11*z3*z5^3+
    2*z2^11*z4*z5^3- 2*z2^10*z3*z4*z5^3- 2*z2^11*z5^4+ 2*z2^10*z3*z5^4+
    2*z2^10*z4*z5^4- 2*z2^9*z3*z4*z5^4- 2*z2^10*z5^5+ 2*z2^9*z3*z5^5+
    2*z2^9*z4*z5^5- 2*z2^8*z3*z4*z5^5- 2*z2^9*z5^6+ 2*z2^8*z3*z5^6+
    2*z2^8*z4*z5^6- 2*z2^7*z3*z4*z5^6- 2*z2^8*z5^7+ 2*z2^7*z3*z5^7+
    2*z2^7*z4*z5^7- 2*z2^6*z3*z4*z5^7- 2*z2^7*z5^8+ 2*z2^6*z3*z5^8+
    2*z2^6*z4*z5^8- 2*z2^5*z3*z4*z5^8- 2*z2^6*z5^9+ 2*z2^5*z3*z5^9+
    2*z2^5*z4*z5^9- 2*z2^4*z3*z4*z5^9- 2*z2^5*z5^10+ 2*z2^4*z3*z5^10+
    2*z2^4*z4*z5^10- 2*z2^3*z3*z4*z5^10- 2*z2^4*z5^11+ 2*z2^3*z3*z5^11+
    2*z2^3*z4*z5^11- 2*z2^2*z3*z4*z5^11- 2*z2^3*z5^12+ 2*z2^2*z3*z5^12+
    2*z2^2*z4*z5^12- 2*z2*z3*z4*z5^12- 2*z2^2*z5^13+ 2*z2*z3*z5^13+
    2*z2*z4*z5^13+ 6*z3*z4*z5^13- 2*z2*z5^14- 4*z3*z5^14- 4*z4*z5^14+ 2*z5^15-
    4*z2^14*z6+ 6*z2^13*z3*z6+ 6*z2^13*z4*z6- 8*z2^12*z3*z4*z6+ 2*z2^13*z5*z6-
    2*z2^12*z3*z5*z6- 2*z2^12*z4*z5*z6+ 2*z2^11*z3*z4*z5*z6+ 2*z2^12*z5^2*z6-
    2*z2^11*z3*z5^2*z6- 2*z2^11*z4*z5^2*z6+ 2*z2^10*z3*z4*z5^2*z6+
    2*z2^11*z5^3*z6- 2*z2^10*z3*z5^3*z6- 2*z2^10*z4*z5^3*z6+
    2*z2^9*z3*z4*z5^3*z6+ 2*z2^10*z5^4*z6- 2*z2^9*z3*z5^4*z6- 2*z2^9*z4*z5^4*z6+
    2*z2^8*z3*z4*z5^4*z6+ 2*z2^9*z5^5*z6- 2*z2^8*z3*z5^5*z6- 2*z2^8*z4*z5^5*z6+
    2*z2^7*z3*z4*z5^5*z6+ 2*z2^8*z5^6*z6- 2*z2^7*z3*z5^6*z6- 2*z2^7*z4*z5^6*z6+
    2*z2^6*z3*z4*z5^6*z6+ 2*z2^7*z5^7*z6- 2*z2^6*z3*z5^7*z6- 2*z2^6*z4*z5^7*z6+
    2*z2^5*z3*z4*z5^7*z6+ 2*z2^6*z5^8*z6- 2*z2^5*z3*z5^8*z6- 2*z2^5*z4*z5^8*z6+
    2*z2^4*z3*z4*z5^8*z6+ 2*z2^5*z5^9*z6- 2*z2^4*z3*z5^9*z6- 2*z2^4*z4*z5^9*z6+
    2*z2^3*z3*z4*z5^9*z6+ 2*z2^4*z5^10*z6- 2*z2^3*z3*z5^10*z6-
    2*z2^3*z4*z5^10*z6+ 2*z2^2*z3*z4*z5^10*z6+ 2*z2^3*z5^11*z6-
    2*z2^2*z3*z5^11*z6- 2*z2^2*z4*z5^11*z6+ 2*z2*z3*z4*z5^11*z6+
    2*z2^2*z5^12*z6- 2*z2*z3*z5^12*z6- 2*z2*z4*z5^12*z6- 8*z3*z4*z5^12*z6+
    2*z2*z5^13*z6+ 6*z3*z5^13*z6+ 6*z4*z5^13*z6- 4*z5^14*z6- 4*z2^14*z7+
    6*z2^13*z3*z7+ 6*z2^13*z4*z7- 8*z2^12*z3*z4*z7+ 2*z2^13*z5*z7-
    2*z2^12*z3*z5*z7- 2*z2^12*z4*z5*z7+ 2*z2^11*z3*z4*z5*z7+ 2*z2^12*z5^2*z7-
    2*z2^11*z3*z5^2*z7- 2*z2^11*z4*z5^2*z7+ 2*z2^10*z3*z4*z5^2*z7+
    2*z2^11*z5^3*z7- 2*z2^10*z3*z5^3*z7- 2*z2^10*z4*z5^3*z7+
    2*z2^9*z3*z4*z5^3*z7+ 2*z2^10*z5^4*z7- 2*z2^9*z3*z5^4*z7- 2*z2^9*z4*z5^4*z7+
    2*z2^8*z3*z4*z5^4*z7+ 2*z2^9*z5^5*z7- 2*z2^8*z3*z5^5*z7- 2*z2^8*z4*z5^5*z7+
    2*z2^7*z3*z4*z5^5*z7+ 2*z2^8*z5^6*z7- 2*z2^7*z3*z5^6*z7- 2*z2^7*z4*z5^6*z7+
    2*z2^6*z3*z4*z5^6*z7+ 2*z2^7*z5^7*z7- 2*z2^6*z3*z5^7*z7- 2*z2^6*z4*z5^7*z7+
    2*z2^5*z3*z4*z5^7*z7+ 2*z2^6*z5^8*z7- 2*z2^5*z3*z5^8*z7- 2*z2^5*z4*z5^8*z7+
    2*z2^4*z3*z4*z5^8*z7+ 2*z2^5*z5^9*z7- 2*z2^4*z3*z5^9*z7- 2*z2^4*z4*z5^9*z7+
    2*z2^3*z3*z4*z5^9*z7+ 2*z2^4*z5^10*z7- 2*z2^3*z3*z5^10*z7-
    2*z2^3*z4*z5^10*z7+ 2*z2^2*z3*z4*z5^10*z7+ 2*z2^3*z5^11*z7-
    2*z2^2*z3*z5^11*z7- 2*z2^2*z4*z5^11*z7+ 2*z2*z3*z4*z5^11*z7+
    2*z2^2*z5^12*z7- 2*z2*z3*z5^12*z7- 2*z2*z4*z5^12*z7- 8*z3*z4*z5^12*z7+
    2*z2*z5^13*z7+ 6*z3*z5^13*z7+ 6*z4*z5^13*z7- 4*z5^14*z7+ 6*z2^13*z6*z7-
    8*z2^12*z3*z6*z7- 8*z2^12*z4*z6*z7+ 10*z2^11*z3*z4*z6*z7- 2*z2^12*z5*z6*z7+
    2*z2^11*z3*z5*z6*z7+ 2*z2^11*z4*z5*z6*z7- 2*z2^10*z3*z4*z5*z6*z7-
    2*z2^11*z5^2*z6*z7+ 2*z2^10*z3*z5^2*z6*z7+ 2*z2^10*z4*z5^2*z6*z7-
    2*z2^9*z3*z4*z5^2*z6*z7- 2*z2^10*z5^3*z6*z7+ 2*z2^9*z3*z5^3*z6*z7+
    2*z2^9*z4*z5^3*z6*z7- 2*z2^8*z3*z4*z5^3*z6*z7- 2*z2^9*z5^4*z6*z7+
    2*z2^8*z3*z5^4*z6*z7+ 2*z2^8*z4*z5^4*z6*z7- 2*z2^7*z3*z4*z5^4*z6*z7-
    2*z2^8*z5^5*z6*z7+ 2*z2^7*z3*z5^5*z6*z7+ 2*z2^7*z4*z5^5*z6*z7-
    2*z2^6*z3*z4*z5^5*z6*z7- 2*z2^7*z5^6*z6*z7+ 2*z2^6*z3*z5^6*z6*z7+
    2*z2^6*z4*z5^6*z6*z7- 2*z2^5*z3*z4*z5^6*z6*z7- 2*z2^6*z5^7*z6*z7+
    2*z2^5*z3*z5^7*z6*z7+ 2*z2^5*z4*z5^7*z6*z7- 2*z2^4*z3*z4*z5^7*z6*z7-
    2*z2^5*z5^8*z6*z7+ 2*z2^4*z3*z5^8*z6*z7+ 2*z2^4*z4*z5^8*z6*z7-
    2*z2^3*z3*z4*z5^8*z6*z7- 2*z2^4*z5^9*z6*z7+ 2*z2^3*z3*z5^9*z6*z7+
    2*z2^3*z4*z5^9*z6*z7- 2*z2^2*z3*z4*z5^9*z6*z7- 2*z2^3*z5^10*z6*z7+
    2*z2^2*z3*z5^10*z6*z7+ 2*z2^2*z4*z5^10*z6*z7- 2*z2*z3*z4*z5^10*z6*z7-
    2*z2^2*z5^11*z6*z7+ 2*z2*z3*z5^11*z6*z7+ 2*z2*z4*z5^11*z6*z7+
    10*z3*z4*z5^11*z6*z7- 2*z2*z5^12*z6*z7- 8*z3*z5^12*z6*z7- 8*z4*z5^12*z6*z7+
    6*z5^13*z6*z7+ 10*z2^13- 13*z2^12*z3- 13*z2^12*z4+ 10*z2^11*z3*z4-
    3*z2^12*z5- 3*z2^11*z3*z5- 3*z2^11*z4*z5+ 11*z2^10*z3*z4*z5- 3*z2^11*z5^2-
    3*z2^10*z3*z5^2- 3*z2^10*z4*z5^2+ 11*z2^9*z3*z4*z5^2- 3*z2^10*z5^3-
    3*z2^9*z3*z5^3- 3*z2^9*z4*z5^3+ 11*z2^8*z3*z4*z5^3- 3*z2^9*z5^4-
    3*z2^8*z3*z5^4- 3*z2^8*z4*z5^4+ 11*z2^7*z3*z4*z5^4- 3*z2^8*z5^5-
    3*z2^7*z3*z5^5- 3*z2^7*z4*z5^5+ 11*z2^6*z3*z4*z5^5- 3*z2^7*z5^6-
    3*z2^6*z3*z5^6- 3*z2^6*z4*z5^6+ 11*z2^5*z3*z4*z5^6- 3*z2^6*z5^7-
    3*z2^5*z3*z5^7- 3*z2^5*z4*z5^7+ 11*z2^4*z3*z4*z5^7- 3*z2^5*z5^8-
    3*z2^4*z3*z5^8- 3*z2^4*z4*z5^8+ 11*z2^3*z3*z4*z5^8- 3*z2^4*z5^9-
    3*z2^3*z3*z5^9- 3*z2^3*z4*z5^9+ 11*z2^2*z3*z4*z5^9- 3*z2^3*z5^10-
    3*z2^2*z3*z5^10- 3*z2^2*z4*z5^10+ 11*z2*z3*z4*z5^10- 3*z2^2*z5^11-
    3*z2*z3*z5^11- 3*z2*z4*z5^11+ 10*z3*z4*z5^11- 3*z2*z5^12- 13*z3*z5^12-
    13*z4*z5^12+ 10*z5^13- 13*z2^12*z6+ 10*z2^11*z3*z6+ 10*z2^11*z4*z6+
    z2^10*z3*z4*z6- 3*z2^11*z5*z6+ 11*z2^10*z3*z5*z6+ 11*z2^10*z4*z5*z6-
    21*z2^9*z3*z4*z5*z6- 3*z2^10*z5^2*z6+ 11*z2^9*z3*z5^2*z6+
    11*z2^9*z4*z5^2*z6- 21*z2^8*z3*z4*z5^2*z6- 3*z2^9*z5^3*z6+
    11*z2^8*z3*z5^3*z6+ 11*z2^8*z4*z5^3*z6- 21*z2^7*z3*z4*z5^3*z6-
    3*z2^8*z5^4*z6+ 11*z2^7*z3*z5^4*z6+ 11*z2^7*z4*z5^4*z6-
    21*z2^6*z3*z4*z5^4*z6- 3*z2^7*z5^5*z6+ 11*z2^6*z3*z5^5*z6+
    11*z2^6*z4*z5^5*z6- 21*z2^5*z3*z4*z5^5*z6- 3*z2^6*z5^6*z6+
    11*z2^5*z3*z5^6*z6+ 11*z2^5*z4*z5^6*z6- 21*z2^4*z3*z4*z5^6*z6-
    3*z2^5*z5^7*z6+ 11*z2^4*z3*z5^7*z6+ 11*z2^4*z4*z5^7*z6-
    21*z2^3*z3*z4*z5^7*z6- 3*z2^4*z5^8*z6+ 11*z2^3*z3*z5^8*z6+
    11*z2^3*z4*z5^8*z6- 21*z2^2*z3*z4*z5^8*z6- 3*z2^3*z5^9*z6+
    11*z2^2*z3*z5^9*z6+ 11*z2^2*z4*z5^9*z6- 21*z2*z3*z4*z5^9*z6-
    3*z2^2*z5^10*z6+ 11*z2*z3*z5^10*z6+ 11*z2*z4*z5^10*z6+ z3*z4*z5^10*z6-
    3*z2*z5^11*z6+ 10*z3*z5^11*z6+ 10*z4*z5^11*z6- 13*z5^12*z6- 13*z2^12*z7+
    10*z2^11*z3*z7+ 10*z2^11*z4*z7+ z2^10*z3*z4*z7- 3*z2^11*z5*z7+
    11*z2^10*z3*z5*z7+ 11*z2^10*z4*z5*z7- 21*z2^9*z3*z4*z5*z7- 3*z2^10*z5^2*z7+
    11*z2^9*z3*z5^2*z7+ 11*z2^9*z4*z5^2*z7- 21*z2^8*z3*z4*z5^2*z7-
    3*z2^9*z5^3*z7+ 11*z2^8*z3*z5^3*z7+ 11*z2^8*z4*z5^3*z7-
    21*z2^7*z3*z4*z5^3*z7- 3*z2^8*z5^4*z7+ 11*z2^7*z3*z5^4*z7+
    11*z2^7*z4*z5^4*z7- 21*z2^6*z3*z4*z5^4*z7- 3*z2^7*z5^5*z7+
    11*z2^6*z3*z5^5*z7+ 11*z2^6*z4*z5^5*z7- 21*z2^5*z3*z4*z5^5*z7-
    3*z2^6*z5^6*z7+ 11*z2^5*z3*z5^6*z7+ 11*z2^5*z4*z5^6*z7-
    21*z2^4*z3*z4*z5^6*z7- 3*z2^5*z5^7*z7+ 11*z2^4*z3*z5^7*z7+
    11*z2^4*z4*z5^7*z7- 21*z2^3*z3*z4*z5^7*z7- 3*z2^4*z5^8*z7+
    11*z2^3*z3*z5^8*z7+ 11*z2^3*z4*z5^8*z7- 21*z2^2*z3*z4*z5^8*z7-
    3*z2^3*z5^9*z7+ 11*z2^2*z3*z5^9*z7+ 11*z2^2*z4*z5^9*z7- 21*z2*z3*z4*z5^9*z7-
    3*z2^2*z5^10*z7+ 11*z2*z3*z5^10*z7+ 11*z2*z4*z5^10*z7+ z3*z4*z5^10*z7-
    3*z2*z5^11*z7+ 10*z3*z5^11*z7+ 10*z4*z5^11*z7- 13*z5^12*z7+ 10*z2^11*z6*z7+
    z2^10*z3*z6*z7+ z2^10*z4*z6*z7- 22*z2^9*z3*z4*z6*z7+ 11*z2^10*z5*z6*z7-
    21*z2^9*z3*z5*z6*z7- 21*z2^9*z4*z5*z6*z7+ 33*z2^8*z3*z4*z5*z6*z7+
    11*z2^9*z5^2*z6*z7- 21*z2^8*z3*z5^2*z6*z7- 21*z2^8*z4*z5^2*z6*z7+
    33*z2^7*z3*z4*z5^2*z6*z7+ 11*z2^8*z5^3*z6*z7- 21*z2^7*z3*z5^3*z6*z7-
    21*z2^7*z4*z5^3*z6*z7+ 33*z2^6*z3*z4*z5^3*z6*z7+ 11*z2^7*z5^4*z6*z7-
    21*z2^6*z3*z5^4*z6*z7- 21*z2^6*z4*z5^4*z6*z7+ 33*z2^5*z3*z4*z5^4*z6*z7+
    11*z2^6*z5^5*z6*z7- 21*z2^5*z3*z5^5*z6*z7- 21*z2^5*z4*z5^5*z6*z7+
    33*z2^4*z3*z4*z5^5*z6*z7+ 11*z2^5*z5^6*z6*z7- 21*z2^4*z3*z5^6*z6*z7-
    21*z2^4*z4*z5^6*z6*z7+ 33*z2^3*z3*z4*z5^6*z6*z7+ 11*z2^4*z5^7*z6*z7-
    21*z2^3*z3*z5^7*z6*z7- 21*z2^3*z4*z5^7*z6*z7+ 33*z2^2*z3*z4*z5^7*z6*z7+
    11*z2^3*z5^8*z6*z7- 21*z2^2*z3*z5^8*z6*z7- 21*z2^2*z4*z5^8*z6*z7+
    33*z2*z3*z4*z5^8*z6*z7+ 11*z2^2*z5^9*z6*z7- 21*z2*z3*z5^9*z6*z7-
    21*z2*z4*z5^9*z6*z7- 22*z3*z4*z5^9*z6*z7+ 11*z2*z5^10*z6*z7+ z3*z5^10*z6*z7+
    z4*z5^10*z6*z7+ 10*z5^11*z6*z7- 1107*z2^11- 12*z2^10*z3- 12*z2^10*z4+
    1121*z2^9*z3*z4- 1119*z2^10*z5+ 1109*z2^9*z3*z5+ 1109*z2^9*z4*z5-
    1110*z2^8*z3*z4*z5- 1119*z2^9*z5^2+ 1109*z2^8*z3*z5^2+ 1109*z2^8*z4*z5^2-
    1110*z2^7*z3*z4*z5^2- 1119*z2^8*z5^3+ 1109*z2^7*z3*z5^3+ 1109*z2^7*z4*z5^3-
    1110*z2^6*z3*z4*z5^3- 1119*z2^7*z5^4+ 1109*z2^6*z3*z5^4+ 1109*z2^6*z4*z5^4-
    1110*z2^5*z3*z4*z5^4- 1119*z2^6*z5^5+ 1109*z2^5*z3*z5^5+ 1109*z2^5*z4*z5^5-
    1110*z2^4*z3*z4*z5^5- 1119*z2^5*z5^6+ 1109*z2^4*z3*z5^6+ 1109*z2^4*z4*z5^6-
    1110*z2^3*z3*z4*z5^6- 1119*z2^4*z5^7+ 1109*z2^3*z3*z5^7+ 1109*z2^3*z4*z5^7-
    1110*z2^2*z3*z4*z5^7- 1119*z2^3*z5^8+ 1109*z2^2*z3*z5^8+ 1109*z2^2*z4*z5^8-
    1110*z2*z3*z4*z5^8- 1119*z2^2*z5^9+ 1109*z2*z3*z5^9+ 1109*z2*z4*z5^9+
    1121*z3*z4*z5^9- 1119*z2*z5^10- 12*z3*z5^10- 12*z4*z5^10- 1107*z5^11-
    12*z2^10*z6+ 1121*z2^9*z3*z6+ 1121*z2^9*z4*z6- 2231*z2^8*z3*z4*z6+
    1109*z2^9*z5*z6- 1110*z2^8*z3*z5*z6- 1110*z2^8*z4*z5*z6+
    1132*z2^7*z3*z4*z5*z6+ 1109*z2^8*z5^2*z6- 1110*z2^7*z3*z5^2*z6-
    1110*z2^7*z4*z5^2*z6+ 1132*z2^6*z3*z4*z5^2*z6+ 1109*z2^7*z5^3*z6-
    1110*z2^6*z3*z5^3*z6- 1110*z2^6*z4*z5^3*z6+ 1132*z2^5*z3*z4*z5^3*z6+
    1109*z2^6*z5^4*z6- 1110*z2^5*z3*z5^4*z6- 1110*z2^5*z4*z5^4*z6+
    1132*z2^4*z3*z4*z5^4*z6+ 1109*z2^5*z5^5*z6- 1110*z2^4*z3*z5^5*z6-
    1110*z2^4*z4*z5^5*z6+ 1132*z2^3*z3*z4*z5^5*z6+ 1109*z2^4*z5^6*z6-
    1110*z2^3*z3*z5^6*z6- 1110*z2^3*z4*z5^6*z6+ 1132*z2^2*z3*z4*z5^6*z6+
    1109*z2^3*z5^7*z6- 1110*z2^2*z3*z5^7*z6- 1110*z2^2*z4*z5^7*z6+
    1132*z2*z3*z4*z5^7*z6+ 1109*z2^2*z5^8*z6- 1110*z2*z3*z5^8*z6-
    1110*z2*z4*z5^8*z6- 2231*z3*z4*z5^8*z6+ 1109*z2*z5^9*z6+ 1121*z3*z5^9*z6+
    1121*z4*z5^9*z6- 12*z5^10*z6- 12*z2^10*z7+ 1121*z2^9*z3*z7+ 1121*z2^9*z4*z7-
    2231*z2^8*z3*z4*z7+ 1109*z2^9*z5*z7- 1110*z2^8*z3*z5*z7- 1110*z2^8*z4*z5*z7+
    1132*z2^7*z3*z4*z5*z7+ 1109*z2^8*z5^2*z7- 1110*z2^7*z3*z5^2*z7-
    1110*z2^7*z4*z5^2*z7+ 1132*z2^6*z3*z4*z5^2*z7+ 1109*z2^7*z5^3*z7-
    1110*z2^6*z3*z5^3*z7- 1110*z2^6*z4*z5^3*z7+ 1132*z2^5*z3*z4*z5^3*z7+
    1109*z2^6*z5^4*z7- 1110*z2^5*z3*z5^4*z7- 1110*z2^5*z4*z5^4*z7+
    1132*z2^4*z3*z4*z5^4*z7+ 1109*z2^5*z5^5*z7- 1110*z2^4*z3*z5^5*z7-
    1110*z2^4*z4*z5^5*z7+ 1132*z2^3*z3*z4*z5^5*z7+ 1109*z2^4*z5^6*z7-
    1110*z2^3*z3*z5^6*z7- 1110*z2^3*z4*z5^6*z7+ 1132*z2^2*z3*z4*z5^6*z7+
    1109*z2^3*z5^7*z7- 1110*z2^2*z3*z5^7*z7- 1110*z2^2*z4*z5^7*z7+
    1132*z2*z3*z4*z5^7*z7+ 1109*z2^2*z5^8*z7- 1110*z2*z3*z5^8*z7-
    1110*z2*z4*z5^8*z7- 2231*z3*z4*z5^8*z7+ 1109*z2*z5^9*z7+ 1121*z3*z5^9*z7+
    1121*z4*z5^9*z7- 12*z5^10*z7+ 1121*z2^9*z6*z7- 2231*z2^8*z3*z6*z7-
    2231*z2^8*z4*z6*z7+ 3363*z2^7*z3*z4*z6*z7- 1110*z2^8*z5*z6*z7+
    1132*z2^7*z3*z5*z6*z7+ 1132*z2^7*z4*z5*z6*z7- 1187*z2^6*z3*z4*z5*z6*z7-
    1110*z2^7*z5^2*z6*z7+ 1132*z2^6*z3*z5^2*z6*z7+ 1132*z2^6*z4*z5^2*z6*z7-
    1187*z2^5*z3*z4*z5^2*z6*z7- 1110*z2^6*z5^3*z6*z7+ 1132*z2^5*z3*z5^3*z6*z7+
    1132*z2^5*z4*z5^3*z6*z7- 1187*z2^4*z3*z4*z5^3*z6*z7- 1110*z2^5*z5^4*z6*z7+
    1132*z2^4*z3*z5^4*z6*z7+ 1132*z2^4*z4*z5^4*z6*z7-
    1187*z2^3*z3*z4*z5^4*z6*z7- 1110*z2^4*z5^5*z6*z7+ 1132*z2^3*z3*z5^5*z6*z7+
    1132*z2^3*z4*z5^5*z6*z7- 1187*z2^2*z3*z4*z5^5*z6*z7- 1110*z2^3*z5^6*z6*z7+
    1132*z2^2*z3*z5^6*z6*z7+ 1132*z2^2*z4*z5^6*z6*z7- 1187*z2*z3*z4*z5^6*z6*z7-
    1110*z2^2*z5^7*z6*z7+ 1132*z2*z3*z5^7*z6*z7+ 1132*z2*z4*z5^7*z6*z7+
    3363*z3*z4*z5^7*z6*z7- 1110*z2*z5^8*z6*z7- 2231*z3*z5^8*z6*z7-
    2231*z4*z5^8*z6*z7+ 1121*z5^9*z6*z7+ 2264*z2^9- 3374*z2^8*z3- 3374*z2^8*z4+
    3363*z2^7*z3*z4- 1110*z2^8*z5- 11*z2^7*z3*z5- 11*z2^7*z4*z5+
    2242*z2^6*z3*z4*z5- 1110*z2^7*z5^2- 11*z2^6*z3*z5^2- 11*z2^6*z4*z5^2+
    2242*z2^5*z3*z4*z5^2- 1110*z2^6*z5^3- 11*z2^5*z3*z5^3- 11*z2^5*z4*z5^3+
    2242*z2^4*z3*z4*z5^3- 1110*z2^5*z5^4- 11*z2^4*z3*z5^4- 11*z2^4*z4*z5^4+
    2242*z2^3*z3*z4*z5^4- 1110*z2^4*z5^5- 11*z2^3*z3*z5^5- 11*z2^3*z4*z5^5+
    2242*z2^2*z3*z4*z5^5- 1110*z2^3*z5^6- 11*z2^2*z3*z5^6- 11*z2^2*z4*z5^6+
    2242*z2*z3*z4*z5^6- 1110*z2^2*z5^7- 11*z2*z3*z5^7- 11*z2*z4*z5^7+
    3363*z3*z4*z5^7- 1110*z2*z5^8- 3374*z3*z5^8- 3374*z4*z5^8+ 2264*z5^9-
    3374*z2^8*z6+ 3363*z2^7*z3*z6+ 3363*z2^7*z4*z6- 1121*z2^6*z3*z4*z6-
    11*z2^7*z5*z6+ 2242*z2^6*z3*z5*z6+ 2242*z2^6*z4*z5*z6+
    3396*z2^5*z3*z4*z5*z6- 11*z2^6*z5^2*z6+ 2242*z2^5*z3*z5^2*z6+
    2242*z2^5*z4*z5^2*z6+ 3396*z2^4*z3*z4*z5^2*z6- 11*z2^5*z5^3*z6+
    2242*z2^4*z3*z5^3*z6+ 2242*z2^4*z4*z5^3*z6+ 3396*z2^3*z3*z4*z5^3*z6-
    11*z2^4*z5^4*z6+ 2242*z2^3*z3*z5^4*z6+ 2242*z2^3*z4*z5^4*z6+
    3396*z2^2*z3*z4*z5^4*z6- 11*z2^3*z5^5*z6+ 2242*z2^2*z3*z5^5*z6+
    2242*z2^2*z4*z5^5*z6+ 3396*z2*z3*z4*z5^5*z6- 11*z2^2*z5^6*z6+
    2242*z2*z3*z5^6*z6+ 2242*z2*z4*z5^6*z6- 1121*z3*z4*z5^6*z6- 11*z2*z5^7*z6+
    3363*z3*z5^7*z6+ 3363*z4*z5^7*z6- 3374*z5^8*z6- 3374*z2^8*z7+
    3363*z2^7*z3*z7+ 3363*z2^7*z4*z7- 1121*z2^6*z3*z4*z7- 11*z2^7*z5*z7+
    2242*z2^6*z3*z5*z7+ 2242*z2^6*z4*z5*z7+ 3396*z2^5*z3*z4*z5*z7-
    11*z2^6*z5^2*z7+ 2242*z2^5*z3*z5^2*z7+ 2242*z2^5*z4*z5^2*z7+
    3396*z2^4*z3*z4*z5^2*z7- 11*z2^5*z5^3*z7+ 2242*z2^4*z3*z5^3*z7+
    2242*z2^4*z4*z5^3*z7+ 3396*z2^3*z3*z4*z5^3*z7- 11*z2^4*z5^4*z7+
    2242*z2^3*z3*z5^4*z7+ 2242*z2^3*z4*z5^4*z7+ 3396*z2^2*z3*z4*z5^4*z7-
    11*z2^3*z5^5*z7+ 2242*z2^2*z3*z5^5*z7+ 2242*z2^2*z4*z5^5*z7+
    3396*z2*z3*z4*z5^5*z7- 11*z2^2*z5^6*z7+ 2242*z2*z3*z5^6*z7+
    2242*z2*z4*z5^6*z7- 1121*z3*z4*z5^6*z7- 11*z2*z5^7*z7+ 3363*z3*z5^7*z7+
    3363*z4*z5^7*z7- 3374*z5^8*z7+ 3363*z2^7*z6*z7- 1121*z2^6*z3*z6*z7-
    1121*z2^6*z4*z6*z7- 4484*z2^5*z3*z4*z6*z7+ 2242*z2^6*z5*z6*z7+
    3396*z2^5*z3*z5*z6*z7+ 3396*z2^5*z4*z5*z6*z7+ 1154*z2^4*z3*z4*z5*z6*z7+
    2242*z2^5*z5^2*z6*z7+ 3396*z2^4*z3*z5^2*z6*z7+ 3396*z2^4*z4*z5^2*z6*z7+
    1154*z2^3*z3*z4*z5^2*z6*z7+ 2242*z2^4*z5^3*z6*z7+ 3396*z2^3*z3*z5^3*z6*z7+
    3396*z2^3*z4*z5^3*z6*z7+ 1154*z2^2*z3*z4*z5^3*z6*z7+ 2242*z2^3*z5^4*z6*z7+
    3396*z2^2*z3*z5^4*z6*z7+ 3396*z2^2*z4*z5^4*z6*z7+ 1154*z2*z3*z4*z5^4*z6*z7+
    2242*z2^2*z5^5*z6*z7+ 3396*z2*z3*z5^5*z6*z7+ 3396*z2*z4*z5^5*z6*z7-
    4484*z3*z4*z5^5*z6*z7+ 2242*z2*z5^6*z6*z7- 1121*z3*z5^6*z6*z7-
    1121*z4*z5^6*z6*z7+ 3363*z5^7*z6*z7+ 2604*z2^7+ 147*z2^6*z3+ 147*z2^6*z4+
    2740*z2^5*z3*z4+ 2751*z2^6*z5+ 2887*z2^5*z3*z5+ 2887*z2^5*z4*z5-
    1766*z2^4*z3*z4*z5+ 2751*z2^5*z5^2+ 2887*z2^4*z3*z5^2+ 2887*z2^4*z4*z5^2-
    1766*z2^3*z3*z4*z5^2+ 2751*z2^4*z5^3+ 2887*z2^3*z3*z5^3+ 2887*z2^3*z4*z5^3-
    1766*z2^2*z3*z4*z5^3+ 2751*z2^3*z5^4+ 2887*z2^2*z3*z5^4+ 2887*z2^2*z4*z5^4-
    1766*z2*z3*z4*z5^4+ 2751*z2^2*z5^5+ 2887*z2*z3*z5^5+ 2887*z2*z4*z5^5+
    2740*z3*z4*z5^5+ 2751*z2*z5^6+ 147*z3*z5^6+ 147*z4*z5^6+ 2604*z5^7+
    147*z2^6*z6+ 2740*z2^5*z3*z6+ 2740*z2^5*z4*z6+ 4495*z2^4*z3*z4*z6+
    2887*z2^5*z5*z6- 1766*z2^4*z3*z5*z6- 1766*z2^4*z4*z5*z6-
    2751*z2^3*z3*z4*z5*z6+ 2887*z2^4*z5^2*z6- 1766*z2^3*z3*z5^2*z6-
    1766*z2^3*z4*z5^2*z6- 2751*z2^2*z3*z4*z5^2*z6+ 2887*z2^3*z5^3*z6-
    1766*z2^2*z3*z5^3*z6- 1766*z2^2*z4*z5^3*z6- 2751*z2*z3*z4*z5^3*z6+
    2887*z2^2*z5^4*z6- 1766*z2*z3*z5^4*z6- 1766*z2*z4*z5^4*z6+
    4495*z3*z4*z5^4*z6+ 2887*z2*z5^5*z6+ 2740*z3*z5^5*z6+ 2740*z4*z5^5*z6+
    147*z5^6*z6+ 147*z2^6*z7+ 2740*z2^5*z3*z7+ 2740*z2^5*z4*z7+
    4495*z2^4*z3*z4*z7+ 2887*z2^5*z5*z7- 1766*z2^4*z3*z5*z7- 1766*z2^4*z4*z5*z7-
    2751*z2^3*z3*z4*z5*z7+ 2887*z2^4*z5^2*z7- 1766*z2^3*z3*z5^2*z7-
    1766*z2^3*z4*z5^2*z7- 2751*z2^2*z3*z4*z5^2*z7+ 2887*z2^3*z5^3*z7-
    1766*z2^2*z3*z5^3*z7- 1766*z2^2*z4*z5^3*z7- 2751*z2*z3*z4*z5^3*z7+
    2887*z2^2*z5^4*z7- 1766*z2*z3*z5^4*z7- 1766*z2*z4*z5^4*z7+
    4495*z3*z4*z5^4*z7+ 2887*z2*z5^5*z7+ 2740*z3*z5^5*z7+ 2740*z4*z5^5*z7+
    147*z5^6*z7+ 2740*z2^5*z6*z7+ 4495*z2^4*z3*z6*z7+ 4495*z2^4*z4*z6*z7+
    1755*z2^3*z3*z4*z6*z7- 1766*z2^4*z5*z6*z7- 2751*z2^3*z3*z5*z6*z7-
    2751*z2^3*z4*z5*z6*z7- 2887*z2^2*z3*z4*z5*z6*z7- 1766*z2^3*z5^2*z6*z7-
    2751*z2^2*z3*z5^2*z6*z7- 2751*z2^2*z4*z5^2*z6*z7- 2887*z2*z3*z4*z5^2*z6*z7-
    1766*z2^2*z5^3*z6*z7- 2751*z2*z3*z5^3*z6*z7- 2751*z2*z4*z5^3*z6*z7+
    1755*z3*z4*z5^3*z6*z7- 1766*z2*z5^4*z6*z7+ 4495*z3*z5^4*z6*z7+
    4495*z4*z5^4*z6*z7+ 2740*z5^5*z6*z7+ 2037*z2^5+ 318*z2^4*z3+ 318*z2^4*z4+
    3588*z2^3*z3*z4+ 2355*z2^4*z5+ 3906*z2^3*z3*z5+ 3906*z2^3*z4*z5+
    600*z2^2*z3*z4*z5+ 2355*z2^3*z5^2+ 3906*z2^2*z3*z5^2+ 3906*z2^2*z4*z5^2+
    600*z2*z3*z4*z5^2+ 2355*z2^2*z5^3+ 3906*z2*z3*z5^3+ 3906*z2*z4*z5^3+
    3588*z3*z4*z5^3+ 2355*z2*z5^4+ 318*z3*z5^4+ 318*z4*z5^4+ 2037*z5^5+
    318*z2^4*z6+ 3588*z2^3*z3*z6+ 3588*z2^3*z4*z6- 2988*z2^2*z3*z4*z6+
    3906*z2^3*z5*z6+ 600*z2^2*z3*z5*z6+ 600*z2^2*z4*z5*z6- 2355*z2*z3*z4*z5*z6+
    3906*z2^2*z5^2*z6+ 600*z2*z3*z5^2*z6+ 600*z2*z4*z5^2*z6- 2988*z3*z4*z5^2*z6+
    3906*z2*z5^3*z6+ 3588*z3*z5^3*z6+ 3588*z4*z5^3*z6+ 318*z5^4*z6+ 318*z2^4*z7+
    3588*z2^3*z3*z7+ 3588*z2^3*z4*z7- 2988*z2^2*z3*z4*z7+ 3906*z2^3*z5*z7+
    600*z2^2*z3*z5*z7+ 600*z2^2*z4*z5*z7- 2355*z2*z3*z4*z5*z7+
    3906*z2^2*z5^2*z7+ 600*z2*z3*z5^2*z7+ 600*z2*z4*z5^2*z7- 2988*z3*z4*z5^2*z7+
    3906*z2*z5^3*z7+ 3588*z3*z5^3*z7+ 3588*z4*z5^3*z7+ 318*z5^4*z7+
    3588*z2^3*z6*z7- 2988*z2^2*z3*z6*z7- 2988*z2^2*z4*z6*z7+ 633*z2*z3*z4*z6*z7+
    600*z2^2*z5*z6*z7- 2355*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7+
    633*z3*z4*z5*z6*z7+ 600*z2*z5^2*z6*z7- 2988*z3*z5^2*z6*z7-
    2988*z4*z5^2*z6*z7+ 3588*z5^3*z6*z7+ 2166*z2^3- 1776*z2^2*z3- 1776*z2^2*z4-
    2202*z2*z3*z4+ 390*z2^2*z5- 3978*z2*z3*z5- 3978*z2*z4*z5- 2202*z3*z4*z5+
    390*z2*z5^2- 1776*z3*z5^2- 1776*z4*z5^2+ 2166*z5^3- 1776*z2^2*z6-
    2202*z2*z3*z6- 2202*z2*z4*z6- 1068*z3*z4*z6- 3978*z2*z5*z6- 2202*z3*z5*z6-
    2202*z4*z5*z6- 1776*z5^2*z6- 1776*z2^2*z7- 2202*z2*z3*z7- 2202*z2*z4*z7-
    1068*z3*z4*z7- 3978*z2*z5*z7- 2202*z3*z5*z7- 2202*z4*z5*z7- 1776*z5^2*z7-
    2202*z2*z6*z7- 1068*z3*z6*z7- 1068*z4*z6*z7- 2202*z5*z6*z7- 1169*z2+
    3538*z3+ 3538*z4- 1169*z5+ 3538*z6+ 3538*z7",
    "2*z2^15- 4*z2^14*z3- 4*z2^14*z4+ 6*z2^13*z3*z4- 4*z2^14*z5+ 6*z2^13*z3*z5+
    6*z2^13*z4*z5- 8*z2^12*z3*z4*z5- 2*z2^14*z6+ 2*z2^13*z3*z6+ 2*z2^13*z4*z6-
    2*z2^12*z3*z4*z6+ 2*z2^13*z5*z6- 2*z2^12*z3*z5*z6- 2*z2^12*z4*z5*z6+
    2*z2^11*z3*z4*z5*z6- 2*z2^13*z6^2+ 2*z2^12*z3*z6^2+ 2*z2^12*z4*z6^2-
    2*z2^11*z3*z4*z6^2+ 2*z2^12*z5*z6^2- 2*z2^11*z3*z5*z6^2- 2*z2^11*z4*z5*z6^2+
    2*z2^10*z3*z4*z5*z6^2- 2*z2^12*z6^3+ 2*z2^11*z3*z6^3+ 2*z2^11*z4*z6^3-
    2*z2^10*z3*z4*z6^3+ 2*z2^11*z5*z6^3- 2*z2^10*z3*z5*z6^3- 2*z2^10*z4*z5*z6^3+
    2*z2^9*z3*z4*z5*z6^3- 2*z2^11*z6^4+ 2*z2^10*z3*z6^4+ 2*z2^10*z4*z6^4-
    2*z2^9*z3*z4*z6^4+ 2*z2^10*z5*z6^4- 2*z2^9*z3*z5*z6^4- 2*z2^9*z4*z5*z6^4+
    2*z2^8*z3*z4*z5*z6^4- 2*z2^10*z6^5+ 2*z2^9*z3*z6^5+ 2*z2^9*z4*z6^5-
    2*z2^8*z3*z4*z6^5+ 2*z2^9*z5*z6^5- 2*z2^8*z3*z5*z6^5- 2*z2^8*z4*z5*z6^5+
    2*z2^7*z3*z4*z5*z6^5- 2*z2^9*z6^6+ 2*z2^8*z3*z6^6+ 2*z2^8*z4*z6^6-
    2*z2^7*z3*z4*z6^6+ 2*z2^8*z5*z6^6- 2*z2^7*z3*z5*z6^6- 2*z2^7*z4*z5*z6^6+
    2*z2^6*z3*z4*z5*z6^6- 2*z2^8*z6^7+ 2*z2^7*z3*z6^7+ 2*z2^7*z4*z6^7-
    2*z2^6*z3*z4*z6^7+ 2*z2^7*z5*z6^7- 2*z2^6*z3*z5*z6^7- 2*z2^6*z4*z5*z6^7+
    2*z2^5*z3*z4*z5*z6^7- 2*z2^7*z6^8+ 2*z2^6*z3*z6^8+ 2*z2^6*z4*z6^8-
    2*z2^5*z3*z4*z6^8+ 2*z2^6*z5*z6^8- 2*z2^5*z3*z5*z6^8- 2*z2^5*z4*z5*z6^8+
    2*z2^4*z3*z4*z5*z6^8- 2*z2^6*z6^9+ 2*z2^5*z3*z6^9+ 2*z2^5*z4*z6^9-
    2*z2^4*z3*z4*z6^9+ 2*z2^5*z5*z6^9- 2*z2^4*z3*z5*z6^9- 2*z2^4*z4*z5*z6^9+
    2*z2^3*z3*z4*z5*z6^9- 2*z2^5*z6^10+ 2*z2^4*z3*z6^10+ 2*z2^4*z4*z6^10-
    2*z2^3*z3*z4*z6^10+ 2*z2^4*z5*z6^10- 2*z2^3*z3*z5*z6^10- 2*z2^3*z4*z5*z6^10+
    2*z2^2*z3*z4*z5*z6^10- 2*z2^4*z6^11+ 2*z2^3*z3*z6^11+ 2*z2^3*z4*z6^11-
    2*z2^2*z3*z4*z6^11+ 2*z2^3*z5*z6^11- 2*z2^2*z3*z5*z6^11- 2*z2^2*z4*z5*z6^11+
    2*z2*z3*z4*z5*z6^11- 2*z2^3*z6^12+ 2*z2^2*z3*z6^12+ 2*z2^2*z4*z6^12-
    2*z2*z3*z4*z6^12+ 2*z2^2*z5*z6^12- 2*z2*z3*z5*z6^12- 2*z2*z4*z5*z6^12-
    8*z3*z4*z5*z6^12- 2*z2^2*z6^13+ 2*z2*z3*z6^13+ 2*z2*z4*z6^13+ 6*z3*z4*z6^13+
    2*z2*z5*z6^13+ 6*z3*z5*z6^13+ 6*z4*z5*z6^13- 2*z2*z6^14- 4*z3*z6^14-
    4*z4*z6^14- 4*z5*z6^14+ 2*z6^15- 4*z2^14*z7+ 6*z2^13*z3*z7+ 6*z2^13*z4*z7-
    8*z2^12*z3*z4*z7+ 6*z2^13*z5*z7- 8*z2^12*z3*z5*z7- 8*z2^12*z4*z5*z7+
    10*z2^11*z3*z4*z5*z7+ 2*z2^13*z6*z7- 2*z2^12*z3*z6*z7- 2*z2^12*z4*z6*z7+
    2*z2^11*z3*z4*z6*z7- 2*z2^12*z5*z6*z7+ 2*z2^11*z3*z5*z6*z7+
    2*z2^11*z4*z5*z6*z7- 2*z2^10*z3*z4*z5*z6*z7+ 2*z2^12*z6^2*z7-
    2*z2^11*z3*z6^2*z7- 2*z2^11*z4*z6^2*z7+ 2*z2^10*z3*z4*z6^2*z7-
    2*z2^11*z5*z6^2*z7+ 2*z2^10*z3*z5*z6^2*z7+ 2*z2^10*z4*z5*z6^2*z7-
    2*z2^9*z3*z4*z5*z6^2*z7+ 2*z2^11*z6^3*z7- 2*z2^10*z3*z6^3*z7-
    2*z2^10*z4*z6^3*z7+ 2*z2^9*z3*z4*z6^3*z7- 2*z2^10*z5*z6^3*z7+
    2*z2^9*z3*z5*z6^3*z7+ 2*z2^9*z4*z5*z6^3*z7- 2*z2^8*z3*z4*z5*z6^3*z7+
    2*z2^10*z6^4*z7- 2*z2^9*z3*z6^4*z7- 2*z2^9*z4*z6^4*z7+ 2*z2^8*z3*z4*z6^4*z7-
    2*z2^9*z5*z6^4*z7+ 2*z2^8*z3*z5*z6^4*z7+ 2*z2^8*z4*z5*z6^4*z7-
    2*z2^7*z3*z4*z5*z6^4*z7+ 2*z2^9*z6^5*z7- 2*z2^8*z3*z6^5*z7-
    2*z2^8*z4*z6^5*z7+ 2*z2^7*z3*z4*z6^5*z7- 2*z2^8*z5*z6^5*z7+
    2*z2^7*z3*z5*z6^5*z7+ 2*z2^7*z4*z5*z6^5*z7- 2*z2^6*z3*z4*z5*z6^5*z7+
    2*z2^8*z6^6*z7- 2*z2^7*z3*z6^6*z7- 2*z2^7*z4*z6^6*z7+ 2*z2^6*z3*z4*z6^6*z7-
    2*z2^7*z5*z6^6*z7+ 2*z2^6*z3*z5*z6^6*z7+ 2*z2^6*z4*z5*z6^6*z7-
    2*z2^5*z3*z4*z5*z6^6*z7+ 2*z2^7*z6^7*z7- 2*z2^6*z3*z6^7*z7-
    2*z2^6*z4*z6^7*z7+ 2*z2^5*z3*z4*z6^7*z7- 2*z2^6*z5*z6^7*z7+
    2*z2^5*z3*z5*z6^7*z7+ 2*z2^5*z4*z5*z6^7*z7- 2*z2^4*z3*z4*z5*z6^7*z7+
    2*z2^6*z6^8*z7- 2*z2^5*z3*z6^8*z7- 2*z2^5*z4*z6^8*z7+ 2*z2^4*z3*z4*z6^8*z7-
    2*z2^5*z5*z6^8*z7+ 2*z2^4*z3*z5*z6^8*z7+ 2*z2^4*z4*z5*z6^8*z7-
    2*z2^3*z3*z4*z5*z6^8*z7+ 2*z2^5*z6^9*z7- 2*z2^4*z3*z6^9*z7-
    2*z2^4*z4*z6^9*z7+ 2*z2^3*z3*z4*z6^9*z7- 2*z2^4*z5*z6^9*z7+
    2*z2^3*z3*z5*z6^9*z7+ 2*z2^3*z4*z5*z6^9*z7- 2*z2^2*z3*z4*z5*z6^9*z7+
    2*z2^4*z6^10*z7- 2*z2^3*z3*z6^10*z7- 2*z2^3*z4*z6^10*z7+
    2*z2^2*z3*z4*z6^10*z7- 2*z2^3*z5*z6^10*z7+ 2*z2^2*z3*z5*z6^10*z7+
    2*z2^2*z4*z5*z6^10*z7- 2*z2*z3*z4*z5*z6^10*z7+ 2*z2^3*z6^11*z7-
    2*z2^2*z3*z6^11*z7- 2*z2^2*z4*z6^11*z7+ 2*z2*z3*z4*z6^11*z7-
    2*z2^2*z5*z6^11*z7+ 2*z2*z3*z5*z6^11*z7+ 2*z2*z4*z5*z6^11*z7+
    10*z3*z4*z5*z6^11*z7+ 2*z2^2*z6^12*z7- 2*z2*z3*z6^12*z7- 2*z2*z4*z6^12*z7-
    8*z3*z4*z6^12*z7- 2*z2*z5*z6^12*z7- 8*z3*z5*z6^12*z7- 8*z4*z5*z6^12*z7+
    2*z2*z6^13*z7+ 6*z3*z6^13*z7+ 6*z4*z6^13*z7+ 6*z5*z6^13*z7- 4*z6^14*z7+
    10*z2^13- 13*z2^12*z3- 13*z2^12*z4+ 10*z2^11*z3*z4- 13*z2^12*z5+
    10*z2^11*z3*z5+ 10*z2^11*z4*z5+ z2^10*z3*z4*z5- 3*z2^12*z6- 3*z2^11*z3*z6-
    3*z2^11*z4*z6+ 11*z2^10*z3*z4*z6- 3*z2^11*z5*z6+ 11*z2^10*z3*z5*z6+
    11*z2^10*z4*z5*z6- 21*z2^9*z3*z4*z5*z6- 3*z2^11*z6^2- 3*z2^10*z3*z6^2-
    3*z2^10*z4*z6^2+ 11*z2^9*z3*z4*z6^2- 3*z2^10*z5*z6^2+ 11*z2^9*z3*z5*z6^2+
    11*z2^9*z4*z5*z6^2- 21*z2^8*z3*z4*z5*z6^2- 3*z2^10*z6^3- 3*z2^9*z3*z6^3-
    3*z2^9*z4*z6^3+ 11*z2^8*z3*z4*z6^3- 3*z2^9*z5*z6^3+ 11*z2^8*z3*z5*z6^3+
    11*z2^8*z4*z5*z6^3- 21*z2^7*z3*z4*z5*z6^3- 3*z2^9*z6^4- 3*z2^8*z3*z6^4-
    3*z2^8*z4*z6^4+ 11*z2^7*z3*z4*z6^4- 3*z2^8*z5*z6^4+ 11*z2^7*z3*z5*z6^4+
    11*z2^7*z4*z5*z6^4- 21*z2^6*z3*z4*z5*z6^4- 3*z2^8*z6^5- 3*z2^7*z3*z6^5-
    3*z2^7*z4*z6^5+ 11*z2^6*z3*z4*z6^5- 3*z2^7*z5*z6^5+ 11*z2^6*z3*z5*z6^5+
    11*z2^6*z4*z5*z6^5- 21*z2^5*z3*z4*z5*z6^5- 3*z2^7*z6^6- 3*z2^6*z3*z6^6-
    3*z2^6*z4*z6^6+ 11*z2^5*z3*z4*z6^6- 3*z2^6*z5*z6^6+ 11*z2^5*z3*z5*z6^6+
    11*z2^5*z4*z5*z6^6- 21*z2^4*z3*z4*z5*z6^6- 3*z2^6*z6^7- 3*z2^5*z3*z6^7-
    3*z2^5*z4*z6^7+ 11*z2^4*z3*z4*z6^7- 3*z2^5*z5*z6^7+ 11*z2^4*z3*z5*z6^7+
    11*z2^4*z4*z5*z6^7- 21*z2^3*z3*z4*z5*z6^7- 3*z2^5*z6^8- 3*z2^4*z3*z6^8-
    3*z2^4*z4*z6^8+ 11*z2^3*z3*z4*z6^8- 3*z2^4*z5*z6^8+ 11*z2^3*z3*z5*z6^8+
    11*z2^3*z4*z5*z6^8- 21*z2^2*z3*z4*z5*z6^8- 3*z2^4*z6^9- 3*z2^3*z3*z6^9-
    3*z2^3*z4*z6^9+ 11*z2^2*z3*z4*z6^9- 3*z2^3*z5*z6^9+ 11*z2^2*z3*z5*z6^9+
    11*z2^2*z4*z5*z6^9- 21*z2*z3*z4*z5*z6^9- 3*z2^3*z6^10- 3*z2^2*z3*z6^10-
    3*z2^2*z4*z6^10+ 11*z2*z3*z4*z6^10- 3*z2^2*z5*z6^10+ 11*z2*z3*z5*z6^10+
    11*z2*z4*z5*z6^10+ z3*z4*z5*z6^10- 3*z2^2*z6^11- 3*z2*z3*z6^11-
    3*z2*z4*z6^11+ 10*z3*z4*z6^11- 3*z2*z5*z6^11+ 10*z3*z5*z6^11+
    10*z4*z5*z6^11- 3*z2*z6^12- 13*z3*z6^12- 13*z4*z6^12- 13*z5*z6^12+ 10*z6^13-
    13*z2^12*z7+ 10*z2^11*z3*z7+ 10*z2^11*z4*z7+ z2^10*z3*z4*z7+ 10*z2^11*z5*z7+
    z2^10*z3*z5*z7+ z2^10*z4*z5*z7- 22*z2^9*z3*z4*z5*z7- 3*z2^11*z6*z7+
    11*z2^10*z3*z6*z7+ 11*z2^10*z4*z6*z7- 21*z2^9*z3*z4*z6*z7+
    11*z2^10*z5*z6*z7- 21*z2^9*z3*z5*z6*z7- 21*z2^9*z4*z5*z6*z7+
    33*z2^8*z3*z4*z5*z6*z7- 3*z2^10*z6^2*z7+ 11*z2^9*z3*z6^2*z7+
    11*z2^9*z4*z6^2*z7- 21*z2^8*z3*z4*z6^2*z7+ 11*z2^9*z5*z6^2*z7-
    21*z2^8*z3*z5*z6^2*z7- 21*z2^8*z4*z5*z6^2*z7+ 33*z2^7*z3*z4*z5*z6^2*z7-
    3*z2^9*z6^3*z7+ 11*z2^8*z3*z6^3*z7+ 11*z2^8*z4*z6^3*z7-
    21*z2^7*z3*z4*z6^3*z7+ 11*z2^8*z5*z6^3*z7- 21*z2^7*z3*z5*z6^3*z7-
    21*z2^7*z4*z5*z6^3*z7+ 33*z2^6*z3*z4*z5*z6^3*z7- 3*z2^8*z6^4*z7+
    11*z2^7*z3*z6^4*z7+ 11*z2^7*z4*z6^4*z7- 21*z2^6*z3*z4*z6^4*z7+
    11*z2^7*z5*z6^4*z7- 21*z2^6*z3*z5*z6^4*z7- 21*z2^6*z4*z5*z6^4*z7+
    33*z2^5*z3*z4*z5*z6^4*z7- 3*z2^7*z6^5*z7+ 11*z2^6*z3*z6^5*z7+
    11*z2^6*z4*z6^5*z7- 21*z2^5*z3*z4*z6^5*z7+ 11*z2^6*z5*z6^5*z7-
    21*z2^5*z3*z5*z6^5*z7- 21*z2^5*z4*z5*z6^5*z7+ 33*z2^4*z3*z4*z5*z6^5*z7-
    3*z2^6*z6^6*z7+ 11*z2^5*z3*z6^6*z7+ 11*z2^5*z4*z6^6*z7-
    21*z2^4*z3*z4*z6^6*z7+ 11*z2^5*z5*z6^6*z7- 21*z2^4*z3*z5*z6^6*z7-
    21*z2^4*z4*z5*z6^6*z7+ 33*z2^3*z3*z4*z5*z6^6*z7- 3*z2^5*z6^7*z7+
    11*z2^4*z3*z6^7*z7+ 11*z2^4*z4*z6^7*z7- 21*z2^3*z3*z4*z6^7*z7+
    11*z2^4*z5*z6^7*z7- 21*z2^3*z3*z5*z6^7*z7- 21*z2^3*z4*z5*z6^7*z7+
    33*z2^2*z3*z4*z5*z6^7*z7- 3*z2^4*z6^8*z7+ 11*z2^3*z3*z6^8*z7+
    11*z2^3*z4*z6^8*z7- 21*z2^2*z3*z4*z6^8*z7+ 11*z2^3*z5*z6^8*z7-
    21*z2^2*z3*z5*z6^8*z7- 21*z2^2*z4*z5*z6^8*z7+ 33*z2*z3*z4*z5*z6^8*z7-
    3*z2^3*z6^9*z7+ 11*z2^2*z3*z6^9*z7+ 11*z2^2*z4*z6^9*z7- 21*z2*z3*z4*z6^9*z7+
    11*z2^2*z5*z6^9*z7- 21*z2*z3*z5*z6^9*z7- 21*z2*z4*z5*z6^9*z7-
    22*z3*z4*z5*z6^9*z7- 3*z2^2*z6^10*z7+ 11*z2*z3*z6^10*z7+ 11*z2*z4*z6^10*z7+
    z3*z4*z6^10*z7+ 11*z2*z5*z6^10*z7+ z3*z5*z6^10*z7+ z4*z5*z6^10*z7-
    3*z2*z6^11*z7+ 10*z3*z6^11*z7+ 10*z4*z6^11*z7+ 10*z5*z6^11*z7- 13*z6^12*z7-
    1107*z2^11- 12*z2^10*z3- 12*z2^10*z4+ 1121*z2^9*z3*z4- 12*z2^10*z5+
    1121*z2^9*z3*z5+ 1121*z2^9*z4*z5- 2231*z2^8*z3*z4*z5- 1119*z2^10*z6+
    1109*z2^9*z3*z6+ 1109*z2^9*z4*z6- 1110*z2^8*z3*z4*z6+ 1109*z2^9*z5*z6-
    1110*z2^8*z3*z5*z6- 1110*z2^8*z4*z5*z6+ 1132*z2^7*z3*z4*z5*z6-
    1119*z2^9*z6^2+ 1109*z2^8*z3*z6^2+ 1109*z2^8*z4*z6^2- 1110*z2^7*z3*z4*z6^2+
    1109*z2^8*z5*z6^2- 1110*z2^7*z3*z5*z6^2- 1110*z2^7*z4*z5*z6^2+
    1132*z2^6*z3*z4*z5*z6^2- 1119*z2^8*z6^3+ 1109*z2^7*z3*z6^3+
    1109*z2^7*z4*z6^3- 1110*z2^6*z3*z4*z6^3+ 1109*z2^7*z5*z6^3-
    1110*z2^6*z3*z5*z6^3- 1110*z2^6*z4*z5*z6^3+ 1132*z2^5*z3*z4*z5*z6^3-
    1119*z2^7*z6^4+ 1109*z2^6*z3*z6^4+ 1109*z2^6*z4*z6^4- 1110*z2^5*z3*z4*z6^4+
    1109*z2^6*z5*z6^4- 1110*z2^5*z3*z5*z6^4- 1110*z2^5*z4*z5*z6^4+
    1132*z2^4*z3*z4*z5*z6^4- 1119*z2^6*z6^5+ 1109*z2^5*z3*z6^5+
    1109*z2^5*z4*z6^5- 1110*z2^4*z3*z4*z6^5+ 1109*z2^5*z5*z6^5-
    1110*z2^4*z3*z5*z6^5- 1110*z2^4*z4*z5*z6^5+ 1132*z2^3*z3*z4*z5*z6^5-
    1119*z2^5*z6^6+ 1109*z2^4*z3*z6^6+ 1109*z2^4*z4*z6^6- 1110*z2^3*z3*z4*z6^6+
    1109*z2^4*z5*z6^6- 1110*z2^3*z3*z5*z6^6- 1110*z2^3*z4*z5*z6^6+
    1132*z2^2*z3*z4*z5*z6^6- 1119*z2^4*z6^7+ 1109*z2^3*z3*z6^7+
    1109*z2^3*z4*z6^7- 1110*z2^2*z3*z4*z6^7+ 1109*z2^3*z5*z6^7-
    1110*z2^2*z3*z5*z6^7- 1110*z2^2*z4*z5*z6^7+ 1132*z2*z3*z4*z5*z6^7-
    1119*z2^3*z6^8+ 1109*z2^2*z3*z6^8+ 1109*z2^2*z4*z6^8- 1110*z2*z3*z4*z6^8+
    1109*z2^2*z5*z6^8- 1110*z2*z3*z5*z6^8- 1110*z2*z4*z5*z6^8-
    2231*z3*z4*z5*z6^8- 1119*z2^2*z6^9+ 1109*z2*z3*z6^9+ 1109*z2*z4*z6^9+
    1121*z3*z4*z6^9+ 1109*z2*z5*z6^9+ 1121*z3*z5*z6^9+ 1121*z4*z5*z6^9-
    1119*z2*z6^10- 12*z3*z6^10- 12*z4*z6^10- 12*z5*z6^10- 1107*z6^11-
    12*z2^10*z7+ 1121*z2^9*z3*z7+ 1121*z2^9*z4*z7- 2231*z2^8*z3*z4*z7+
    1121*z2^9*z5*z7- 2231*z2^8*z3*z5*z7- 2231*z2^8*z4*z5*z7+
    3363*z2^7*z3*z4*z5*z7+ 1109*z2^9*z6*z7- 1110*z2^8*z3*z6*z7-
    1110*z2^8*z4*z6*z7+ 1132*z2^7*z3*z4*z6*z7- 1110*z2^8*z5*z6*z7+
    1132*z2^7*z3*z5*z6*z7+ 1132*z2^7*z4*z5*z6*z7- 1187*z2^6*z3*z4*z5*z6*z7+
    1109*z2^8*z6^2*z7- 1110*z2^7*z3*z6^2*z7- 1110*z2^7*z4*z6^2*z7+
    1132*z2^6*z3*z4*z6^2*z7- 1110*z2^7*z5*z6^2*z7+ 1132*z2^6*z3*z5*z6^2*z7+
    1132*z2^6*z4*z5*z6^2*z7- 1187*z2^5*z3*z4*z5*z6^2*z7+ 1109*z2^7*z6^3*z7-
    1110*z2^6*z3*z6^3*z7- 1110*z2^6*z4*z6^3*z7+ 1132*z2^5*z3*z4*z6^3*z7-
    1110*z2^6*z5*z6^3*z7+ 1132*z2^5*z3*z5*z6^3*z7+ 1132*z2^5*z4*z5*z6^3*z7-
    1187*z2^4*z3*z4*z5*z6^3*z7+ 1109*z2^6*z6^4*z7- 1110*z2^5*z3*z6^4*z7-
    1110*z2^5*z4*z6^4*z7+ 1132*z2^4*z3*z4*z6^4*z7- 1110*z2^5*z5*z6^4*z7+
    1132*z2^4*z3*z5*z6^4*z7+ 1132*z2^4*z4*z5*z6^4*z7-
    1187*z2^3*z3*z4*z5*z6^4*z7+ 1109*z2^5*z6^5*z7- 1110*z2^4*z3*z6^5*z7-
    1110*z2^4*z4*z6^5*z7+ 1132*z2^3*z3*z4*z6^5*z7- 1110*z2^4*z5*z6^5*z7+
    1132*z2^3*z3*z5*z6^5*z7+ 1132*z2^3*z4*z5*z6^5*z7-
    1187*z2^2*z3*z4*z5*z6^5*z7+ 1109*z2^4*z6^6*z7- 1110*z2^3*z3*z6^6*z7-
    1110*z2^3*z4*z6^6*z7+ 1132*z2^2*z3*z4*z6^6*z7- 1110*z2^3*z5*z6^6*z7+
    1132*z2^2*z3*z5*z6^6*z7+ 1132*z2^2*z4*z5*z6^6*z7- 1187*z2*z3*z4*z5*z6^6*z7+
    1109*z2^3*z6^7*z7- 1110*z2^2*z3*z6^7*z7- 1110*z2^2*z4*z6^7*z7+
    1132*z2*z3*z4*z6^7*z7- 1110*z2^2*z5*z6^7*z7+ 1132*z2*z3*z5*z6^7*z7+
    1132*z2*z4*z5*z6^7*z7+ 3363*z3*z4*z5*z6^7*z7+ 1109*z2^2*z6^8*z7-
    1110*z2*z3*z6^8*z7- 1110*z2*z4*z6^8*z7- 2231*z3*z4*z6^8*z7-
    1110*z2*z5*z6^8*z7- 2231*z3*z5*z6^8*z7- 2231*z4*z5*z6^8*z7+ 1109*z2*z6^9*z7+
    1121*z3*z6^9*z7+ 1121*z4*z6^9*z7+ 1121*z5*z6^9*z7- 12*z6^10*z7+ 2264*z2^9-
    3374*z2^8*z3- 3374*z2^8*z4+ 3363*z2^7*z3*z4- 3374*z2^8*z5+ 3363*z2^7*z3*z5+
    3363*z2^7*z4*z5- 1121*z2^6*z3*z4*z5- 1110*z2^8*z6- 11*z2^7*z3*z6-
    11*z2^7*z4*z6+ 2242*z2^6*z3*z4*z6- 11*z2^7*z5*z6+ 2242*z2^6*z3*z5*z6+
    2242*z2^6*z4*z5*z6+ 3396*z2^5*z3*z4*z5*z6- 1110*z2^7*z6^2- 11*z2^6*z3*z6^2-
    11*z2^6*z4*z6^2+ 2242*z2^5*z3*z4*z6^2- 11*z2^6*z5*z6^2+
    2242*z2^5*z3*z5*z6^2+ 2242*z2^5*z4*z5*z6^2+ 3396*z2^4*z3*z4*z5*z6^2-
    1110*z2^6*z6^3- 11*z2^5*z3*z6^3- 11*z2^5*z4*z6^3+ 2242*z2^4*z3*z4*z6^3-
    11*z2^5*z5*z6^3+ 2242*z2^4*z3*z5*z6^3+ 2242*z2^4*z4*z5*z6^3+
    3396*z2^3*z3*z4*z5*z6^3- 1110*z2^5*z6^4- 11*z2^4*z3*z6^4- 11*z2^4*z4*z6^4+
    2242*z2^3*z3*z4*z6^4- 11*z2^4*z5*z6^4+ 2242*z2^3*z3*z5*z6^4+
    2242*z2^3*z4*z5*z6^4+ 3396*z2^2*z3*z4*z5*z6^4- 1110*z2^4*z6^5-
    11*z2^3*z3*z6^5- 11*z2^3*z4*z6^5+ 2242*z2^2*z3*z4*z6^5- 11*z2^3*z5*z6^5+
    2242*z2^2*z3*z5*z6^5+ 2242*z2^2*z4*z5*z6^5+ 3396*z2*z3*z4*z5*z6^5-
    1110*z2^3*z6^6- 11*z2^2*z3*z6^6- 11*z2^2*z4*z6^6+ 2242*z2*z3*z4*z6^6-
    11*z2^2*z5*z6^6+ 2242*z2*z3*z5*z6^6+ 2242*z2*z4*z5*z6^6- 1121*z3*z4*z5*z6^6-
    1110*z2^2*z6^7- 11*z2*z3*z6^7- 11*z2*z4*z6^7+ 3363*z3*z4*z6^7-
    11*z2*z5*z6^7+ 3363*z3*z5*z6^7+ 3363*z4*z5*z6^7- 1110*z2*z6^8- 3374*z3*z6^8-
    3374*z4*z6^8- 3374*z5*z6^8+ 2264*z6^9- 3374*z2^8*z7+ 3363*z2^7*z3*z7+
    3363*z2^7*z4*z7- 1121*z2^6*z3*z4*z7+ 3363*z2^7*z5*z7- 1121*z2^6*z3*z5*z7-
    1121*z2^6*z4*z5*z7- 4484*z2^5*z3*z4*z5*z7- 11*z2^7*z6*z7+
    2242*z2^6*z3*z6*z7+ 2242*z2^6*z4*z6*z7+ 3396*z2^5*z3*z4*z6*z7+
    2242*z2^6*z5*z6*z7+ 3396*z2^5*z3*z5*z6*z7+ 3396*z2^5*z4*z5*z6*z7+
    1154*z2^4*z3*z4*z5*z6*z7- 11*z2^6*z6^2*z7+ 2242*z2^5*z3*z6^2*z7+
    2242*z2^5*z4*z6^2*z7+ 3396*z2^4*z3*z4*z6^2*z7+ 2242*z2^5*z5*z6^2*z7+
    3396*z2^4*z3*z5*z6^2*z7+ 3396*z2^4*z4*z5*z6^2*z7+
    1154*z2^3*z3*z4*z5*z6^2*z7- 11*z2^5*z6^3*z7+ 2242*z2^4*z3*z6^3*z7+
    2242*z2^4*z4*z6^3*z7+ 3396*z2^3*z3*z4*z6^3*z7+ 2242*z2^4*z5*z6^3*z7+
    3396*z2^3*z3*z5*z6^3*z7+ 3396*z2^3*z4*z5*z6^3*z7+
    1154*z2^2*z3*z4*z5*z6^3*z7- 11*z2^4*z6^4*z7+ 2242*z2^3*z3*z6^4*z7+
    2242*z2^3*z4*z6^4*z7+ 3396*z2^2*z3*z4*z6^4*z7+ 2242*z2^3*z5*z6^4*z7+
    3396*z2^2*z3*z5*z6^4*z7+ 3396*z2^2*z4*z5*z6^4*z7+ 1154*z2*z3*z4*z5*z6^4*z7-
    11*z2^3*z6^5*z7+ 2242*z2^2*z3*z6^5*z7+ 2242*z2^2*z4*z6^5*z7+
    3396*z2*z3*z4*z6^5*z7+ 2242*z2^2*z5*z6^5*z7+ 3396*z2*z3*z5*z6^5*z7+
    3396*z2*z4*z5*z6^5*z7- 4484*z3*z4*z5*z6^5*z7- 11*z2^2*z6^6*z7+
    2242*z2*z3*z6^6*z7+ 2242*z2*z4*z6^6*z7- 1121*z3*z4*z6^6*z7+
    2242*z2*z5*z6^6*z7- 1121*z3*z5*z6^6*z7- 1121*z4*z5*z6^6*z7- 11*z2*z6^7*z7+
    3363*z3*z6^7*z7+ 3363*z4*z6^7*z7+ 3363*z5*z6^7*z7- 3374*z6^8*z7+ 2604*z2^7+
    147*z2^6*z3+ 147*z2^6*z4+ 2740*z2^5*z3*z4+ 147*z2^6*z5+ 2740*z2^5*z3*z5+
    2740*z2^5*z4*z5+ 4495*z2^4*z3*z4*z5+ 2751*z2^6*z6+ 2887*z2^5*z3*z6+
    2887*z2^5*z4*z6- 1766*z2^4*z3*z4*z6+ 2887*z2^5*z5*z6- 1766*z2^4*z3*z5*z6-
    1766*z2^4*z4*z5*z6- 2751*z2^3*z3*z4*z5*z6+ 2751*z2^5*z6^2+
    2887*z2^4*z3*z6^2+ 2887*z2^4*z4*z6^2- 1766*z2^3*z3*z4*z6^2+
    2887*z2^4*z5*z6^2- 1766*z2^3*z3*z5*z6^2- 1766*z2^3*z4*z5*z6^2-
    2751*z2^2*z3*z4*z5*z6^2+ 2751*z2^4*z6^3+ 2887*z2^3*z3*z6^3+
    2887*z2^3*z4*z6^3- 1766*z2^2*z3*z4*z6^3+ 2887*z2^3*z5*z6^3-
    1766*z2^2*z3*z5*z6^3- 1766*z2^2*z4*z5*z6^3- 2751*z2*z3*z4*z5*z6^3+
    2751*z2^3*z6^4+ 2887*z2^2*z3*z6^4+ 2887*z2^2*z4*z6^4- 1766*z2*z3*z4*z6^4+
    2887*z2^2*z5*z6^4- 1766*z2*z3*z5*z6^4- 1766*z2*z4*z5*z6^4+
    4495*z3*z4*z5*z6^4+ 2751*z2^2*z6^5+ 2887*z2*z3*z6^5+ 2887*z2*z4*z6^5+
    2740*z3*z4*z6^5+ 2887*z2*z5*z6^5+ 2740*z3*z5*z6^5+ 2740*z4*z5*z6^5+
    2751*z2*z6^6+ 147*z3*z6^6+ 147*z4*z6^6+ 147*z5*z6^6+ 2604*z6^7+ 147*z2^6*z7+
    2740*z2^5*z3*z7+ 2740*z2^5*z4*z7+ 4495*z2^4*z3*z4*z7+ 2740*z2^5*z5*z7+
    4495*z2^4*z3*z5*z7+ 4495*z2^4*z4*z5*z7+ 1755*z2^3*z3*z4*z5*z7+
    2887*z2^5*z6*z7- 1766*z2^4*z3*z6*z7- 1766*z2^4*z4*z6*z7-
    2751*z2^3*z3*z4*z6*z7- 1766*z2^4*z5*z6*z7- 2751*z2^3*z3*z5*z6*z7-
    2751*z2^3*z4*z5*z6*z7- 2887*z2^2*z3*z4*z5*z6*z7+ 2887*z2^4*z6^2*z7-
    1766*z2^3*z3*z6^2*z7- 1766*z2^3*z4*z6^2*z7- 2751*z2^2*z3*z4*z6^2*z7-
    1766*z2^3*z5*z6^2*z7- 2751*z2^2*z3*z5*z6^2*z7- 2751*z2^2*z4*z5*z6^2*z7-
    2887*z2*z3*z4*z5*z6^2*z7+ 2887*z2^3*z6^3*z7- 1766*z2^2*z3*z6^3*z7-
    1766*z2^2*z4*z6^3*z7- 2751*z2*z3*z4*z6^3*z7- 1766*z2^2*z5*z6^3*z7-
    2751*z2*z3*z5*z6^3*z7- 2751*z2*z4*z5*z6^3*z7+ 1755*z3*z4*z5*z6^3*z7+
    2887*z2^2*z6^4*z7- 1766*z2*z3*z6^4*z7- 1766*z2*z4*z6^4*z7+
    4495*z3*z4*z6^4*z7- 1766*z2*z5*z6^4*z7+ 4495*z3*z5*z6^4*z7+
    4495*z4*z5*z6^4*z7+ 2887*z2*z6^5*z7+ 2740*z3*z6^5*z7+ 2740*z4*z6^5*z7+
    2740*z5*z6^5*z7+ 147*z6^6*z7+ 2037*z2^5+ 318*z2^4*z3+ 318*z2^4*z4+
    3588*z2^3*z3*z4+ 318*z2^4*z5+ 3588*z2^3*z3*z5+ 3588*z2^3*z4*z5-
    2988*z2^2*z3*z4*z5+ 2355*z2^4*z6+ 3906*z2^3*z3*z6+ 3906*z2^3*z4*z6+
    600*z2^2*z3*z4*z6+ 3906*z2^3*z5*z6+ 600*z2^2*z3*z5*z6+ 600*z2^2*z4*z5*z6-
    2355*z2*z3*z4*z5*z6+ 2355*z2^3*z6^2+ 3906*z2^2*z3*z6^2+ 3906*z2^2*z4*z6^2+
    600*z2*z3*z4*z6^2+ 3906*z2^2*z5*z6^2+ 600*z2*z3*z5*z6^2+ 600*z2*z4*z5*z6^2-
    2988*z3*z4*z5*z6^2+ 2355*z2^2*z6^3+ 3906*z2*z3*z6^3+ 3906*z2*z4*z6^3+
    3588*z3*z4*z6^3+ 3906*z2*z5*z6^3+ 3588*z3*z5*z6^3+ 3588*z4*z5*z6^3+
    2355*z2*z6^4+ 318*z3*z6^4+ 318*z4*z6^4+ 318*z5*z6^4+ 2037*z6^5+ 318*z2^4*z7+
    3588*z2^3*z3*z7+ 3588*z2^3*z4*z7- 2988*z2^2*z3*z4*z7+ 3588*z2^3*z5*z7-
    2988*z2^2*z3*z5*z7- 2988*z2^2*z4*z5*z7+ 633*z2*z3*z4*z5*z7+ 3906*z2^3*z6*z7+
    600*z2^2*z3*z6*z7+ 600*z2^2*z4*z6*z7- 2355*z2*z3*z4*z6*z7+
    600*z2^2*z5*z6*z7- 2355*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7+
    633*z3*z4*z5*z6*z7+ 3906*z2^2*z6^2*z7+ 600*z2*z3*z6^2*z7+ 600*z2*z4*z6^2*z7-
    2988*z3*z4*z6^2*z7+ 600*z2*z5*z6^2*z7- 2988*z3*z5*z6^2*z7-
    2988*z4*z5*z6^2*z7+ 3906*z2*z6^3*z7+ 3588*z3*z6^3*z7+ 3588*z4*z6^3*z7+
    3588*z5*z6^3*z7+ 318*z6^4*z7+ 2166*z2^3- 1776*z2^2*z3- 1776*z2^2*z4-
    2202*z2*z3*z4- 1776*z2^2*z5- 2202*z2*z3*z5- 2202*z2*z4*z5- 1068*z3*z4*z5+
    390*z2^2*z6- 3978*z2*z3*z6- 3978*z2*z4*z6- 2202*z3*z4*z6- 3978*z2*z5*z6-
    2202*z3*z5*z6- 2202*z4*z5*z6+ 390*z2*z6^2- 1776*z3*z6^2- 1776*z4*z6^2-
    1776*z5*z6^2+ 2166*z6^3- 1776*z2^2*z7- 2202*z2*z3*z7- 2202*z2*z4*z7-
    1068*z3*z4*z7- 2202*z2*z5*z7- 1068*z3*z5*z7- 1068*z4*z5*z7- 3978*z2*z6*z7-
    2202*z3*z6*z7- 2202*z4*z6*z7- 2202*z5*z6*z7- 1776*z6^2*z7- 1169*z2+ 3538*z3+
    3538*z4+ 3538*z5- 1169*z6+ 3538*z7",
    "2*z2^15- 4*z2^14*z3- 4*z2^14*z4+ 6*z2^13*z3*z4- 4*z2^14*z5+ 6*z2^13*z3*z5+
    6*z2^13*z4*z5- 8*z2^12*z3*z4*z5- 4*z2^14*z6+ 6*z2^13*z3*z6+ 6*z2^13*z4*z6-
    8*z2^12*z3*z4*z6+ 6*z2^13*z5*z6- 8*z2^12*z3*z5*z6- 8*z2^12*z4*z5*z6+
    10*z2^11*z3*z4*z5*z6- 2*z2^14*z7+ 2*z2^13*z3*z7+ 2*z2^13*z4*z7-
    2*z2^12*z3*z4*z7+ 2*z2^13*z5*z7- 2*z2^12*z3*z5*z7- 2*z2^12*z4*z5*z7+
    2*z2^11*z3*z4*z5*z7+ 2*z2^13*z6*z7- 2*z2^12*z3*z6*z7- 2*z2^12*z4*z6*z7+
    2*z2^11*z3*z4*z6*z7- 2*z2^12*z5*z6*z7+ 2*z2^11*z3*z5*z6*z7+
    2*z2^11*z4*z5*z6*z7- 2*z2^10*z3*z4*z5*z6*z7- 2*z2^13*z7^2+ 2*z2^12*z3*z7^2+
    2*z2^12*z4*z7^2- 2*z2^11*z3*z4*z7^2+ 2*z2^12*z5*z7^2- 2*z2^11*z3*z5*z7^2-
    2*z2^11*z4*z5*z7^2+ 2*z2^10*z3*z4*z5*z7^2+ 2*z2^12*z6*z7^2-
    2*z2^11*z3*z6*z7^2- 2*z2^11*z4*z6*z7^2+ 2*z2^10*z3*z4*z6*z7^2-
    2*z2^11*z5*z6*z7^2+ 2*z2^10*z3*z5*z6*z7^2+ 2*z2^10*z4*z5*z6*z7^2-
    2*z2^9*z3*z4*z5*z6*z7^2- 2*z2^12*z7^3+ 2*z2^11*z3*z7^3+ 2*z2^11*z4*z7^3-
    2*z2^10*z3*z4*z7^3+ 2*z2^11*z5*z7^3- 2*z2^10*z3*z5*z7^3- 2*z2^10*z4*z5*z7^3+
    2*z2^9*z3*z4*z5*z7^3+ 2*z2^11*z6*z7^3- 2*z2^10*z3*z6*z7^3-
    2*z2^10*z4*z6*z7^3+ 2*z2^9*z3*z4*z6*z7^3- 2*z2^10*z5*z6*z7^3+
    2*z2^9*z3*z5*z6*z7^3+ 2*z2^9*z4*z5*z6*z7^3- 2*z2^8*z3*z4*z5*z6*z7^3-
    2*z2^11*z7^4+ 2*z2^10*z3*z7^4+ 2*z2^10*z4*z7^4- 2*z2^9*z3*z4*z7^4+
    2*z2^10*z5*z7^4- 2*z2^9*z3*z5*z7^4- 2*z2^9*z4*z5*z7^4+ 2*z2^8*z3*z4*z5*z7^4+
    2*z2^10*z6*z7^4- 2*z2^9*z3*z6*z7^4- 2*z2^9*z4*z6*z7^4+ 2*z2^8*z3*z4*z6*z7^4-
    2*z2^9*z5*z6*z7^4+ 2*z2^8*z3*z5*z6*z7^4+ 2*z2^8*z4*z5*z6*z7^4-
    2*z2^7*z3*z4*z5*z6*z7^4- 2*z2^10*z7^5+ 2*z2^9*z3*z7^5+ 2*z2^9*z4*z7^5-
    2*z2^8*z3*z4*z7^5+ 2*z2^9*z5*z7^5- 2*z2^8*z3*z5*z7^5- 2*z2^8*z4*z5*z7^5+
    2*z2^7*z3*z4*z5*z7^5+ 2*z2^9*z6*z7^5- 2*z2^8*z3*z6*z7^5- 2*z2^8*z4*z6*z7^5+
    2*z2^7*z3*z4*z6*z7^5- 2*z2^8*z5*z6*z7^5+ 2*z2^7*z3*z5*z6*z7^5+
    2*z2^7*z4*z5*z6*z7^5- 2*z2^6*z3*z4*z5*z6*z7^5- 2*z2^9*z7^6+ 2*z2^8*z3*z7^6+
    2*z2^8*z4*z7^6- 2*z2^7*z3*z4*z7^6+ 2*z2^8*z5*z7^6- 2*z2^7*z3*z5*z7^6-
    2*z2^7*z4*z5*z7^6+ 2*z2^6*z3*z4*z5*z7^6+ 2*z2^8*z6*z7^6- 2*z2^7*z3*z6*z7^6-
    2*z2^7*z4*z6*z7^6+ 2*z2^6*z3*z4*z6*z7^6- 2*z2^7*z5*z6*z7^6+
    2*z2^6*z3*z5*z6*z7^6+ 2*z2^6*z4*z5*z6*z7^6- 2*z2^5*z3*z4*z5*z6*z7^6-
    2*z2^8*z7^7+ 2*z2^7*z3*z7^7+ 2*z2^7*z4*z7^7- 2*z2^6*z3*z4*z7^7+
    2*z2^7*z5*z7^7- 2*z2^6*z3*z5*z7^7- 2*z2^6*z4*z5*z7^7+ 2*z2^5*z3*z4*z5*z7^7+
    2*z2^7*z6*z7^7- 2*z2^6*z3*z6*z7^7- 2*z2^6*z4*z6*z7^7+ 2*z2^5*z3*z4*z6*z7^7-
    2*z2^6*z5*z6*z7^7+ 2*z2^5*z3*z5*z6*z7^7+ 2*z2^5*z4*z5*z6*z7^7-
    2*z2^4*z3*z4*z5*z6*z7^7- 2*z2^7*z7^8+ 2*z2^6*z3*z7^8+ 2*z2^6*z4*z7^8-
    2*z2^5*z3*z4*z7^8+ 2*z2^6*z5*z7^8- 2*z2^5*z3*z5*z7^8- 2*z2^5*z4*z5*z7^8+
    2*z2^4*z3*z4*z5*z7^8+ 2*z2^6*z6*z7^8- 2*z2^5*z3*z6*z7^8- 2*z2^5*z4*z6*z7^8+
    2*z2^4*z3*z4*z6*z7^8- 2*z2^5*z5*z6*z7^8+ 2*z2^4*z3*z5*z6*z7^8+
    2*z2^4*z4*z5*z6*z7^8- 2*z2^3*z3*z4*z5*z6*z7^8- 2*z2^6*z7^9+ 2*z2^5*z3*z7^9+
    2*z2^5*z4*z7^9- 2*z2^4*z3*z4*z7^9+ 2*z2^5*z5*z7^9- 2*z2^4*z3*z5*z7^9-
    2*z2^4*z4*z5*z7^9+ 2*z2^3*z3*z4*z5*z7^9+ 2*z2^5*z6*z7^9- 2*z2^4*z3*z6*z7^9-
    2*z2^4*z4*z6*z7^9+ 2*z2^3*z3*z4*z6*z7^9- 2*z2^4*z5*z6*z7^9+
    2*z2^3*z3*z5*z6*z7^9+ 2*z2^3*z4*z5*z6*z7^9- 2*z2^2*z3*z4*z5*z6*z7^9-
    2*z2^5*z7^10+ 2*z2^4*z3*z7^10+ 2*z2^4*z4*z7^10- 2*z2^3*z3*z4*z7^10+
    2*z2^4*z5*z7^10- 2*z2^3*z3*z5*z7^10- 2*z2^3*z4*z5*z7^10+
    2*z2^2*z3*z4*z5*z7^10+ 2*z2^4*z6*z7^10- 2*z2^3*z3*z6*z7^10-
    2*z2^3*z4*z6*z7^10+ 2*z2^2*z3*z4*z6*z7^10- 2*z2^3*z5*z6*z7^10+
    2*z2^2*z3*z5*z6*z7^10+ 2*z2^2*z4*z5*z6*z7^10- 2*z2*z3*z4*z5*z6*z7^10-
    2*z2^4*z7^11+ 2*z2^3*z3*z7^11+ 2*z2^3*z4*z7^11- 2*z2^2*z3*z4*z7^11+
    2*z2^3*z5*z7^11- 2*z2^2*z3*z5*z7^11- 2*z2^2*z4*z5*z7^11+
    2*z2*z3*z4*z5*z7^11+ 2*z2^3*z6*z7^11- 2*z2^2*z3*z6*z7^11-
    2*z2^2*z4*z6*z7^11+ 2*z2*z3*z4*z6*z7^11- 2*z2^2*z5*z6*z7^11+
    2*z2*z3*z5*z6*z7^11+ 2*z2*z4*z5*z6*z7^11+ 10*z3*z4*z5*z6*z7^11-
    2*z2^3*z7^12+ 2*z2^2*z3*z7^12+ 2*z2^2*z4*z7^12- 2*z2*z3*z4*z7^12+
    2*z2^2*z5*z7^12- 2*z2*z3*z5*z7^12- 2*z2*z4*z5*z7^12- 8*z3*z4*z5*z7^12+
    2*z2^2*z6*z7^12- 2*z2*z3*z6*z7^12- 2*z2*z4*z6*z7^12- 8*z3*z4*z6*z7^12-
    2*z2*z5*z6*z7^12- 8*z3*z5*z6*z7^12- 8*z4*z5*z6*z7^12- 2*z2^2*z7^13+
    2*z2*z3*z7^13+ 2*z2*z4*z7^13+ 6*z3*z4*z7^13+ 2*z2*z5*z7^13+ 6*z3*z5*z7^13+
    6*z4*z5*z7^13+ 2*z2*z6*z7^13+ 6*z3*z6*z7^13+ 6*z4*z6*z7^13+ 6*z5*z6*z7^13-
    2*z2*z7^14- 4*z3*z7^14- 4*z4*z7^14- 4*z5*z7^14- 4*z6*z7^14+ 2*z7^15+
    10*z2^13- 13*z2^12*z3- 13*z2^12*z4+ 10*z2^11*z3*z4- 13*z2^12*z5+
    10*z2^11*z3*z5+ 10*z2^11*z4*z5+ z2^10*z3*z4*z5- 13*z2^12*z6+ 10*z2^11*z3*z6+
    10*z2^11*z4*z6+ z2^10*z3*z4*z6+ 10*z2^11*z5*z6+ z2^10*z3*z5*z6+
    z2^10*z4*z5*z6- 22*z2^9*z3*z4*z5*z6- 3*z2^12*z7- 3*z2^11*z3*z7-
    3*z2^11*z4*z7+ 11*z2^10*z3*z4*z7- 3*z2^11*z5*z7+ 11*z2^10*z3*z5*z7+
    11*z2^10*z4*z5*z7- 21*z2^9*z3*z4*z5*z7- 3*z2^11*z6*z7+ 11*z2^10*z3*z6*z7+
    11*z2^10*z4*z6*z7- 21*z2^9*z3*z4*z6*z7+ 11*z2^10*z5*z6*z7-
    21*z2^9*z3*z5*z6*z7- 21*z2^9*z4*z5*z6*z7+ 33*z2^8*z3*z4*z5*z6*z7-
    3*z2^11*z7^2- 3*z2^10*z3*z7^2- 3*z2^10*z4*z7^2+ 11*z2^9*z3*z4*z7^2-
    3*z2^10*z5*z7^2+ 11*z2^9*z3*z5*z7^2+ 11*z2^9*z4*z5*z7^2-
    21*z2^8*z3*z4*z5*z7^2- 3*z2^10*z6*z7^2+ 11*z2^9*z3*z6*z7^2+
    11*z2^9*z4*z6*z7^2- 21*z2^8*z3*z4*z6*z7^2+ 11*z2^9*z5*z6*z7^2-
    21*z2^8*z3*z5*z6*z7^2- 21*z2^8*z4*z5*z6*z7^2+ 33*z2^7*z3*z4*z5*z6*z7^2-
    3*z2^10*z7^3- 3*z2^9*z3*z7^3- 3*z2^9*z4*z7^3+ 11*z2^8*z3*z4*z7^3-
    3*z2^9*z5*z7^3+ 11*z2^8*z3*z5*z7^3+ 11*z2^8*z4*z5*z7^3-
    21*z2^7*z3*z4*z5*z7^3- 3*z2^9*z6*z7^3+ 11*z2^8*z3*z6*z7^3+
    11*z2^8*z4*z6*z7^3- 21*z2^7*z3*z4*z6*z7^3+ 11*z2^8*z5*z6*z7^3-
    21*z2^7*z3*z5*z6*z7^3- 21*z2^7*z4*z5*z6*z7^3+ 33*z2^6*z3*z4*z5*z6*z7^3-
    3*z2^9*z7^4- 3*z2^8*z3*z7^4- 3*z2^8*z4*z7^4+ 11*z2^7*z3*z4*z7^4-
    3*z2^8*z5*z7^4+ 11*z2^7*z3*z5*z7^4+ 11*z2^7*z4*z5*z7^4-
    21*z2^6*z3*z4*z5*z7^4- 3*z2^8*z6*z7^4+ 11*z2^7*z3*z6*z7^4+
    11*z2^7*z4*z6*z7^4- 21*z2^6*z3*z4*z6*z7^4+ 11*z2^7*z5*z6*z7^4-
    21*z2^6*z3*z5*z6*z7^4- 21*z2^6*z4*z5*z6*z7^4+ 33*z2^5*z3*z4*z5*z6*z7^4-
    3*z2^8*z7^5- 3*z2^7*z3*z7^5- 3*z2^7*z4*z7^5+ 11*z2^6*z3*z4*z7^5-
    3*z2^7*z5*z7^5+ 11*z2^6*z3*z5*z7^5+ 11*z2^6*z4*z5*z7^5-
    21*z2^5*z3*z4*z5*z7^5- 3*z2^7*z6*z7^5+ 11*z2^6*z3*z6*z7^5+
    11*z2^6*z4*z6*z7^5- 21*z2^5*z3*z4*z6*z7^5+ 11*z2^6*z5*z6*z7^5-
    21*z2^5*z3*z5*z6*z7^5- 21*z2^5*z4*z5*z6*z7^5+ 33*z2^4*z3*z4*z5*z6*z7^5-
    3*z2^7*z7^6- 3*z2^6*z3*z7^6- 3*z2^6*z4*z7^6+ 11*z2^5*z3*z4*z7^6-
    3*z2^6*z5*z7^6+ 11*z2^5*z3*z5*z7^6+ 11*z2^5*z4*z5*z7^6-
    21*z2^4*z3*z4*z5*z7^6- 3*z2^6*z6*z7^6+ 11*z2^5*z3*z6*z7^6+
    11*z2^5*z4*z6*z7^6- 21*z2^4*z3*z4*z6*z7^6+ 11*z2^5*z5*z6*z7^6-
    21*z2^4*z3*z5*z6*z7^6- 21*z2^4*z4*z5*z6*z7^6+ 33*z2^3*z3*z4*z5*z6*z7^6-
    3*z2^6*z7^7- 3*z2^5*z3*z7^7- 3*z2^5*z4*z7^7+ 11*z2^4*z3*z4*z7^7-
    3*z2^5*z5*z7^7+ 11*z2^4*z3*z5*z7^7+ 11*z2^4*z4*z5*z7^7-
    21*z2^3*z3*z4*z5*z7^7- 3*z2^5*z6*z7^7+ 11*z2^4*z3*z6*z7^7+
    11*z2^4*z4*z6*z7^7- 21*z2^3*z3*z4*z6*z7^7+ 11*z2^4*z5*z6*z7^7-
    21*z2^3*z3*z5*z6*z7^7- 21*z2^3*z4*z5*z6*z7^7+ 33*z2^2*z3*z4*z5*z6*z7^7-
    3*z2^5*z7^8- 3*z2^4*z3*z7^8- 3*z2^4*z4*z7^8+ 11*z2^3*z3*z4*z7^8-
    3*z2^4*z5*z7^8+ 11*z2^3*z3*z5*z7^8+ 11*z2^3*z4*z5*z7^8-
    21*z2^2*z3*z4*z5*z7^8- 3*z2^4*z6*z7^8+ 11*z2^3*z3*z6*z7^8+
    11*z2^3*z4*z6*z7^8- 21*z2^2*z3*z4*z6*z7^8+ 11*z2^3*z5*z6*z7^8-
    21*z2^2*z3*z5*z6*z7^8- 21*z2^2*z4*z5*z6*z7^8+ 33*z2*z3*z4*z5*z6*z7^8-
    3*z2^4*z7^9- 3*z2^3*z3*z7^9- 3*z2^3*z4*z7^9+ 11*z2^2*z3*z4*z7^9-
    3*z2^3*z5*z7^9+ 11*z2^2*z3*z5*z7^9+ 11*z2^2*z4*z5*z7^9- 21*z2*z3*z4*z5*z7^9-
    3*z2^3*z6*z7^9+ 11*z2^2*z3*z6*z7^9+ 11*z2^2*z4*z6*z7^9- 21*z2*z3*z4*z6*z7^9+
    11*z2^2*z5*z6*z7^9- 21*z2*z3*z5*z6*z7^9- 21*z2*z4*z5*z6*z7^9-
    22*z3*z4*z5*z6*z7^9- 3*z2^3*z7^10- 3*z2^2*z3*z7^10- 3*z2^2*z4*z7^10+
    11*z2*z3*z4*z7^10- 3*z2^2*z5*z7^10+ 11*z2*z3*z5*z7^10+ 11*z2*z4*z5*z7^10+
    z3*z4*z5*z7^10- 3*z2^2*z6*z7^10+ 11*z2*z3*z6*z7^10+ 11*z2*z4*z6*z7^10+
    z3*z4*z6*z7^10+ 11*z2*z5*z6*z7^10+ z3*z5*z6*z7^10+ z4*z5*z6*z7^10-
    3*z2^2*z7^11- 3*z2*z3*z7^11- 3*z2*z4*z7^11+ 10*z3*z4*z7^11- 3*z2*z5*z7^11+
    10*z3*z5*z7^11+ 10*z4*z5*z7^11- 3*z2*z6*z7^11+ 10*z3*z6*z7^11+
    10*z4*z6*z7^11+ 10*z5*z6*z7^11- 3*z2*z7^12- 13*z3*z7^12- 13*z4*z7^12-
    13*z5*z7^12- 13*z6*z7^12+ 10*z7^13- 1107*z2^11- 12*z2^10*z3- 12*z2^10*z4+
    1121*z2^9*z3*z4- 12*z2^10*z5+ 1121*z2^9*z3*z5+ 1121*z2^9*z4*z5-
    2231*z2^8*z3*z4*z5- 12*z2^10*z6+ 1121*z2^9*z3*z6+ 1121*z2^9*z4*z6-
    2231*z2^8*z3*z4*z6+ 1121*z2^9*z5*z6- 2231*z2^8*z3*z5*z6- 2231*z2^8*z4*z5*z6+
    3363*z2^7*z3*z4*z5*z6- 1119*z2^10*z7+ 1109*z2^9*z3*z7+ 1109*z2^9*z4*z7-
    1110*z2^8*z3*z4*z7+ 1109*z2^9*z5*z7- 1110*z2^8*z3*z5*z7- 1110*z2^8*z4*z5*z7+
    1132*z2^7*z3*z4*z5*z7+ 1109*z2^9*z6*z7- 1110*z2^8*z3*z6*z7-
    1110*z2^8*z4*z6*z7+ 1132*z2^7*z3*z4*z6*z7- 1110*z2^8*z5*z6*z7+
    1132*z2^7*z3*z5*z6*z7+ 1132*z2^7*z4*z5*z6*z7- 1187*z2^6*z3*z4*z5*z6*z7-
    1119*z2^9*z7^2+ 1109*z2^8*z3*z7^2+ 1109*z2^8*z4*z7^2- 1110*z2^7*z3*z4*z7^2+
    1109*z2^8*z5*z7^2- 1110*z2^7*z3*z5*z7^2- 1110*z2^7*z4*z5*z7^2+
    1132*z2^6*z3*z4*z5*z7^2+ 1109*z2^8*z6*z7^2- 1110*z2^7*z3*z6*z7^2-
    1110*z2^7*z4*z6*z7^2+ 1132*z2^6*z3*z4*z6*z7^2- 1110*z2^7*z5*z6*z7^2+
    1132*z2^6*z3*z5*z6*z7^2+ 1132*z2^6*z4*z5*z6*z7^2-
    1187*z2^5*z3*z4*z5*z6*z7^2- 1119*z2^8*z7^3+ 1109*z2^7*z3*z7^3+
    1109*z2^7*z4*z7^3- 1110*z2^6*z3*z4*z7^3+ 1109*z2^7*z5*z7^3-
    1110*z2^6*z3*z5*z7^3- 1110*z2^6*z4*z5*z7^3+ 1132*z2^5*z3*z4*z5*z7^3+
    1109*z2^7*z6*z7^3- 1110*z2^6*z3*z6*z7^3- 1110*z2^6*z4*z6*z7^3+
    1132*z2^5*z3*z4*z6*z7^3- 1110*z2^6*z5*z6*z7^3+ 1132*z2^5*z3*z5*z6*z7^3+
    1132*z2^5*z4*z5*z6*z7^3- 1187*z2^4*z3*z4*z5*z6*z7^3- 1119*z2^7*z7^4+
    1109*z2^6*z3*z7^4+ 1109*z2^6*z4*z7^4- 1110*z2^5*z3*z4*z7^4+
    1109*z2^6*z5*z7^4- 1110*z2^5*z3*z5*z7^4- 1110*z2^5*z4*z5*z7^4+
    1132*z2^4*z3*z4*z5*z7^4+ 1109*z2^6*z6*z7^4- 1110*z2^5*z3*z6*z7^4-
    1110*z2^5*z4*z6*z7^4+ 1132*z2^4*z3*z4*z6*z7^4- 1110*z2^5*z5*z6*z7^4+
    1132*z2^4*z3*z5*z6*z7^4+ 1132*z2^4*z4*z5*z6*z7^4-
    1187*z2^3*z3*z4*z5*z6*z7^4- 1119*z2^6*z7^5+ 1109*z2^5*z3*z7^5+
    1109*z2^5*z4*z7^5- 1110*z2^4*z3*z4*z7^5+ 1109*z2^5*z5*z7^5-
    1110*z2^4*z3*z5*z7^5- 1110*z2^4*z4*z5*z7^5+ 1132*z2^3*z3*z4*z5*z7^5+
    1109*z2^5*z6*z7^5- 1110*z2^4*z3*z6*z7^5- 1110*z2^4*z4*z6*z7^5+
    1132*z2^3*z3*z4*z6*z7^5- 1110*z2^4*z5*z6*z7^5+ 1132*z2^3*z3*z5*z6*z7^5+
    1132*z2^3*z4*z5*z6*z7^5- 1187*z2^2*z3*z4*z5*z6*z7^5- 1119*z2^5*z7^6+
    1109*z2^4*z3*z7^6+ 1109*z2^4*z4*z7^6- 1110*z2^3*z3*z4*z7^6+
    1109*z2^4*z5*z7^6- 1110*z2^3*z3*z5*z7^6- 1110*z2^3*z4*z5*z7^6+
    1132*z2^2*z3*z4*z5*z7^6+ 1109*z2^4*z6*z7^6- 1110*z2^3*z3*z6*z7^6-
    1110*z2^3*z4*z6*z7^6+ 1132*z2^2*z3*z4*z6*z7^6- 1110*z2^3*z5*z6*z7^6+
    1132*z2^2*z3*z5*z6*z7^6+ 1132*z2^2*z4*z5*z6*z7^6- 1187*z2*z3*z4*z5*z6*z7^6-
    1119*z2^4*z7^7+ 1109*z2^3*z3*z7^7+ 1109*z2^3*z4*z7^7- 1110*z2^2*z3*z4*z7^7+
    1109*z2^3*z5*z7^7- 1110*z2^2*z3*z5*z7^7- 1110*z2^2*z4*z5*z7^7+
    1132*z2*z3*z4*z5*z7^7+ 1109*z2^3*z6*z7^7- 1110*z2^2*z3*z6*z7^7-
    1110*z2^2*z4*z6*z7^7+ 1132*z2*z3*z4*z6*z7^7- 1110*z2^2*z5*z6*z7^7+
    1132*z2*z3*z5*z6*z7^7+ 1132*z2*z4*z5*z6*z7^7+ 3363*z3*z4*z5*z6*z7^7-
    1119*z2^3*z7^8+ 1109*z2^2*z3*z7^8+ 1109*z2^2*z4*z7^8- 1110*z2*z3*z4*z7^8+
    1109*z2^2*z5*z7^8- 1110*z2*z3*z5*z7^8- 1110*z2*z4*z5*z7^8-
    2231*z3*z4*z5*z7^8+ 1109*z2^2*z6*z7^8- 1110*z2*z3*z6*z7^8-
    1110*z2*z4*z6*z7^8- 2231*z3*z4*z6*z7^8- 1110*z2*z5*z6*z7^8-
    2231*z3*z5*z6*z7^8- 2231*z4*z5*z6*z7^8- 1119*z2^2*z7^9+ 1109*z2*z3*z7^9+
    1109*z2*z4*z7^9+ 1121*z3*z4*z7^9+ 1109*z2*z5*z7^9+ 1121*z3*z5*z7^9+
    1121*z4*z5*z7^9+ 1109*z2*z6*z7^9+ 1121*z3*z6*z7^9+ 1121*z4*z6*z7^9+
    1121*z5*z6*z7^9- 1119*z2*z7^10- 12*z3*z7^10- 12*z4*z7^10- 12*z5*z7^10-
    12*z6*z7^10- 1107*z7^11+ 2264*z2^9- 3374*z2^8*z3- 3374*z2^8*z4+
    3363*z2^7*z3*z4- 3374*z2^8*z5+ 3363*z2^7*z3*z5+ 3363*z2^7*z4*z5-
    1121*z2^6*z3*z4*z5- 3374*z2^8*z6+ 3363*z2^7*z3*z6+ 3363*z2^7*z4*z6-
    1121*z2^6*z3*z4*z6+ 3363*z2^7*z5*z6- 1121*z2^6*z3*z5*z6- 1121*z2^6*z4*z5*z6-
    4484*z2^5*z3*z4*z5*z6- 1110*z2^8*z7- 11*z2^7*z3*z7- 11*z2^7*z4*z7+
    2242*z2^6*z3*z4*z7- 11*z2^7*z5*z7+ 2242*z2^6*z3*z5*z7+ 2242*z2^6*z4*z5*z7+
    3396*z2^5*z3*z4*z5*z7- 11*z2^7*z6*z7+ 2242*z2^6*z3*z6*z7+
    2242*z2^6*z4*z6*z7+ 3396*z2^5*z3*z4*z6*z7+ 2242*z2^6*z5*z6*z7+
    3396*z2^5*z3*z5*z6*z7+ 3396*z2^5*z4*z5*z6*z7+ 1154*z2^4*z3*z4*z5*z6*z7-
    1110*z2^7*z7^2- 11*z2^6*z3*z7^2- 11*z2^6*z4*z7^2+ 2242*z2^5*z3*z4*z7^2-
    11*z2^6*z5*z7^2+ 2242*z2^5*z3*z5*z7^2+ 2242*z2^5*z4*z5*z7^2+
    3396*z2^4*z3*z4*z5*z7^2- 11*z2^6*z6*z7^2+ 2242*z2^5*z3*z6*z7^2+
    2242*z2^5*z4*z6*z7^2+ 3396*z2^4*z3*z4*z6*z7^2+ 2242*z2^5*z5*z6*z7^2+
    3396*z2^4*z3*z5*z6*z7^2+ 3396*z2^4*z4*z5*z6*z7^2+
    1154*z2^3*z3*z4*z5*z6*z7^2- 1110*z2^6*z7^3- 11*z2^5*z3*z7^3-
    11*z2^5*z4*z7^3+ 2242*z2^4*z3*z4*z7^3- 11*z2^5*z5*z7^3+
    2242*z2^4*z3*z5*z7^3+ 2242*z2^4*z4*z5*z7^3+ 3396*z2^3*z3*z4*z5*z7^3-
    11*z2^5*z6*z7^3+ 2242*z2^4*z3*z6*z7^3+ 2242*z2^4*z4*z6*z7^3+
    3396*z2^3*z3*z4*z6*z7^3+ 2242*z2^4*z5*z6*z7^3+ 3396*z2^3*z3*z5*z6*z7^3+
    3396*z2^3*z4*z5*z6*z7^3+ 1154*z2^2*z3*z4*z5*z6*z7^3- 1110*z2^5*z7^4-
    11*z2^4*z3*z7^4- 11*z2^4*z4*z7^4+ 2242*z2^3*z3*z4*z7^4- 11*z2^4*z5*z7^4+
    2242*z2^3*z3*z5*z7^4+ 2242*z2^3*z4*z5*z7^4+ 3396*z2^2*z3*z4*z5*z7^4-
    11*z2^4*z6*z7^4+ 2242*z2^3*z3*z6*z7^4+ 2242*z2^3*z4*z6*z7^4+
    3396*z2^2*z3*z4*z6*z7^4+ 2242*z2^3*z5*z6*z7^4+ 3396*z2^2*z3*z5*z6*z7^4+
    3396*z2^2*z4*z5*z6*z7^4+ 1154*z2*z3*z4*z5*z6*z7^4- 1110*z2^4*z7^5-
    11*z2^3*z3*z7^5- 11*z2^3*z4*z7^5+ 2242*z2^2*z3*z4*z7^5- 11*z2^3*z5*z7^5+
    2242*z2^2*z3*z5*z7^5+ 2242*z2^2*z4*z5*z7^5+ 3396*z2*z3*z4*z5*z7^5-
    11*z2^3*z6*z7^5+ 2242*z2^2*z3*z6*z7^5+ 2242*z2^2*z4*z6*z7^5+
    3396*z2*z3*z4*z6*z7^5+ 2242*z2^2*z5*z6*z7^5+ 3396*z2*z3*z5*z6*z7^5+
    3396*z2*z4*z5*z6*z7^5- 4484*z3*z4*z5*z6*z7^5- 1110*z2^3*z7^6-
    11*z2^2*z3*z7^6- 11*z2^2*z4*z7^6+ 2242*z2*z3*z4*z7^6- 11*z2^2*z5*z7^6+
    2242*z2*z3*z5*z7^6+ 2242*z2*z4*z5*z7^6- 1121*z3*z4*z5*z7^6- 11*z2^2*z6*z7^6+
    2242*z2*z3*z6*z7^6+ 2242*z2*z4*z6*z7^6- 1121*z3*z4*z6*z7^6+
    2242*z2*z5*z6*z7^6- 1121*z3*z5*z6*z7^6- 1121*z4*z5*z6*z7^6- 1110*z2^2*z7^7-
    11*z2*z3*z7^7- 11*z2*z4*z7^7+ 3363*z3*z4*z7^7- 11*z2*z5*z7^7+
    3363*z3*z5*z7^7+ 3363*z4*z5*z7^7- 11*z2*z6*z7^7+ 3363*z3*z6*z7^7+
    3363*z4*z6*z7^7+ 3363*z5*z6*z7^7- 1110*z2*z7^8- 3374*z3*z7^8- 3374*z4*z7^8-
    3374*z5*z7^8- 3374*z6*z7^8+ 2264*z7^9+ 2604*z2^7+ 147*z2^6*z3+ 147*z2^6*z4+
    2740*z2^5*z3*z4+ 147*z2^6*z5+ 2740*z2^5*z3*z5+ 2740*z2^5*z4*z5+
    4495*z2^4*z3*z4*z5+ 147*z2^6*z6+ 2740*z2^5*z3*z6+ 2740*z2^5*z4*z6+
    4495*z2^4*z3*z4*z6+ 2740*z2^5*z5*z6+ 4495*z2^4*z3*z5*z6+ 4495*z2^4*z4*z5*z6+
    1755*z2^3*z3*z4*z5*z6+ 2751*z2^6*z7+ 2887*z2^5*z3*z7+ 2887*z2^5*z4*z7-
    1766*z2^4*z3*z4*z7+ 2887*z2^5*z5*z7- 1766*z2^4*z3*z5*z7- 1766*z2^4*z4*z5*z7-
    2751*z2^3*z3*z4*z5*z7+ 2887*z2^5*z6*z7- 1766*z2^4*z3*z6*z7-
    1766*z2^4*z4*z6*z7- 2751*z2^3*z3*z4*z6*z7- 1766*z2^4*z5*z6*z7-
    2751*z2^3*z3*z5*z6*z7- 2751*z2^3*z4*z5*z6*z7- 2887*z2^2*z3*z4*z5*z6*z7+
    2751*z2^5*z7^2+ 2887*z2^4*z3*z7^2+ 2887*z2^4*z4*z7^2- 1766*z2^3*z3*z4*z7^2+
    2887*z2^4*z5*z7^2- 1766*z2^3*z3*z5*z7^2- 1766*z2^3*z4*z5*z7^2-
    2751*z2^2*z3*z4*z5*z7^2+ 2887*z2^4*z6*z7^2- 1766*z2^3*z3*z6*z7^2-
    1766*z2^3*z4*z6*z7^2- 2751*z2^2*z3*z4*z6*z7^2- 1766*z2^3*z5*z6*z7^2-
    2751*z2^2*z3*z5*z6*z7^2- 2751*z2^2*z4*z5*z6*z7^2- 2887*z2*z3*z4*z5*z6*z7^2+
    2751*z2^4*z7^3+ 2887*z2^3*z3*z7^3+ 2887*z2^3*z4*z7^3- 1766*z2^2*z3*z4*z7^3+
    2887*z2^3*z5*z7^3- 1766*z2^2*z3*z5*z7^3- 1766*z2^2*z4*z5*z7^3-
    2751*z2*z3*z4*z5*z7^3+ 2887*z2^3*z6*z7^3- 1766*z2^2*z3*z6*z7^3-
    1766*z2^2*z4*z6*z7^3- 2751*z2*z3*z4*z6*z7^3- 1766*z2^2*z5*z6*z7^3-
    2751*z2*z3*z5*z6*z7^3- 2751*z2*z4*z5*z6*z7^3+ 1755*z3*z4*z5*z6*z7^3+
    2751*z2^3*z7^4+ 2887*z2^2*z3*z7^4+ 2887*z2^2*z4*z7^4- 1766*z2*z3*z4*z7^4+
    2887*z2^2*z5*z7^4- 1766*z2*z3*z5*z7^4- 1766*z2*z4*z5*z7^4+
    4495*z3*z4*z5*z7^4+ 2887*z2^2*z6*z7^4- 1766*z2*z3*z6*z7^4-
    1766*z2*z4*z6*z7^4+ 4495*z3*z4*z6*z7^4- 1766*z2*z5*z6*z7^4+
    4495*z3*z5*z6*z7^4+ 4495*z4*z5*z6*z7^4+ 2751*z2^2*z7^5+ 2887*z2*z3*z7^5+
    2887*z2*z4*z7^5+ 2740*z3*z4*z7^5+ 2887*z2*z5*z7^5+ 2740*z3*z5*z7^5+
    2740*z4*z5*z7^5+ 2887*z2*z6*z7^5+ 2740*z3*z6*z7^5+ 2740*z4*z6*z7^5+
    2740*z5*z6*z7^5+ 2751*z2*z7^6+ 147*z3*z7^6+ 147*z4*z7^6+ 147*z5*z7^6+
    147*z6*z7^6+ 2604*z7^7+ 2037*z2^5+ 318*z2^4*z3+ 318*z2^4*z4+
    3588*z2^3*z3*z4+ 318*z2^4*z5+ 3588*z2^3*z3*z5+ 3588*z2^3*z4*z5-
    2988*z2^2*z3*z4*z5+ 318*z2^4*z6+ 3588*z2^3*z3*z6+ 3588*z2^3*z4*z6-
    2988*z2^2*z3*z4*z6+ 3588*z2^3*z5*z6- 2988*z2^2*z3*z5*z6- 2988*z2^2*z4*z5*z6+
    633*z2*z3*z4*z5*z6+ 2355*z2^4*z7+ 3906*z2^3*z3*z7+ 3906*z2^3*z4*z7+
    600*z2^2*z3*z4*z7+ 3906*z2^3*z5*z7+ 600*z2^2*z3*z5*z7+ 600*z2^2*z4*z5*z7-
    2355*z2*z3*z4*z5*z7+ 3906*z2^3*z6*z7+ 600*z2^2*z3*z6*z7+ 600*z2^2*z4*z6*z7-
    2355*z2*z3*z4*z6*z7+ 600*z2^2*z5*z6*z7- 2355*z2*z3*z5*z6*z7-
    2355*z2*z4*z5*z6*z7+ 633*z3*z4*z5*z6*z7+ 2355*z2^3*z7^2+ 3906*z2^2*z3*z7^2+
    3906*z2^2*z4*z7^2+ 600*z2*z3*z4*z7^2+ 3906*z2^2*z5*z7^2+ 600*z2*z3*z5*z7^2+
    600*z2*z4*z5*z7^2- 2988*z3*z4*z5*z7^2+ 3906*z2^2*z6*z7^2+ 600*z2*z3*z6*z7^2+
    600*z2*z4*z6*z7^2- 2988*z3*z4*z6*z7^2+ 600*z2*z5*z6*z7^2-
    2988*z3*z5*z6*z7^2- 2988*z4*z5*z6*z7^2+ 2355*z2^2*z7^3+ 3906*z2*z3*z7^3+
    3906*z2*z4*z7^3+ 3588*z3*z4*z7^3+ 3906*z2*z5*z7^3+ 3588*z3*z5*z7^3+
    3588*z4*z5*z7^3+ 3906*z2*z6*z7^3+ 3588*z3*z6*z7^3+ 3588*z4*z6*z7^3+
    3588*z5*z6*z7^3+ 2355*z2*z7^4+ 318*z3*z7^4+ 318*z4*z7^4+ 318*z5*z7^4+
    318*z6*z7^4+ 2037*z7^5+ 2166*z2^3- 1776*z2^2*z3- 1776*z2^2*z4-
    2202*z2*z3*z4- 1776*z2^2*z5- 2202*z2*z3*z5- 2202*z2*z4*z5- 1068*z3*z4*z5-
    1776*z2^2*z6- 2202*z2*z3*z6- 2202*z2*z4*z6- 1068*z3*z4*z6- 2202*z2*z5*z6-
    1068*z3*z5*z6- 1068*z4*z5*z6+ 390*z2^2*z7- 3978*z2*z3*z7- 3978*z2*z4*z7-
    2202*z3*z4*z7- 3978*z2*z5*z7- 2202*z3*z5*z7- 2202*z4*z5*z7- 3978*z2*z6*z7-
    2202*z3*z6*z7- 2202*z4*z6*z7- 2202*z5*z6*z7+ 390*z2*z7^2- 1776*z3*z7^2-
    1776*z4*z7^2- 1776*z5*z7^2- 1776*z6*z7^2+ 2166*z7^3- 1169*z2+ 3538*z3+
    3538*z4+ 3538*z5+ 3538*z6- 1169*z7",
    "- 4*z2*z3^14+ 2*z3^15+ 2*z2*z3^13*z4- 2*z3^14*z4+ 2*z2*z3^12*z4^2-
    2*z3^13*z4^2+ 2*z2*z3^11*z4^3- 2*z3^12*z4^3+ 2*z2*z3^10*z4^4- 2*z3^11*z4^4+
    2*z2*z3^9*z4^5- 2*z3^10*z4^5+ 2*z2*z3^8*z4^6- 2*z3^9*z4^6+ 2*z2*z3^7*z4^7-
    2*z3^8*z4^7+ 2*z2*z3^6*z4^8- 2*z3^7*z4^8+ 2*z2*z3^5*z4^9- 2*z3^6*z4^9+
    2*z2*z3^4*z4^10- 2*z3^5*z4^10+ 2*z2*z3^3*z4^11- 2*z3^4*z4^11+
    2*z2*z3^2*z4^12- 2*z3^3*z4^12+ 2*z2*z3*z4^13- 2*z3^2*z4^13- 4*z2*z4^14-
    2*z3*z4^14+ 2*z4^15+ 6*z2*z3^13*z5- 4*z3^14*z5- 2*z2*z3^12*z4*z5+
    2*z3^13*z4*z5- 2*z2*z3^11*z4^2*z5+ 2*z3^12*z4^2*z5- 2*z2*z3^10*z4^3*z5+
    2*z3^11*z4^3*z5- 2*z2*z3^9*z4^4*z5+ 2*z3^10*z4^4*z5- 2*z2*z3^8*z4^5*z5+
    2*z3^9*z4^5*z5- 2*z2*z3^7*z4^6*z5+ 2*z3^8*z4^6*z5- 2*z2*z3^6*z4^7*z5+
    2*z3^7*z4^7*z5- 2*z2*z3^5*z4^8*z5+ 2*z3^6*z4^8*z5- 2*z2*z3^4*z4^9*z5+
    2*z3^5*z4^9*z5- 2*z2*z3^3*z4^10*z5+ 2*z3^4*z4^10*z5- 2*z2*z3^2*z4^11*z5+
    2*z3^3*z4^11*z5- 2*z2*z3*z4^12*z5+ 2*z3^2*z4^12*z5+ 6*z2*z4^13*z5+
    2*z3*z4^13*z5- 4*z4^14*z5+ 6*z2*z3^13*z6- 4*z3^14*z6- 2*z2*z3^12*z4*z6+
    2*z3^13*z4*z6- 2*z2*z3^11*z4^2*z6+ 2*z3^12*z4^2*z6- 2*z2*z3^10*z4^3*z6+
    2*z3^11*z4^3*z6- 2*z2*z3^9*z4^4*z6+ 2*z3^10*z4^4*z6- 2*z2*z3^8*z4^5*z6+
    2*z3^9*z4^5*z6- 2*z2*z3^7*z4^6*z6+ 2*z3^8*z4^6*z6- 2*z2*z3^6*z4^7*z6+
    2*z3^7*z4^7*z6- 2*z2*z3^5*z4^8*z6+ 2*z3^6*z4^8*z6- 2*z2*z3^4*z4^9*z6+
    2*z3^5*z4^9*z6- 2*z2*z3^3*z4^10*z6+ 2*z3^4*z4^10*z6- 2*z2*z3^2*z4^11*z6+
    2*z3^3*z4^11*z6- 2*z2*z3*z4^12*z6+ 2*z3^2*z4^12*z6+ 6*z2*z4^13*z6+
    2*z3*z4^13*z6- 4*z4^14*z6- 8*z2*z3^12*z5*z6+ 6*z3^13*z5*z6+
    2*z2*z3^11*z4*z5*z6- 2*z3^12*z4*z5*z6+ 2*z2*z3^10*z4^2*z5*z6-
    2*z3^11*z4^2*z5*z6+ 2*z2*z3^9*z4^3*z5*z6- 2*z3^10*z4^3*z5*z6+
    2*z2*z3^8*z4^4*z5*z6- 2*z3^9*z4^4*z5*z6+ 2*z2*z3^7*z4^5*z5*z6-
    2*z3^8*z4^5*z5*z6+ 2*z2*z3^6*z4^6*z5*z6- 2*z3^7*z4^6*z5*z6+
    2*z2*z3^5*z4^7*z5*z6- 2*z3^6*z4^7*z5*z6+ 2*z2*z3^4*z4^8*z5*z6-
    2*z3^5*z4^8*z5*z6+ 2*z2*z3^3*z4^9*z5*z6- 2*z3^4*z4^9*z5*z6+
    2*z2*z3^2*z4^10*z5*z6- 2*z3^3*z4^10*z5*z6+ 2*z2*z3*z4^11*z5*z6-
    2*z3^2*z4^11*z5*z6- 8*z2*z4^12*z5*z6- 2*z3*z4^12*z5*z6+ 6*z4^13*z5*z6+
    6*z2*z3^13*z7- 4*z3^14*z7- 2*z2*z3^12*z4*z7+ 2*z3^13*z4*z7-
    2*z2*z3^11*z4^2*z7+ 2*z3^12*z4^2*z7- 2*z2*z3^10*z4^3*z7+ 2*z3^11*z4^3*z7-
    2*z2*z3^9*z4^4*z7+ 2*z3^10*z4^4*z7- 2*z2*z3^8*z4^5*z7+ 2*z3^9*z4^5*z7-
    2*z2*z3^7*z4^6*z7+ 2*z3^8*z4^6*z7- 2*z2*z3^6*z4^7*z7+ 2*z3^7*z4^7*z7-
    2*z2*z3^5*z4^8*z7+ 2*z3^6*z4^8*z7- 2*z2*z3^4*z4^9*z7+ 2*z3^5*z4^9*z7-
    2*z2*z3^3*z4^10*z7+ 2*z3^4*z4^10*z7- 2*z2*z3^2*z4^11*z7+ 2*z3^3*z4^11*z7-
    2*z2*z3*z4^12*z7+ 2*z3^2*z4^12*z7+ 6*z2*z4^13*z7+ 2*z3*z4^13*z7- 4*z4^14*z7-
    8*z2*z3^12*z5*z7+ 6*z3^13*z5*z7+ 2*z2*z3^11*z4*z5*z7- 2*z3^12*z4*z5*z7+
    2*z2*z3^10*z4^2*z5*z7- 2*z3^11*z4^2*z5*z7+ 2*z2*z3^9*z4^3*z5*z7-
    2*z3^10*z4^3*z5*z7+ 2*z2*z3^8*z4^4*z5*z7- 2*z3^9*z4^4*z5*z7+
    2*z2*z3^7*z4^5*z5*z7- 2*z3^8*z4^5*z5*z7+ 2*z2*z3^6*z4^6*z5*z7-
    2*z3^7*z4^6*z5*z7+ 2*z2*z3^5*z4^7*z5*z7- 2*z3^6*z4^7*z5*z7+
    2*z2*z3^4*z4^8*z5*z7- 2*z3^5*z4^8*z5*z7+ 2*z2*z3^3*z4^9*z5*z7-
    2*z3^4*z4^9*z5*z7+ 2*z2*z3^2*z4^10*z5*z7- 2*z3^3*z4^10*z5*z7+
    2*z2*z3*z4^11*z5*z7- 2*z3^2*z4^11*z5*z7- 8*z2*z4^12*z5*z7- 2*z3*z4^12*z5*z7+
    6*z4^13*z5*z7- 8*z2*z3^12*z6*z7+ 6*z3^13*z6*z7+ 2*z2*z3^11*z4*z6*z7-
    2*z3^12*z4*z6*z7+ 2*z2*z3^10*z4^2*z6*z7- 2*z3^11*z4^2*z6*z7+
    2*z2*z3^9*z4^3*z6*z7- 2*z3^10*z4^3*z6*z7+ 2*z2*z3^8*z4^4*z6*z7-
    2*z3^9*z4^4*z6*z7+ 2*z2*z3^7*z4^5*z6*z7- 2*z3^8*z4^5*z6*z7+
    2*z2*z3^6*z4^6*z6*z7- 2*z3^7*z4^6*z6*z7+ 2*z2*z3^5*z4^7*z6*z7-
    2*z3^6*z4^7*z6*z7+ 2*z2*z3^4*z4^8*z6*z7- 2*z3^5*z4^8*z6*z7+
    2*z2*z3^3*z4^9*z6*z7- 2*z3^4*z4^9*z6*z7+ 2*z2*z3^2*z4^10*z6*z7-
    2*z3^3*z4^10*z6*z7+ 2*z2*z3*z4^11*z6*z7- 2*z3^2*z4^11*z6*z7-
    8*z2*z4^12*z6*z7- 2*z3*z4^12*z6*z7+ 6*z4^13*z6*z7+ 10*z2*z3^11*z5*z6*z7-
    8*z3^12*z5*z6*z7- 2*z2*z3^10*z4*z5*z6*z7+ 2*z3^11*z4*z5*z6*z7-
    2*z2*z3^9*z4^2*z5*z6*z7+ 2*z3^10*z4^2*z5*z6*z7- 2*z2*z3^8*z4^3*z5*z6*z7+
    2*z3^9*z4^3*z5*z6*z7- 2*z2*z3^7*z4^4*z5*z6*z7+ 2*z3^8*z4^4*z5*z6*z7-
    2*z2*z3^6*z4^5*z5*z6*z7+ 2*z3^7*z4^5*z5*z6*z7- 2*z2*z3^5*z4^6*z5*z6*z7+
    2*z3^6*z4^6*z5*z6*z7- 2*z2*z3^4*z4^7*z5*z6*z7+ 2*z3^5*z4^7*z5*z6*z7-
    2*z2*z3^3*z4^8*z5*z6*z7+ 2*z3^4*z4^8*z5*z6*z7- 2*z2*z3^2*z4^9*z5*z6*z7+
    2*z3^3*z4^9*z5*z6*z7- 2*z2*z3*z4^10*z5*z6*z7+ 2*z3^2*z4^10*z5*z6*z7+
    10*z2*z4^11*z5*z6*z7+ 2*z3*z4^11*z5*z6*z7- 8*z4^12*z5*z6*z7- 13*z2*z3^12+
    10*z3^13- 3*z2*z3^11*z4- 3*z3^12*z4- 3*z2*z3^10*z4^2- 3*z3^11*z4^2-
    3*z2*z3^9*z4^3- 3*z3^10*z4^3- 3*z2*z3^8*z4^4- 3*z3^9*z4^4- 3*z2*z3^7*z4^5-
    3*z3^8*z4^5- 3*z2*z3^6*z4^6- 3*z3^7*z4^6- 3*z2*z3^5*z4^7- 3*z3^6*z4^7-
    3*z2*z3^4*z4^8- 3*z3^5*z4^8- 3*z2*z3^3*z4^9- 3*z3^4*z4^9- 3*z2*z3^2*z4^10-
    3*z3^3*z4^10- 3*z2*z3*z4^11- 3*z3^2*z4^11- 13*z2*z4^12- 3*z3*z4^12+
    10*z4^13+ 10*z2*z3^11*z5- 13*z3^12*z5+ 11*z2*z3^10*z4*z5- 3*z3^11*z4*z5+
    11*z2*z3^9*z4^2*z5- 3*z3^10*z4^2*z5+ 11*z2*z3^8*z4^3*z5- 3*z3^9*z4^3*z5+
    11*z2*z3^7*z4^4*z5- 3*z3^8*z4^4*z5+ 11*z2*z3^6*z4^5*z5- 3*z3^7*z4^5*z5+
    11*z2*z3^5*z4^6*z5- 3*z3^6*z4^6*z5+ 11*z2*z3^4*z4^7*z5- 3*z3^5*z4^7*z5+
    11*z2*z3^3*z4^8*z5- 3*z3^4*z4^8*z5+ 11*z2*z3^2*z4^9*z5- 3*z3^3*z4^9*z5+
    11*z2*z3*z4^10*z5- 3*z3^2*z4^10*z5+ 10*z2*z4^11*z5- 3*z3*z4^11*z5-
    13*z4^12*z5+ 10*z2*z3^11*z6- 13*z3^12*z6+ 11*z2*z3^10*z4*z6- 3*z3^11*z4*z6+
    11*z2*z3^9*z4^2*z6- 3*z3^10*z4^2*z6+ 11*z2*z3^8*z4^3*z6- 3*z3^9*z4^3*z6+
    11*z2*z3^7*z4^4*z6- 3*z3^8*z4^4*z6+ 11*z2*z3^6*z4^5*z6- 3*z3^7*z4^5*z6+
    11*z2*z3^5*z4^6*z6- 3*z3^6*z4^6*z6+ 11*z2*z3^4*z4^7*z6- 3*z3^5*z4^7*z6+
    11*z2*z3^3*z4^8*z6- 3*z3^4*z4^8*z6+ 11*z2*z3^2*z4^9*z6- 3*z3^3*z4^9*z6+
    11*z2*z3*z4^10*z6- 3*z3^2*z4^10*z6+ 10*z2*z4^11*z6- 3*z3*z4^11*z6-
    13*z4^12*z6+ z2*z3^10*z5*z6+ 10*z3^11*z5*z6- 21*z2*z3^9*z4*z5*z6+
    11*z3^10*z4*z5*z6- 21*z2*z3^8*z4^2*z5*z6+ 11*z3^9*z4^2*z5*z6-
    21*z2*z3^7*z4^3*z5*z6+ 11*z3^8*z4^3*z5*z6- 21*z2*z3^6*z4^4*z5*z6+
    11*z3^7*z4^4*z5*z6- 21*z2*z3^5*z4^5*z5*z6+ 11*z3^6*z4^5*z5*z6-
    21*z2*z3^4*z4^6*z5*z6+ 11*z3^5*z4^6*z5*z6- 21*z2*z3^3*z4^7*z5*z6+
    11*z3^4*z4^7*z5*z6- 21*z2*z3^2*z4^8*z5*z6+ 11*z3^3*z4^8*z5*z6-
    21*z2*z3*z4^9*z5*z6+ 11*z3^2*z4^9*z5*z6+ z2*z4^10*z5*z6+ 11*z3*z4^10*z5*z6+
    10*z4^11*z5*z6+ 10*z2*z3^11*z7- 13*z3^12*z7+ 11*z2*z3^10*z4*z7-
    3*z3^11*z4*z7+ 11*z2*z3^9*z4^2*z7- 3*z3^10*z4^2*z7+ 11*z2*z3^8*z4^3*z7-
    3*z3^9*z4^3*z7+ 11*z2*z3^7*z4^4*z7- 3*z3^8*z4^4*z7+ 11*z2*z3^6*z4^5*z7-
    3*z3^7*z4^5*z7+ 11*z2*z3^5*z4^6*z7- 3*z3^6*z4^6*z7+ 11*z2*z3^4*z4^7*z7-
    3*z3^5*z4^7*z7+ 11*z2*z3^3*z4^8*z7- 3*z3^4*z4^8*z7+ 11*z2*z3^2*z4^9*z7-
    3*z3^3*z4^9*z7+ 11*z2*z3*z4^10*z7- 3*z3^2*z4^10*z7+ 10*z2*z4^11*z7-
    3*z3*z4^11*z7- 13*z4^12*z7+ z2*z3^10*z5*z7+ 10*z3^11*z5*z7-
    21*z2*z3^9*z4*z5*z7+ 11*z3^10*z4*z5*z7- 21*z2*z3^8*z4^2*z5*z7+
    11*z3^9*z4^2*z5*z7- 21*z2*z3^7*z4^3*z5*z7+ 11*z3^8*z4^3*z5*z7-
    21*z2*z3^6*z4^4*z5*z7+ 11*z3^7*z4^4*z5*z7- 21*z2*z3^5*z4^5*z5*z7+
    11*z3^6*z4^5*z5*z7- 21*z2*z3^4*z4^6*z5*z7+ 11*z3^5*z4^6*z5*z7-
    21*z2*z3^3*z4^7*z5*z7+ 11*z3^4*z4^7*z5*z7- 21*z2*z3^2*z4^8*z5*z7+
    11*z3^3*z4^8*z5*z7- 21*z2*z3*z4^9*z5*z7+ 11*z3^2*z4^9*z5*z7+ z2*z4^10*z5*z7+
    11*z3*z4^10*z5*z7+ 10*z4^11*z5*z7+ z2*z3^10*z6*z7+ 10*z3^11*z6*z7-
    21*z2*z3^9*z4*z6*z7+ 11*z3^10*z4*z6*z7- 21*z2*z3^8*z4^2*z6*z7+
    11*z3^9*z4^2*z6*z7- 21*z2*z3^7*z4^3*z6*z7+ 11*z3^8*z4^3*z6*z7-
    21*z2*z3^6*z4^4*z6*z7+ 11*z3^7*z4^4*z6*z7- 21*z2*z3^5*z4^5*z6*z7+
    11*z3^6*z4^5*z6*z7- 21*z2*z3^4*z4^6*z6*z7+ 11*z3^5*z4^6*z6*z7-
    21*z2*z3^3*z4^7*z6*z7+ 11*z3^4*z4^7*z6*z7- 21*z2*z3^2*z4^8*z6*z7+
    11*z3^3*z4^8*z6*z7- 21*z2*z3*z4^9*z6*z7+ 11*z3^2*z4^9*z6*z7+ z2*z4^10*z6*z7+
    11*z3*z4^10*z6*z7+ 10*z4^11*z6*z7- 22*z2*z3^9*z5*z6*z7+ z3^10*z5*z6*z7+
    33*z2*z3^8*z4*z5*z6*z7- 21*z3^9*z4*z5*z6*z7+ 33*z2*z3^7*z4^2*z5*z6*z7-
    21*z3^8*z4^2*z5*z6*z7+ 33*z2*z3^6*z4^3*z5*z6*z7- 21*z3^7*z4^3*z5*z6*z7+
    33*z2*z3^5*z4^4*z5*z6*z7- 21*z3^6*z4^4*z5*z6*z7+ 33*z2*z3^4*z4^5*z5*z6*z7-
    21*z3^5*z4^5*z5*z6*z7+ 33*z2*z3^3*z4^6*z5*z6*z7- 21*z3^4*z4^6*z5*z6*z7+
    33*z2*z3^2*z4^7*z5*z6*z7- 21*z3^3*z4^7*z5*z6*z7+ 33*z2*z3*z4^8*z5*z6*z7-
    21*z3^2*z4^8*z5*z6*z7- 22*z2*z4^9*z5*z6*z7- 21*z3*z4^9*z5*z6*z7+
    z4^10*z5*z6*z7- 12*z2*z3^10- 1107*z3^11+ 1109*z2*z3^9*z4- 1119*z3^10*z4+
    1109*z2*z3^8*z4^2- 1119*z3^9*z4^2+ 1109*z2*z3^7*z4^3- 1119*z3^8*z4^3+
    1109*z2*z3^6*z4^4- 1119*z3^7*z4^4+ 1109*z2*z3^5*z4^5- 1119*z3^6*z4^5+
    1109*z2*z3^4*z4^6- 1119*z3^5*z4^6+ 1109*z2*z3^3*z4^7- 1119*z3^4*z4^7+
    1109*z2*z3^2*z4^8- 1119*z3^3*z4^8+ 1109*z2*z3*z4^9- 1119*z3^2*z4^9-
    12*z2*z4^10- 1119*z3*z4^10- 1107*z4^11+ 1121*z2*z3^9*z5- 12*z3^10*z5-
    1110*z2*z3^8*z4*z5+ 1109*z3^9*z4*z5- 1110*z2*z3^7*z4^2*z5+
    1109*z3^8*z4^2*z5- 1110*z2*z3^6*z4^3*z5+ 1109*z3^7*z4^3*z5-
    1110*z2*z3^5*z4^4*z5+ 1109*z3^6*z4^4*z5- 1110*z2*z3^4*z4^5*z5+
    1109*z3^5*z4^5*z5- 1110*z2*z3^3*z4^6*z5+ 1109*z3^4*z4^6*z5-
    1110*z2*z3^2*z4^7*z5+ 1109*z3^3*z4^7*z5- 1110*z2*z3*z4^8*z5+
    1109*z3^2*z4^8*z5+ 1121*z2*z4^9*z5+ 1109*z3*z4^9*z5- 12*z4^10*z5+
    1121*z2*z3^9*z6- 12*z3^10*z6- 1110*z2*z3^8*z4*z6+ 1109*z3^9*z4*z6-
    1110*z2*z3^7*z4^2*z6+ 1109*z3^8*z4^2*z6- 1110*z2*z3^6*z4^3*z6+
    1109*z3^7*z4^3*z6- 1110*z2*z3^5*z4^4*z6+ 1109*z3^6*z4^4*z6-
    1110*z2*z3^4*z4^5*z6+ 1109*z3^5*z4^5*z6- 1110*z2*z3^3*z4^6*z6+
    1109*z3^4*z4^6*z6- 1110*z2*z3^2*z4^7*z6+ 1109*z3^3*z4^7*z6-
    1110*z2*z3*z4^8*z6+ 1109*z3^2*z4^8*z6+ 1121*z2*z4^9*z6+ 1109*z3*z4^9*z6-
    12*z4^10*z6- 2231*z2*z3^8*z5*z6+ 1121*z3^9*z5*z6+ 1132*z2*z3^7*z4*z5*z6-
    1110*z3^8*z4*z5*z6+ 1132*z2*z3^6*z4^2*z5*z6- 1110*z3^7*z4^2*z5*z6+
    1132*z2*z3^5*z4^3*z5*z6- 1110*z3^6*z4^3*z5*z6+ 1132*z2*z3^4*z4^4*z5*z6-
    1110*z3^5*z4^4*z5*z6+ 1132*z2*z3^3*z4^5*z5*z6- 1110*z3^4*z4^5*z5*z6+
    1132*z2*z3^2*z4^6*z5*z6- 1110*z3^3*z4^6*z5*z6+ 1132*z2*z3*z4^7*z5*z6-
    1110*z3^2*z4^7*z5*z6- 2231*z2*z4^8*z5*z6- 1110*z3*z4^8*z5*z6+
    1121*z4^9*z5*z6+ 1121*z2*z3^9*z7- 12*z3^10*z7- 1110*z2*z3^8*z4*z7+
    1109*z3^9*z4*z7- 1110*z2*z3^7*z4^2*z7+ 1109*z3^8*z4^2*z7-
    1110*z2*z3^6*z4^3*z7+ 1109*z3^7*z4^3*z7- 1110*z2*z3^5*z4^4*z7+
    1109*z3^6*z4^4*z7- 1110*z2*z3^4*z4^5*z7+ 1109*z3^5*z4^5*z7-
    1110*z2*z3^3*z4^6*z7+ 1109*z3^4*z4^6*z7- 1110*z2*z3^2*z4^7*z7+
    1109*z3^3*z4^7*z7- 1110*z2*z3*z4^8*z7+ 1109*z3^2*z4^8*z7+ 1121*z2*z4^9*z7+
    1109*z3*z4^9*z7- 12*z4^10*z7- 2231*z2*z3^8*z5*z7+ 1121*z3^9*z5*z7+
    1132*z2*z3^7*z4*z5*z7- 1110*z3^8*z4*z5*z7+ 1132*z2*z3^6*z4^2*z5*z7-
    1110*z3^7*z4^2*z5*z7+ 1132*z2*z3^5*z4^3*z5*z7- 1110*z3^6*z4^3*z5*z7+
    1132*z2*z3^4*z4^4*z5*z7- 1110*z3^5*z4^4*z5*z7+ 1132*z2*z3^3*z4^5*z5*z7-
    1110*z3^4*z4^5*z5*z7+ 1132*z2*z3^2*z4^6*z5*z7- 1110*z3^3*z4^6*z5*z7+
    1132*z2*z3*z4^7*z5*z7- 1110*z3^2*z4^7*z5*z7- 2231*z2*z4^8*z5*z7-
    1110*z3*z4^8*z5*z7+ 1121*z4^9*z5*z7- 2231*z2*z3^8*z6*z7+ 1121*z3^9*z6*z7+
    1132*z2*z3^7*z4*z6*z7- 1110*z3^8*z4*z6*z7+ 1132*z2*z3^6*z4^2*z6*z7-
    1110*z3^7*z4^2*z6*z7+ 1132*z2*z3^5*z4^3*z6*z7- 1110*z3^6*z4^3*z6*z7+
    1132*z2*z3^4*z4^4*z6*z7- 1110*z3^5*z4^4*z6*z7+ 1132*z2*z3^3*z4^5*z6*z7-
    1110*z3^4*z4^5*z6*z7+ 1132*z2*z3^2*z4^6*z6*z7- 1110*z3^3*z4^6*z6*z7+
    1132*z2*z3*z4^7*z6*z7- 1110*z3^2*z4^7*z6*z7- 2231*z2*z4^8*z6*z7-
    1110*z3*z4^8*z6*z7+ 1121*z4^9*z6*z7+ 3363*z2*z3^7*z5*z6*z7-
    2231*z3^8*z5*z6*z7- 1187*z2*z3^6*z4*z5*z6*z7+ 1132*z3^7*z4*z5*z6*z7-
    1187*z2*z3^5*z4^2*z5*z6*z7+ 1132*z3^6*z4^2*z5*z6*z7-
    1187*z2*z3^4*z4^3*z5*z6*z7+ 1132*z3^5*z4^3*z5*z6*z7-
    1187*z2*z3^3*z4^4*z5*z6*z7+ 1132*z3^4*z4^4*z5*z6*z7-
    1187*z2*z3^2*z4^5*z5*z6*z7+ 1132*z3^3*z4^5*z5*z6*z7-
    1187*z2*z3*z4^6*z5*z6*z7+ 1132*z3^2*z4^6*z5*z6*z7+ 3363*z2*z4^7*z5*z6*z7+
    1132*z3*z4^7*z5*z6*z7- 2231*z4^8*z5*z6*z7- 3374*z2*z3^8+ 2264*z3^9-
    11*z2*z3^7*z4- 1110*z3^8*z4- 11*z2*z3^6*z4^2- 1110*z3^7*z4^2-
    11*z2*z3^5*z4^3- 1110*z3^6*z4^3- 11*z2*z3^4*z4^4- 1110*z3^5*z4^4-
    11*z2*z3^3*z4^5- 1110*z3^4*z4^5- 11*z2*z3^2*z4^6- 1110*z3^3*z4^6-
    11*z2*z3*z4^7- 1110*z3^2*z4^7- 3374*z2*z4^8- 1110*z3*z4^8+ 2264*z4^9+
    3363*z2*z3^7*z5- 3374*z3^8*z5+ 2242*z2*z3^6*z4*z5- 11*z3^7*z4*z5+
    2242*z2*z3^5*z4^2*z5- 11*z3^6*z4^2*z5+ 2242*z2*z3^4*z4^3*z5-
    11*z3^5*z4^3*z5+ 2242*z2*z3^3*z4^4*z5- 11*z3^4*z4^4*z5+
    2242*z2*z3^2*z4^5*z5- 11*z3^3*z4^5*z5+ 2242*z2*z3*z4^6*z5- 11*z3^2*z4^6*z5+
    3363*z2*z4^7*z5- 11*z3*z4^7*z5- 3374*z4^8*z5+ 3363*z2*z3^7*z6- 3374*z3^8*z6+
    2242*z2*z3^6*z4*z6- 11*z3^7*z4*z6+ 2242*z2*z3^5*z4^2*z6- 11*z3^6*z4^2*z6+
    2242*z2*z3^4*z4^3*z6- 11*z3^5*z4^3*z6+ 2242*z2*z3^3*z4^4*z6-
    11*z3^4*z4^4*z6+ 2242*z2*z3^2*z4^5*z6- 11*z3^3*z4^5*z6+ 2242*z2*z3*z4^6*z6-
    11*z3^2*z4^6*z6+ 3363*z2*z4^7*z6- 11*z3*z4^7*z6- 3374*z4^8*z6-
    1121*z2*z3^6*z5*z6+ 3363*z3^7*z5*z6+ 3396*z2*z3^5*z4*z5*z6+
    2242*z3^6*z4*z5*z6+ 3396*z2*z3^4*z4^2*z5*z6+ 2242*z3^5*z4^2*z5*z6+
    3396*z2*z3^3*z4^3*z5*z6+ 2242*z3^4*z4^3*z5*z6+ 3396*z2*z3^2*z4^4*z5*z6+
    2242*z3^3*z4^4*z5*z6+ 3396*z2*z3*z4^5*z5*z6+ 2242*z3^2*z4^5*z5*z6-
    1121*z2*z4^6*z5*z6+ 2242*z3*z4^6*z5*z6+ 3363*z4^7*z5*z6+ 3363*z2*z3^7*z7-
    3374*z3^8*z7+ 2242*z2*z3^6*z4*z7- 11*z3^7*z4*z7+ 2242*z2*z3^5*z4^2*z7-
    11*z3^6*z4^2*z7+ 2242*z2*z3^4*z4^3*z7- 11*z3^5*z4^3*z7+
    2242*z2*z3^3*z4^4*z7- 11*z3^4*z4^4*z7+ 2242*z2*z3^2*z4^5*z7-
    11*z3^3*z4^5*z7+ 2242*z2*z3*z4^6*z7- 11*z3^2*z4^6*z7+ 3363*z2*z4^7*z7-
    11*z3*z4^7*z7- 3374*z4^8*z7- 1121*z2*z3^6*z5*z7+ 3363*z3^7*z5*z7+
    3396*z2*z3^5*z4*z5*z7+ 2242*z3^6*z4*z5*z7+ 3396*z2*z3^4*z4^2*z5*z7+
    2242*z3^5*z4^2*z5*z7+ 3396*z2*z3^3*z4^3*z5*z7+ 2242*z3^4*z4^3*z5*z7+
    3396*z2*z3^2*z4^4*z5*z7+ 2242*z3^3*z4^4*z5*z7+ 3396*z2*z3*z4^5*z5*z7+
    2242*z3^2*z4^5*z5*z7- 1121*z2*z4^6*z5*z7+ 2242*z3*z4^6*z5*z7+
    3363*z4^7*z5*z7- 1121*z2*z3^6*z6*z7+ 3363*z3^7*z6*z7+ 3396*z2*z3^5*z4*z6*z7+
    2242*z3^6*z4*z6*z7+ 3396*z2*z3^4*z4^2*z6*z7+ 2242*z3^5*z4^2*z6*z7+
    3396*z2*z3^3*z4^3*z6*z7+ 2242*z3^4*z4^3*z6*z7+ 3396*z2*z3^2*z4^4*z6*z7+
    2242*z3^3*z4^4*z6*z7+ 3396*z2*z3*z4^5*z6*z7+ 2242*z3^2*z4^5*z6*z7-
    1121*z2*z4^6*z6*z7+ 2242*z3*z4^6*z6*z7+ 3363*z4^7*z6*z7-
    4484*z2*z3^5*z5*z6*z7- 1121*z3^6*z5*z6*z7+ 1154*z2*z3^4*z4*z5*z6*z7+
    3396*z3^5*z4*z5*z6*z7+ 1154*z2*z3^3*z4^2*z5*z6*z7+ 3396*z3^4*z4^2*z5*z6*z7+
    1154*z2*z3^2*z4^3*z5*z6*z7+ 3396*z3^3*z4^3*z5*z6*z7+
    1154*z2*z3*z4^4*z5*z6*z7+ 3396*z3^2*z4^4*z5*z6*z7- 4484*z2*z4^5*z5*z6*z7+
    3396*z3*z4^5*z5*z6*z7- 1121*z4^6*z5*z6*z7+ 147*z2*z3^6+ 2604*z3^7+
    2887*z2*z3^5*z4+ 2751*z3^6*z4+ 2887*z2*z3^4*z4^2+ 2751*z3^5*z4^2+
    2887*z2*z3^3*z4^3+ 2751*z3^4*z4^3+ 2887*z2*z3^2*z4^4+ 2751*z3^3*z4^4+
    2887*z2*z3*z4^5+ 2751*z3^2*z4^5+ 147*z2*z4^6+ 2751*z3*z4^6+ 2604*z4^7+
    2740*z2*z3^5*z5+ 147*z3^6*z5- 1766*z2*z3^4*z4*z5+ 2887*z3^5*z4*z5-
    1766*z2*z3^3*z4^2*z5+ 2887*z3^4*z4^2*z5- 1766*z2*z3^2*z4^3*z5+
    2887*z3^3*z4^3*z5- 1766*z2*z3*z4^4*z5+ 2887*z3^2*z4^4*z5+ 2740*z2*z4^5*z5+
    2887*z3*z4^5*z5+ 147*z4^6*z5+ 2740*z2*z3^5*z6+ 147*z3^6*z6-
    1766*z2*z3^4*z4*z6+ 2887*z3^5*z4*z6- 1766*z2*z3^3*z4^2*z6+
    2887*z3^4*z4^2*z6- 1766*z2*z3^2*z4^3*z6+ 2887*z3^3*z4^3*z6-
    1766*z2*z3*z4^4*z6+ 2887*z3^2*z4^4*z6+ 2740*z2*z4^5*z6+ 2887*z3*z4^5*z6+
    147*z4^6*z6+ 4495*z2*z3^4*z5*z6+ 2740*z3^5*z5*z6- 2751*z2*z3^3*z4*z5*z6-
    1766*z3^4*z4*z5*z6- 2751*z2*z3^2*z4^2*z5*z6- 1766*z3^3*z4^2*z5*z6-
    2751*z2*z3*z4^3*z5*z6- 1766*z3^2*z4^3*z5*z6+ 4495*z2*z4^4*z5*z6-
    1766*z3*z4^4*z5*z6+ 2740*z4^5*z5*z6+ 2740*z2*z3^5*z7+ 147*z3^6*z7-
    1766*z2*z3^4*z4*z7+ 2887*z3^5*z4*z7- 1766*z2*z3^3*z4^2*z7+
    2887*z3^4*z4^2*z7- 1766*z2*z3^2*z4^3*z7+ 2887*z3^3*z4^3*z7-
    1766*z2*z3*z4^4*z7+ 2887*z3^2*z4^4*z7+ 2740*z2*z4^5*z7+ 2887*z3*z4^5*z7+
    147*z4^6*z7+ 4495*z2*z3^4*z5*z7+ 2740*z3^5*z5*z7- 2751*z2*z3^3*z4*z5*z7-
    1766*z3^4*z4*z5*z7- 2751*z2*z3^2*z4^2*z5*z7- 1766*z3^3*z4^2*z5*z7-
    2751*z2*z3*z4^3*z5*z7- 1766*z3^2*z4^3*z5*z7+ 4495*z2*z4^4*z5*z7-
    1766*z3*z4^4*z5*z7+ 2740*z4^5*z5*z7+ 4495*z2*z3^4*z6*z7+ 2740*z3^5*z6*z7-
    2751*z2*z3^3*z4*z6*z7- 1766*z3^4*z4*z6*z7- 2751*z2*z3^2*z4^2*z6*z7-
    1766*z3^3*z4^2*z6*z7- 2751*z2*z3*z4^3*z6*z7- 1766*z3^2*z4^3*z6*z7+
    4495*z2*z4^4*z6*z7- 1766*z3*z4^4*z6*z7+ 2740*z4^5*z6*z7+
    1755*z2*z3^3*z5*z6*z7+ 4495*z3^4*z5*z6*z7- 2887*z2*z3^2*z4*z5*z6*z7-
    2751*z3^3*z4*z5*z6*z7- 2887*z2*z3*z4^2*z5*z6*z7- 2751*z3^2*z4^2*z5*z6*z7+
    1755*z2*z4^3*z5*z6*z7- 2751*z3*z4^3*z5*z6*z7+ 4495*z4^4*z5*z6*z7+
    318*z2*z3^4+ 2037*z3^5+ 3906*z2*z3^3*z4+ 2355*z3^4*z4+ 3906*z2*z3^2*z4^2+
    2355*z3^3*z4^2+ 3906*z2*z3*z4^3+ 2355*z3^2*z4^3+ 318*z2*z4^4+ 2355*z3*z4^4+
    2037*z4^5+ 3588*z2*z3^3*z5+ 318*z3^4*z5+ 600*z2*z3^2*z4*z5+ 3906*z3^3*z4*z5+
    600*z2*z3*z4^2*z5+ 3906*z3^2*z4^2*z5+ 3588*z2*z4^3*z5+ 3906*z3*z4^3*z5+
    318*z4^4*z5+ 3588*z2*z3^3*z6+ 318*z3^4*z6+ 600*z2*z3^2*z4*z6+
    3906*z3^3*z4*z6+ 600*z2*z3*z4^2*z6+ 3906*z3^2*z4^2*z6+ 3588*z2*z4^3*z6+
    3906*z3*z4^3*z6+ 318*z4^4*z6- 2988*z2*z3^2*z5*z6+ 3588*z3^3*z5*z6-
    2355*z2*z3*z4*z5*z6+ 600*z3^2*z4*z5*z6- 2988*z2*z4^2*z5*z6+
    600*z3*z4^2*z5*z6+ 3588*z4^3*z5*z6+ 3588*z2*z3^3*z7+ 318*z3^4*z7+
    600*z2*z3^2*z4*z7+ 3906*z3^3*z4*z7+ 600*z2*z3*z4^2*z7+ 3906*z3^2*z4^2*z7+
    3588*z2*z4^3*z7+ 3906*z3*z4^3*z7+ 318*z4^4*z7- 2988*z2*z3^2*z5*z7+
    3588*z3^3*z5*z7- 2355*z2*z3*z4*z5*z7+ 600*z3^2*z4*z5*z7- 2988*z2*z4^2*z5*z7+
    600*z3*z4^2*z5*z7+ 3588*z4^3*z5*z7- 2988*z2*z3^2*z6*z7+ 3588*z3^3*z6*z7-
    2355*z2*z3*z4*z6*z7+ 600*z3^2*z4*z6*z7- 2988*z2*z4^2*z6*z7+
    600*z3*z4^2*z6*z7+ 3588*z4^3*z6*z7+ 633*z2*z3*z5*z6*z7- 2988*z3^2*z5*z6*z7+
    633*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7- 2988*z4^2*z5*z6*z7- 1776*z2*z3^2+
    2166*z3^3- 3978*z2*z3*z4+ 390*z3^2*z4- 1776*z2*z4^2+ 390*z3*z4^2+ 2166*z4^3-
    2202*z2*z3*z5- 1776*z3^2*z5- 2202*z2*z4*z5- 3978*z3*z4*z5- 1776*z4^2*z5-
    2202*z2*z3*z6- 1776*z3^2*z6- 2202*z2*z4*z6- 3978*z3*z4*z6- 1776*z4^2*z6-
    1068*z2*z5*z6- 2202*z3*z5*z6- 2202*z4*z5*z6- 2202*z2*z3*z7- 1776*z3^2*z7-
    2202*z2*z4*z7- 3978*z3*z4*z7- 1776*z4^2*z7- 1068*z2*z5*z7- 2202*z3*z5*z7-
    2202*z4*z5*z7- 1068*z2*z6*z7- 2202*z3*z6*z7- 2202*z4*z6*z7- 1068*z5*z6*z7+
    3538*z2- 1169*z3- 1169*z4+ 3538*z5+ 3538*z6+ 3538*z7",
    "- 4*z2*z3^14+ 2*z3^15+ 6*z2*z3^13*z4- 4*z3^14*z4+ 2*z2*z3^13*z5-
    2*z3^14*z5- 2*z2*z3^12*z4*z5+ 2*z3^13*z4*z5+ 2*z2*z3^12*z5^2- 2*z3^13*z5^2-
    2*z2*z3^11*z4*z5^2+ 2*z3^12*z4*z5^2+ 2*z2*z3^11*z5^3- 2*z3^12*z5^3-
    2*z2*z3^10*z4*z5^3+ 2*z3^11*z4*z5^3+ 2*z2*z3^10*z5^4- 2*z3^11*z5^4-
    2*z2*z3^9*z4*z5^4+ 2*z3^10*z4*z5^4+ 2*z2*z3^9*z5^5- 2*z3^10*z5^5-
    2*z2*z3^8*z4*z5^5+ 2*z3^9*z4*z5^5+ 2*z2*z3^8*z5^6- 2*z3^9*z5^6-
    2*z2*z3^7*z4*z5^6+ 2*z3^8*z4*z5^6+ 2*z2*z3^7*z5^7- 2*z3^8*z5^7-
    2*z2*z3^6*z4*z5^7+ 2*z3^7*z4*z5^7+ 2*z2*z3^6*z5^8- 2*z3^7*z5^8-
    2*z2*z3^5*z4*z5^8+ 2*z3^6*z4*z5^8+ 2*z2*z3^5*z5^9- 2*z3^6*z5^9-
    2*z2*z3^4*z4*z5^9+ 2*z3^5*z4*z5^9+ 2*z2*z3^4*z5^10- 2*z3^5*z5^10-
    2*z2*z3^3*z4*z5^10+ 2*z3^4*z4*z5^10+ 2*z2*z3^3*z5^11- 2*z3^4*z5^11-
    2*z2*z3^2*z4*z5^11+ 2*z3^3*z4*z5^11+ 2*z2*z3^2*z5^12- 2*z3^3*z5^12-
    2*z2*z3*z4*z5^12+ 2*z3^2*z4*z5^12+ 2*z2*z3*z5^13- 2*z3^2*z5^13+
    6*z2*z4*z5^13+ 2*z3*z4*z5^13- 4*z2*z5^14- 2*z3*z5^14- 4*z4*z5^14+ 2*z5^15+
    6*z2*z3^13*z6- 4*z3^14*z6- 8*z2*z3^12*z4*z6+ 6*z3^13*z4*z6-
    2*z2*z3^12*z5*z6+ 2*z3^13*z5*z6+ 2*z2*z3^11*z4*z5*z6- 2*z3^12*z4*z5*z6-
    2*z2*z3^11*z5^2*z6+ 2*z3^12*z5^2*z6+ 2*z2*z3^10*z4*z5^2*z6-
    2*z3^11*z4*z5^2*z6- 2*z2*z3^10*z5^3*z6+ 2*z3^11*z5^3*z6+
    2*z2*z3^9*z4*z5^3*z6- 2*z3^10*z4*z5^3*z6- 2*z2*z3^9*z5^4*z6+
    2*z3^10*z5^4*z6+ 2*z2*z3^8*z4*z5^4*z6- 2*z3^9*z4*z5^4*z6- 2*z2*z3^8*z5^5*z6+
    2*z3^9*z5^5*z6+ 2*z2*z3^7*z4*z5^5*z6- 2*z3^8*z4*z5^5*z6- 2*z2*z3^7*z5^6*z6+
    2*z3^8*z5^6*z6+ 2*z2*z3^6*z4*z5^6*z6- 2*z3^7*z4*z5^6*z6- 2*z2*z3^6*z5^7*z6+
    2*z3^7*z5^7*z6+ 2*z2*z3^5*z4*z5^7*z6- 2*z3^6*z4*z5^7*z6- 2*z2*z3^5*z5^8*z6+
    2*z3^6*z5^8*z6+ 2*z2*z3^4*z4*z5^8*z6- 2*z3^5*z4*z5^8*z6- 2*z2*z3^4*z5^9*z6+
    2*z3^5*z5^9*z6+ 2*z2*z3^3*z4*z5^9*z6- 2*z3^4*z4*z5^9*z6- 2*z2*z3^3*z5^10*z6+
    2*z3^4*z5^10*z6+ 2*z2*z3^2*z4*z5^10*z6- 2*z3^3*z4*z5^10*z6-
    2*z2*z3^2*z5^11*z6+ 2*z3^3*z5^11*z6+ 2*z2*z3*z4*z5^11*z6-
    2*z3^2*z4*z5^11*z6- 2*z2*z3*z5^12*z6+ 2*z3^2*z5^12*z6- 8*z2*z4*z5^12*z6-
    2*z3*z4*z5^12*z6+ 6*z2*z5^13*z6+ 2*z3*z5^13*z6+ 6*z4*z5^13*z6- 4*z5^14*z6+
    6*z2*z3^13*z7- 4*z3^14*z7- 8*z2*z3^12*z4*z7+ 6*z3^13*z4*z7-
    2*z2*z3^12*z5*z7+ 2*z3^13*z5*z7+ 2*z2*z3^11*z4*z5*z7- 2*z3^12*z4*z5*z7-
    2*z2*z3^11*z5^2*z7+ 2*z3^12*z5^2*z7+ 2*z2*z3^10*z4*z5^2*z7-
    2*z3^11*z4*z5^2*z7- 2*z2*z3^10*z5^3*z7+ 2*z3^11*z5^3*z7+
    2*z2*z3^9*z4*z5^3*z7- 2*z3^10*z4*z5^3*z7- 2*z2*z3^9*z5^4*z7+
    2*z3^10*z5^4*z7+ 2*z2*z3^8*z4*z5^4*z7- 2*z3^9*z4*z5^4*z7- 2*z2*z3^8*z5^5*z7+
    2*z3^9*z5^5*z7+ 2*z2*z3^7*z4*z5^5*z7- 2*z3^8*z4*z5^5*z7- 2*z2*z3^7*z5^6*z7+
    2*z3^8*z5^6*z7+ 2*z2*z3^6*z4*z5^6*z7- 2*z3^7*z4*z5^6*z7- 2*z2*z3^6*z5^7*z7+
    2*z3^7*z5^7*z7+ 2*z2*z3^5*z4*z5^7*z7- 2*z3^6*z4*z5^7*z7- 2*z2*z3^5*z5^8*z7+
    2*z3^6*z5^8*z7+ 2*z2*z3^4*z4*z5^8*z7- 2*z3^5*z4*z5^8*z7- 2*z2*z3^4*z5^9*z7+
    2*z3^5*z5^9*z7+ 2*z2*z3^3*z4*z5^9*z7- 2*z3^4*z4*z5^9*z7- 2*z2*z3^3*z5^10*z7+
    2*z3^4*z5^10*z7+ 2*z2*z3^2*z4*z5^10*z7- 2*z3^3*z4*z5^10*z7-
    2*z2*z3^2*z5^11*z7+ 2*z3^3*z5^11*z7+ 2*z2*z3*z4*z5^11*z7-
    2*z3^2*z4*z5^11*z7- 2*z2*z3*z5^12*z7+ 2*z3^2*z5^12*z7- 8*z2*z4*z5^12*z7-
    2*z3*z4*z5^12*z7+ 6*z2*z5^13*z7+ 2*z3*z5^13*z7+ 6*z4*z5^13*z7- 4*z5^14*z7-
    8*z2*z3^12*z6*z7+ 6*z3^13*z6*z7+ 10*z2*z3^11*z4*z6*z7- 8*z3^12*z4*z6*z7+
    2*z2*z3^11*z5*z6*z7- 2*z3^12*z5*z6*z7- 2*z2*z3^10*z4*z5*z6*z7+
    2*z3^11*z4*z5*z6*z7+ 2*z2*z3^10*z5^2*z6*z7- 2*z3^11*z5^2*z6*z7-
    2*z2*z3^9*z4*z5^2*z6*z7+ 2*z3^10*z4*z5^2*z6*z7+ 2*z2*z3^9*z5^3*z6*z7-
    2*z3^10*z5^3*z6*z7- 2*z2*z3^8*z4*z5^3*z6*z7+ 2*z3^9*z4*z5^3*z6*z7+
    2*z2*z3^8*z5^4*z6*z7- 2*z3^9*z5^4*z6*z7- 2*z2*z3^7*z4*z5^4*z6*z7+
    2*z3^8*z4*z5^4*z6*z7+ 2*z2*z3^7*z5^5*z6*z7- 2*z3^8*z5^5*z6*z7-
    2*z2*z3^6*z4*z5^5*z6*z7+ 2*z3^7*z4*z5^5*z6*z7+ 2*z2*z3^6*z5^6*z6*z7-
    2*z3^7*z5^6*z6*z7- 2*z2*z3^5*z4*z5^6*z6*z7+ 2*z3^6*z4*z5^6*z6*z7+
    2*z2*z3^5*z5^7*z6*z7- 2*z3^6*z5^7*z6*z7- 2*z2*z3^4*z4*z5^7*z6*z7+
    2*z3^5*z4*z5^7*z6*z7+ 2*z2*z3^4*z5^8*z6*z7- 2*z3^5*z5^8*z6*z7-
    2*z2*z3^3*z4*z5^8*z6*z7+ 2*z3^4*z4*z5^8*z6*z7+ 2*z2*z3^3*z5^9*z6*z7-
    2*z3^4*z5^9*z6*z7- 2*z2*z3^2*z4*z5^9*z6*z7+ 2*z3^3*z4*z5^9*z6*z7+
    2*z2*z3^2*z5^10*z6*z7- 2*z3^3*z5^10*z6*z7- 2*z2*z3*z4*z5^10*z6*z7+
    2*z3^2*z4*z5^10*z6*z7+ 2*z2*z3*z5^11*z6*z7- 2*z3^2*z5^11*z6*z7+
    10*z2*z4*z5^11*z6*z7+ 2*z3*z4*z5^11*z6*z7- 8*z2*z5^12*z6*z7-
    2*z3*z5^12*z6*z7- 8*z4*z5^12*z6*z7+ 6*z5^13*z6*z7- 13*z2*z3^12+ 10*z3^13+
    10*z2*z3^11*z4- 13*z3^12*z4- 3*z2*z3^11*z5- 3*z3^12*z5+ 11*z2*z3^10*z4*z5-
    3*z3^11*z4*z5- 3*z2*z3^10*z5^2- 3*z3^11*z5^2+ 11*z2*z3^9*z4*z5^2-
    3*z3^10*z4*z5^2- 3*z2*z3^9*z5^3- 3*z3^10*z5^3+ 11*z2*z3^8*z4*z5^3-
    3*z3^9*z4*z5^3- 3*z2*z3^8*z5^4- 3*z3^9*z5^4+ 11*z2*z3^7*z4*z5^4-
    3*z3^8*z4*z5^4- 3*z2*z3^7*z5^5- 3*z3^8*z5^5+ 11*z2*z3^6*z4*z5^5-
    3*z3^7*z4*z5^5- 3*z2*z3^6*z5^6- 3*z3^7*z5^6+ 11*z2*z3^5*z4*z5^6-
    3*z3^6*z4*z5^6- 3*z2*z3^5*z5^7- 3*z3^6*z5^7+ 11*z2*z3^4*z4*z5^7-
    3*z3^5*z4*z5^7- 3*z2*z3^4*z5^8- 3*z3^5*z5^8+ 11*z2*z3^3*z4*z5^8-
    3*z3^4*z4*z5^8- 3*z2*z3^3*z5^9- 3*z3^4*z5^9+ 11*z2*z3^2*z4*z5^9-
    3*z3^3*z4*z5^9- 3*z2*z3^2*z5^10- 3*z3^3*z5^10+ 11*z2*z3*z4*z5^10-
    3*z3^2*z4*z5^10- 3*z2*z3*z5^11- 3*z3^2*z5^11+ 10*z2*z4*z5^11- 3*z3*z4*z5^11-
    13*z2*z5^12- 3*z3*z5^12- 13*z4*z5^12+ 10*z5^13+ 10*z2*z3^11*z6- 13*z3^12*z6+
    z2*z3^10*z4*z6+ 10*z3^11*z4*z6+ 11*z2*z3^10*z5*z6- 3*z3^11*z5*z6-
    21*z2*z3^9*z4*z5*z6+ 11*z3^10*z4*z5*z6+ 11*z2*z3^9*z5^2*z6- 3*z3^10*z5^2*z6-
    21*z2*z3^8*z4*z5^2*z6+ 11*z3^9*z4*z5^2*z6+ 11*z2*z3^8*z5^3*z6-
    3*z3^9*z5^3*z6- 21*z2*z3^7*z4*z5^3*z6+ 11*z3^8*z4*z5^3*z6+
    11*z2*z3^7*z5^4*z6- 3*z3^8*z5^4*z6- 21*z2*z3^6*z4*z5^4*z6+
    11*z3^7*z4*z5^4*z6+ 11*z2*z3^6*z5^5*z6- 3*z3^7*z5^5*z6-
    21*z2*z3^5*z4*z5^5*z6+ 11*z3^6*z4*z5^5*z6+ 11*z2*z3^5*z5^6*z6-
    3*z3^6*z5^6*z6- 21*z2*z3^4*z4*z5^6*z6+ 11*z3^5*z4*z5^6*z6+
    11*z2*z3^4*z5^7*z6- 3*z3^5*z5^7*z6- 21*z2*z3^3*z4*z5^7*z6+
    11*z3^4*z4*z5^7*z6+ 11*z2*z3^3*z5^8*z6- 3*z3^4*z5^8*z6-
    21*z2*z3^2*z4*z5^8*z6+ 11*z3^3*z4*z5^8*z6+ 11*z2*z3^2*z5^9*z6-
    3*z3^3*z5^9*z6- 21*z2*z3*z4*z5^9*z6+ 11*z3^2*z4*z5^9*z6+ 11*z2*z3*z5^10*z6-
    3*z3^2*z5^10*z6+ z2*z4*z5^10*z6+ 11*z3*z4*z5^10*z6+ 10*z2*z5^11*z6-
    3*z3*z5^11*z6+ 10*z4*z5^11*z6- 13*z5^12*z6+ 10*z2*z3^11*z7- 13*z3^12*z7+
    z2*z3^10*z4*z7+ 10*z3^11*z4*z7+ 11*z2*z3^10*z5*z7- 3*z3^11*z5*z7-
    21*z2*z3^9*z4*z5*z7+ 11*z3^10*z4*z5*z7+ 11*z2*z3^9*z5^2*z7- 3*z3^10*z5^2*z7-
    21*z2*z3^8*z4*z5^2*z7+ 11*z3^9*z4*z5^2*z7+ 11*z2*z3^8*z5^3*z7-
    3*z3^9*z5^3*z7- 21*z2*z3^7*z4*z5^3*z7+ 11*z3^8*z4*z5^3*z7+
    11*z2*z3^7*z5^4*z7- 3*z3^8*z5^4*z7- 21*z2*z3^6*z4*z5^4*z7+
    11*z3^7*z4*z5^4*z7+ 11*z2*z3^6*z5^5*z7- 3*z3^7*z5^5*z7-
    21*z2*z3^5*z4*z5^5*z7+ 11*z3^6*z4*z5^5*z7+ 11*z2*z3^5*z5^6*z7-
    3*z3^6*z5^6*z7- 21*z2*z3^4*z4*z5^6*z7+ 11*z3^5*z4*z5^6*z7+
    11*z2*z3^4*z5^7*z7- 3*z3^5*z5^7*z7- 21*z2*z3^3*z4*z5^7*z7+
    11*z3^4*z4*z5^7*z7+ 11*z2*z3^3*z5^8*z7- 3*z3^4*z5^8*z7-
    21*z2*z3^2*z4*z5^8*z7+ 11*z3^3*z4*z5^8*z7+ 11*z2*z3^2*z5^9*z7-
    3*z3^3*z5^9*z7- 21*z2*z3*z4*z5^9*z7+ 11*z3^2*z4*z5^9*z7+ 11*z2*z3*z5^10*z7-
    3*z3^2*z5^10*z7+ z2*z4*z5^10*z7+ 11*z3*z4*z5^10*z7+ 10*z2*z5^11*z7-
    3*z3*z5^11*z7+ 10*z4*z5^11*z7- 13*z5^12*z7+ z2*z3^10*z6*z7+ 10*z3^11*z6*z7-
    22*z2*z3^9*z4*z6*z7+ z3^10*z4*z6*z7- 21*z2*z3^9*z5*z6*z7+ 11*z3^10*z5*z6*z7+
    33*z2*z3^8*z4*z5*z6*z7- 21*z3^9*z4*z5*z6*z7- 21*z2*z3^8*z5^2*z6*z7+
    11*z3^9*z5^2*z6*z7+ 33*z2*z3^7*z4*z5^2*z6*z7- 21*z3^8*z4*z5^2*z6*z7-
    21*z2*z3^7*z5^3*z6*z7+ 11*z3^8*z5^3*z6*z7+ 33*z2*z3^6*z4*z5^3*z6*z7-
    21*z3^7*z4*z5^3*z6*z7- 21*z2*z3^6*z5^4*z6*z7+ 11*z3^7*z5^4*z6*z7+
    33*z2*z3^5*z4*z5^4*z6*z7- 21*z3^6*z4*z5^4*z6*z7- 21*z2*z3^5*z5^5*z6*z7+
    11*z3^6*z5^5*z6*z7+ 33*z2*z3^4*z4*z5^5*z6*z7- 21*z3^5*z4*z5^5*z6*z7-
    21*z2*z3^4*z5^6*z6*z7+ 11*z3^5*z5^6*z6*z7+ 33*z2*z3^3*z4*z5^6*z6*z7-
    21*z3^4*z4*z5^6*z6*z7- 21*z2*z3^3*z5^7*z6*z7+ 11*z3^4*z5^7*z6*z7+
    33*z2*z3^2*z4*z5^7*z6*z7- 21*z3^3*z4*z5^7*z6*z7- 21*z2*z3^2*z5^8*z6*z7+
    11*z3^3*z5^8*z6*z7+ 33*z2*z3*z4*z5^8*z6*z7- 21*z3^2*z4*z5^8*z6*z7-
    21*z2*z3*z5^9*z6*z7+ 11*z3^2*z5^9*z6*z7- 22*z2*z4*z5^9*z6*z7-
    21*z3*z4*z5^9*z6*z7+ z2*z5^10*z6*z7+ 11*z3*z5^10*z6*z7+ z4*z5^10*z6*z7+
    10*z5^11*z6*z7- 12*z2*z3^10- 1107*z3^11+ 1121*z2*z3^9*z4- 12*z3^10*z4+
    1109*z2*z3^9*z5- 1119*z3^10*z5- 1110*z2*z3^8*z4*z5+ 1109*z3^9*z4*z5+
    1109*z2*z3^8*z5^2- 1119*z3^9*z5^2- 1110*z2*z3^7*z4*z5^2+ 1109*z3^8*z4*z5^2+
    1109*z2*z3^7*z5^3- 1119*z3^8*z5^3- 1110*z2*z3^6*z4*z5^3+ 1109*z3^7*z4*z5^3+
    1109*z2*z3^6*z5^4- 1119*z3^7*z5^4- 1110*z2*z3^5*z4*z5^4+ 1109*z3^6*z4*z5^4+
    1109*z2*z3^5*z5^5- 1119*z3^6*z5^5- 1110*z2*z3^4*z4*z5^5+ 1109*z3^5*z4*z5^5+
    1109*z2*z3^4*z5^6- 1119*z3^5*z5^6- 1110*z2*z3^3*z4*z5^6+ 1109*z3^4*z4*z5^6+
    1109*z2*z3^3*z5^7- 1119*z3^4*z5^7- 1110*z2*z3^2*z4*z5^7+ 1109*z3^3*z4*z5^7+
    1109*z2*z3^2*z5^8- 1119*z3^3*z5^8- 1110*z2*z3*z4*z5^8+ 1109*z3^2*z4*z5^8+
    1109*z2*z3*z5^9- 1119*z3^2*z5^9+ 1121*z2*z4*z5^9+ 1109*z3*z4*z5^9-
    12*z2*z5^10- 1119*z3*z5^10- 12*z4*z5^10- 1107*z5^11+ 1121*z2*z3^9*z6-
    12*z3^10*z6- 2231*z2*z3^8*z4*z6+ 1121*z3^9*z4*z6- 1110*z2*z3^8*z5*z6+
    1109*z3^9*z5*z6+ 1132*z2*z3^7*z4*z5*z6- 1110*z3^8*z4*z5*z6-
    1110*z2*z3^7*z5^2*z6+ 1109*z3^8*z5^2*z6+ 1132*z2*z3^6*z4*z5^2*z6-
    1110*z3^7*z4*z5^2*z6- 1110*z2*z3^6*z5^3*z6+ 1109*z3^7*z5^3*z6+
    1132*z2*z3^5*z4*z5^3*z6- 1110*z3^6*z4*z5^3*z6- 1110*z2*z3^5*z5^4*z6+
    1109*z3^6*z5^4*z6+ 1132*z2*z3^4*z4*z5^4*z6- 1110*z3^5*z4*z5^4*z6-
    1110*z2*z3^4*z5^5*z6+ 1109*z3^5*z5^5*z6+ 1132*z2*z3^3*z4*z5^5*z6-
    1110*z3^4*z4*z5^5*z6- 1110*z2*z3^3*z5^6*z6+ 1109*z3^4*z5^6*z6+
    1132*z2*z3^2*z4*z5^6*z6- 1110*z3^3*z4*z5^6*z6- 1110*z2*z3^2*z5^7*z6+
    1109*z3^3*z5^7*z6+ 1132*z2*z3*z4*z5^7*z6- 1110*z3^2*z4*z5^7*z6-
    1110*z2*z3*z5^8*z6+ 1109*z3^2*z5^8*z6- 2231*z2*z4*z5^8*z6-
    1110*z3*z4*z5^8*z6+ 1121*z2*z5^9*z6+ 1109*z3*z5^9*z6+ 1121*z4*z5^9*z6-
    12*z5^10*z6+ 1121*z2*z3^9*z7- 12*z3^10*z7- 2231*z2*z3^8*z4*z7+
    1121*z3^9*z4*z7- 1110*z2*z3^8*z5*z7+ 1109*z3^9*z5*z7+ 1132*z2*z3^7*z4*z5*z7-
    1110*z3^8*z4*z5*z7- 1110*z2*z3^7*z5^2*z7+ 1109*z3^8*z5^2*z7+
    1132*z2*z3^6*z4*z5^2*z7- 1110*z3^7*z4*z5^2*z7- 1110*z2*z3^6*z5^3*z7+
    1109*z3^7*z5^3*z7+ 1132*z2*z3^5*z4*z5^3*z7- 1110*z3^6*z4*z5^3*z7-
    1110*z2*z3^5*z5^4*z7+ 1109*z3^6*z5^4*z7+ 1132*z2*z3^4*z4*z5^4*z7-
    1110*z3^5*z4*z5^4*z7- 1110*z2*z3^4*z5^5*z7+ 1109*z3^5*z5^5*z7+
    1132*z2*z3^3*z4*z5^5*z7- 1110*z3^4*z4*z5^5*z7- 1110*z2*z3^3*z5^6*z7+
    1109*z3^4*z5^6*z7+ 1132*z2*z3^2*z4*z5^6*z7- 1110*z3^3*z4*z5^6*z7-
    1110*z2*z3^2*z5^7*z7+ 1109*z3^3*z5^7*z7+ 1132*z2*z3*z4*z5^7*z7-
    1110*z3^2*z4*z5^7*z7- 1110*z2*z3*z5^8*z7+ 1109*z3^2*z5^8*z7-
    2231*z2*z4*z5^8*z7- 1110*z3*z4*z5^8*z7+ 1121*z2*z5^9*z7+ 1109*z3*z5^9*z7+
    1121*z4*z5^9*z7- 12*z5^10*z7- 2231*z2*z3^8*z6*z7+ 1121*z3^9*z6*z7+
    3363*z2*z3^7*z4*z6*z7- 2231*z3^8*z4*z6*z7+ 1132*z2*z3^7*z5*z6*z7-
    1110*z3^8*z5*z6*z7- 1187*z2*z3^6*z4*z5*z6*z7+ 1132*z3^7*z4*z5*z6*z7+
    1132*z2*z3^6*z5^2*z6*z7- 1110*z3^7*z5^2*z6*z7- 1187*z2*z3^5*z4*z5^2*z6*z7+
    1132*z3^6*z4*z5^2*z6*z7+ 1132*z2*z3^5*z5^3*z6*z7- 1110*z3^6*z5^3*z6*z7-
    1187*z2*z3^4*z4*z5^3*z6*z7+ 1132*z3^5*z4*z5^3*z6*z7+
    1132*z2*z3^4*z5^4*z6*z7- 1110*z3^5*z5^4*z6*z7- 1187*z2*z3^3*z4*z5^4*z6*z7+
    1132*z3^4*z4*z5^4*z6*z7+ 1132*z2*z3^3*z5^5*z6*z7- 1110*z3^4*z5^5*z6*z7-
    1187*z2*z3^2*z4*z5^5*z6*z7+ 1132*z3^3*z4*z5^5*z6*z7+
    1132*z2*z3^2*z5^6*z6*z7- 1110*z3^3*z5^6*z6*z7- 1187*z2*z3*z4*z5^6*z6*z7+
    1132*z3^2*z4*z5^6*z6*z7+ 1132*z2*z3*z5^7*z6*z7- 1110*z3^2*z5^7*z6*z7+
    3363*z2*z4*z5^7*z6*z7+ 1132*z3*z4*z5^7*z6*z7- 2231*z2*z5^8*z6*z7-
    1110*z3*z5^8*z6*z7- 2231*z4*z5^8*z6*z7+ 1121*z5^9*z6*z7- 3374*z2*z3^8+
    2264*z3^9+ 3363*z2*z3^7*z4- 3374*z3^8*z4- 11*z2*z3^7*z5- 1110*z3^8*z5+
    2242*z2*z3^6*z4*z5- 11*z3^7*z4*z5- 11*z2*z3^6*z5^2- 1110*z3^7*z5^2+
    2242*z2*z3^5*z4*z5^2- 11*z3^6*z4*z5^2- 11*z2*z3^5*z5^3- 1110*z3^6*z5^3+
    2242*z2*z3^4*z4*z5^3- 11*z3^5*z4*z5^3- 11*z2*z3^4*z5^4- 1110*z3^5*z5^4+
    2242*z2*z3^3*z4*z5^4- 11*z3^4*z4*z5^4- 11*z2*z3^3*z5^5- 1110*z3^4*z5^5+
    2242*z2*z3^2*z4*z5^5- 11*z3^3*z4*z5^5- 11*z2*z3^2*z5^6- 1110*z3^3*z5^6+
    2242*z2*z3*z4*z5^6- 11*z3^2*z4*z5^6- 11*z2*z3*z5^7- 1110*z3^2*z5^7+
    3363*z2*z4*z5^7- 11*z3*z4*z5^7- 3374*z2*z5^8- 1110*z3*z5^8- 3374*z4*z5^8+
    2264*z5^9+ 3363*z2*z3^7*z6- 3374*z3^8*z6- 1121*z2*z3^6*z4*z6+
    3363*z3^7*z4*z6+ 2242*z2*z3^6*z5*z6- 11*z3^7*z5*z6+ 3396*z2*z3^5*z4*z5*z6+
    2242*z3^6*z4*z5*z6+ 2242*z2*z3^5*z5^2*z6- 11*z3^6*z5^2*z6+
    3396*z2*z3^4*z4*z5^2*z6+ 2242*z3^5*z4*z5^2*z6+ 2242*z2*z3^4*z5^3*z6-
    11*z3^5*z5^3*z6+ 3396*z2*z3^3*z4*z5^3*z6+ 2242*z3^4*z4*z5^3*z6+
    2242*z2*z3^3*z5^4*z6- 11*z3^4*z5^4*z6+ 3396*z2*z3^2*z4*z5^4*z6+
    2242*z3^3*z4*z5^4*z6+ 2242*z2*z3^2*z5^5*z6- 11*z3^3*z5^5*z6+
    3396*z2*z3*z4*z5^5*z6+ 2242*z3^2*z4*z5^5*z6+ 2242*z2*z3*z5^6*z6-
    11*z3^2*z5^6*z6- 1121*z2*z4*z5^6*z6+ 2242*z3*z4*z5^6*z6+ 3363*z2*z5^7*z6-
    11*z3*z5^7*z6+ 3363*z4*z5^7*z6- 3374*z5^8*z6+ 3363*z2*z3^7*z7- 3374*z3^8*z7-
    1121*z2*z3^6*z4*z7+ 3363*z3^7*z4*z7+ 2242*z2*z3^6*z5*z7- 11*z3^7*z5*z7+
    3396*z2*z3^5*z4*z5*z7+ 2242*z3^6*z4*z5*z7+ 2242*z2*z3^5*z5^2*z7-
    11*z3^6*z5^2*z7+ 3396*z2*z3^4*z4*z5^2*z7+ 2242*z3^5*z4*z5^2*z7+
    2242*z2*z3^4*z5^3*z7- 11*z3^5*z5^3*z7+ 3396*z2*z3^3*z4*z5^3*z7+
    2242*z3^4*z4*z5^3*z7+ 2242*z2*z3^3*z5^4*z7- 11*z3^4*z5^4*z7+
    3396*z2*z3^2*z4*z5^4*z7+ 2242*z3^3*z4*z5^4*z7+ 2242*z2*z3^2*z5^5*z7-
    11*z3^3*z5^5*z7+ 3396*z2*z3*z4*z5^5*z7+ 2242*z3^2*z4*z5^5*z7+
    2242*z2*z3*z5^6*z7- 11*z3^2*z5^6*z7- 1121*z2*z4*z5^6*z7+ 2242*z3*z4*z5^6*z7+
    3363*z2*z5^7*z7- 11*z3*z5^7*z7+ 3363*z4*z5^7*z7- 3374*z5^8*z7-
    1121*z2*z3^6*z6*z7+ 3363*z3^7*z6*z7- 4484*z2*z3^5*z4*z6*z7-
    1121*z3^6*z4*z6*z7+ 3396*z2*z3^5*z5*z6*z7+ 2242*z3^6*z5*z6*z7+
    1154*z2*z3^4*z4*z5*z6*z7+ 3396*z3^5*z4*z5*z6*z7+ 3396*z2*z3^4*z5^2*z6*z7+
    2242*z3^5*z5^2*z6*z7+ 1154*z2*z3^3*z4*z5^2*z6*z7+ 3396*z3^4*z4*z5^2*z6*z7+
    3396*z2*z3^3*z5^3*z6*z7+ 2242*z3^4*z5^3*z6*z7+ 1154*z2*z3^2*z4*z5^3*z6*z7+
    3396*z3^3*z4*z5^3*z6*z7+ 3396*z2*z3^2*z5^4*z6*z7+ 2242*z3^3*z5^4*z6*z7+
    1154*z2*z3*z4*z5^4*z6*z7+ 3396*z3^2*z4*z5^4*z6*z7+ 3396*z2*z3*z5^5*z6*z7+
    2242*z3^2*z5^5*z6*z7- 4484*z2*z4*z5^5*z6*z7+ 3396*z3*z4*z5^5*z6*z7-
    1121*z2*z5^6*z6*z7+ 2242*z3*z5^6*z6*z7- 1121*z4*z5^6*z6*z7+ 3363*z5^7*z6*z7+
    147*z2*z3^6+ 2604*z3^7+ 2740*z2*z3^5*z4+ 147*z3^6*z4+ 2887*z2*z3^5*z5+
    2751*z3^6*z5- 1766*z2*z3^4*z4*z5+ 2887*z3^5*z4*z5+ 2887*z2*z3^4*z5^2+
    2751*z3^5*z5^2- 1766*z2*z3^3*z4*z5^2+ 2887*z3^4*z4*z5^2+ 2887*z2*z3^3*z5^3+
    2751*z3^4*z5^3- 1766*z2*z3^2*z4*z5^3+ 2887*z3^3*z4*z5^3+ 2887*z2*z3^2*z5^4+
    2751*z3^3*z5^4- 1766*z2*z3*z4*z5^4+ 2887*z3^2*z4*z5^4+ 2887*z2*z3*z5^5+
    2751*z3^2*z5^5+ 2740*z2*z4*z5^5+ 2887*z3*z4*z5^5+ 147*z2*z5^6+ 2751*z3*z5^6+
    147*z4*z5^6+ 2604*z5^7+ 2740*z2*z3^5*z6+ 147*z3^6*z6+ 4495*z2*z3^4*z4*z6+
    2740*z3^5*z4*z6- 1766*z2*z3^4*z5*z6+ 2887*z3^5*z5*z6- 2751*z2*z3^3*z4*z5*z6-
    1766*z3^4*z4*z5*z6- 1766*z2*z3^3*z5^2*z6+ 2887*z3^4*z5^2*z6-
    2751*z2*z3^2*z4*z5^2*z6- 1766*z3^3*z4*z5^2*z6- 1766*z2*z3^2*z5^3*z6+
    2887*z3^3*z5^3*z6- 2751*z2*z3*z4*z5^3*z6- 1766*z3^2*z4*z5^3*z6-
    1766*z2*z3*z5^4*z6+ 2887*z3^2*z5^4*z6+ 4495*z2*z4*z5^4*z6-
    1766*z3*z4*z5^4*z6+ 2740*z2*z5^5*z6+ 2887*z3*z5^5*z6+ 2740*z4*z5^5*z6+
    147*z5^6*z6+ 2740*z2*z3^5*z7+ 147*z3^6*z7+ 4495*z2*z3^4*z4*z7+
    2740*z3^5*z4*z7- 1766*z2*z3^4*z5*z7+ 2887*z3^5*z5*z7- 2751*z2*z3^3*z4*z5*z7-
    1766*z3^4*z4*z5*z7- 1766*z2*z3^3*z5^2*z7+ 2887*z3^4*z5^2*z7-
    2751*z2*z3^2*z4*z5^2*z7- 1766*z3^3*z4*z5^2*z7- 1766*z2*z3^2*z5^3*z7+
    2887*z3^3*z5^3*z7- 2751*z2*z3*z4*z5^3*z7- 1766*z3^2*z4*z5^3*z7-
    1766*z2*z3*z5^4*z7+ 2887*z3^2*z5^4*z7+ 4495*z2*z4*z5^4*z7-
    1766*z3*z4*z5^4*z7+ 2740*z2*z5^5*z7+ 2887*z3*z5^5*z7+ 2740*z4*z5^5*z7+
    147*z5^6*z7+ 4495*z2*z3^4*z6*z7+ 2740*z3^5*z6*z7+ 1755*z2*z3^3*z4*z6*z7+
    4495*z3^4*z4*z6*z7- 2751*z2*z3^3*z5*z6*z7- 1766*z3^4*z5*z6*z7-
    2887*z2*z3^2*z4*z5*z6*z7- 2751*z3^3*z4*z5*z6*z7- 2751*z2*z3^2*z5^2*z6*z7-
    1766*z3^3*z5^2*z6*z7- 2887*z2*z3*z4*z5^2*z6*z7- 2751*z3^2*z4*z5^2*z6*z7-
    2751*z2*z3*z5^3*z6*z7- 1766*z3^2*z5^3*z6*z7+ 1755*z2*z4*z5^3*z6*z7-
    2751*z3*z4*z5^3*z6*z7+ 4495*z2*z5^4*z6*z7- 1766*z3*z5^4*z6*z7+
    4495*z4*z5^4*z6*z7+ 2740*z5^5*z6*z7+ 318*z2*z3^4+ 2037*z3^5+
    3588*z2*z3^3*z4+ 318*z3^4*z4+ 3906*z2*z3^3*z5+ 2355*z3^4*z5+
    600*z2*z3^2*z4*z5+ 3906*z3^3*z4*z5+ 3906*z2*z3^2*z5^2+ 2355*z3^3*z5^2+
    600*z2*z3*z4*z5^2+ 3906*z3^2*z4*z5^2+ 3906*z2*z3*z5^3+ 2355*z3^2*z5^3+
    3588*z2*z4*z5^3+ 3906*z3*z4*z5^3+ 318*z2*z5^4+ 2355*z3*z5^4+ 318*z4*z5^4+
    2037*z5^5+ 3588*z2*z3^3*z6+ 318*z3^4*z6- 2988*z2*z3^2*z4*z6+
    3588*z3^3*z4*z6+ 600*z2*z3^2*z5*z6+ 3906*z3^3*z5*z6- 2355*z2*z3*z4*z5*z6+
    600*z3^2*z4*z5*z6+ 600*z2*z3*z5^2*z6+ 3906*z3^2*z5^2*z6- 2988*z2*z4*z5^2*z6+
    600*z3*z4*z5^2*z6+ 3588*z2*z5^3*z6+ 3906*z3*z5^3*z6+ 3588*z4*z5^3*z6+
    318*z5^4*z6+ 3588*z2*z3^3*z7+ 318*z3^4*z7- 2988*z2*z3^2*z4*z7+
    3588*z3^3*z4*z7+ 600*z2*z3^2*z5*z7+ 3906*z3^3*z5*z7- 2355*z2*z3*z4*z5*z7+
    600*z3^2*z4*z5*z7+ 600*z2*z3*z5^2*z7+ 3906*z3^2*z5^2*z7- 2988*z2*z4*z5^2*z7+
    600*z3*z4*z5^2*z7+ 3588*z2*z5^3*z7+ 3906*z3*z5^3*z7+ 3588*z4*z5^3*z7+
    318*z5^4*z7- 2988*z2*z3^2*z6*z7+ 3588*z3^3*z6*z7+ 633*z2*z3*z4*z6*z7-
    2988*z3^2*z4*z6*z7- 2355*z2*z3*z5*z6*z7+ 600*z3^2*z5*z6*z7+
    633*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7- 2988*z2*z5^2*z6*z7+
    600*z3*z5^2*z6*z7- 2988*z4*z5^2*z6*z7+ 3588*z5^3*z6*z7- 1776*z2*z3^2+
    2166*z3^3- 2202*z2*z3*z4- 1776*z3^2*z4- 3978*z2*z3*z5+ 390*z3^2*z5-
    2202*z2*z4*z5- 3978*z3*z4*z5- 1776*z2*z5^2+ 390*z3*z5^2- 1776*z4*z5^2+
    2166*z5^3- 2202*z2*z3*z6- 1776*z3^2*z6- 1068*z2*z4*z6- 2202*z3*z4*z6-
    2202*z2*z5*z6- 3978*z3*z5*z6- 2202*z4*z5*z6- 1776*z5^2*z6- 2202*z2*z3*z7-
    1776*z3^2*z7- 1068*z2*z4*z7- 2202*z3*z4*z7- 2202*z2*z5*z7- 3978*z3*z5*z7-
    2202*z4*z5*z7- 1776*z5^2*z7- 1068*z2*z6*z7- 2202*z3*z6*z7- 1068*z4*z6*z7-
    2202*z5*z6*z7+ 3538*z2- 1169*z3+ 3538*z4- 1169*z5+ 3538*z6+ 3538*z7",
    "- 4*z2*z3^14+ 2*z3^15+ 6*z2*z3^13*z4- 4*z3^14*z4+ 6*z2*z3^13*z5-
    4*z3^14*z5- 8*z2*z3^12*z4*z5+ 6*z3^13*z4*z5+ 2*z2*z3^13*z6- 2*z3^14*z6-
    2*z2*z3^12*z4*z6+ 2*z3^13*z4*z6- 2*z2*z3^12*z5*z6+ 2*z3^13*z5*z6+
    2*z2*z3^11*z4*z5*z6- 2*z3^12*z4*z5*z6+ 2*z2*z3^12*z6^2- 2*z3^13*z6^2-
    2*z2*z3^11*z4*z6^2+ 2*z3^12*z4*z6^2- 2*z2*z3^11*z5*z6^2+ 2*z3^12*z5*z6^2+
    2*z2*z3^10*z4*z5*z6^2- 2*z3^11*z4*z5*z6^2+ 2*z2*z3^11*z6^3- 2*z3^12*z6^3-
    2*z2*z3^10*z4*z6^3+ 2*z3^11*z4*z6^3- 2*z2*z3^10*z5*z6^3+ 2*z3^11*z5*z6^3+
    2*z2*z3^9*z4*z5*z6^3- 2*z3^10*z4*z5*z6^3+ 2*z2*z3^10*z6^4- 2*z3^11*z6^4-
    2*z2*z3^9*z4*z6^4+ 2*z3^10*z4*z6^4- 2*z2*z3^9*z5*z6^4+ 2*z3^10*z5*z6^4+
    2*z2*z3^8*z4*z5*z6^4- 2*z3^9*z4*z5*z6^4+ 2*z2*z3^9*z6^5- 2*z3^10*z6^5-
    2*z2*z3^8*z4*z6^5+ 2*z3^9*z4*z6^5- 2*z2*z3^8*z5*z6^5+ 2*z3^9*z5*z6^5+
    2*z2*z3^7*z4*z5*z6^5- 2*z3^8*z4*z5*z6^5+ 2*z2*z3^8*z6^6- 2*z3^9*z6^6-
    2*z2*z3^7*z4*z6^6+ 2*z3^8*z4*z6^6- 2*z2*z3^7*z5*z6^6+ 2*z3^8*z5*z6^6+
    2*z2*z3^6*z4*z5*z6^6- 2*z3^7*z4*z5*z6^6+ 2*z2*z3^7*z6^7- 2*z3^8*z6^7-
    2*z2*z3^6*z4*z6^7+ 2*z3^7*z4*z6^7- 2*z2*z3^6*z5*z6^7+ 2*z3^7*z5*z6^7+
    2*z2*z3^5*z4*z5*z6^7- 2*z3^6*z4*z5*z6^7+ 2*z2*z3^6*z6^8- 2*z3^7*z6^8-
    2*z2*z3^5*z4*z6^8+ 2*z3^6*z4*z6^8- 2*z2*z3^5*z5*z6^8+ 2*z3^6*z5*z6^8+
    2*z2*z3^4*z4*z5*z6^8- 2*z3^5*z4*z5*z6^8+ 2*z2*z3^5*z6^9- 2*z3^6*z6^9-
    2*z2*z3^4*z4*z6^9+ 2*z3^5*z4*z6^9- 2*z2*z3^4*z5*z6^9+ 2*z3^5*z5*z6^9+
    2*z2*z3^3*z4*z5*z6^9- 2*z3^4*z4*z5*z6^9+ 2*z2*z3^4*z6^10- 2*z3^5*z6^10-
    2*z2*z3^3*z4*z6^10+ 2*z3^4*z4*z6^10- 2*z2*z3^3*z5*z6^10+ 2*z3^4*z5*z6^10+
    2*z2*z3^2*z4*z5*z6^10- 2*z3^3*z4*z5*z6^10+ 2*z2*z3^3*z6^11- 2*z3^4*z6^11-
    2*z2*z3^2*z4*z6^11+ 2*z3^3*z4*z6^11- 2*z2*z3^2*z5*z6^11+ 2*z3^3*z5*z6^11+
    2*z2*z3*z4*z5*z6^11- 2*z3^2*z4*z5*z6^11+ 2*z2*z3^2*z6^12- 2*z3^3*z6^12-
    2*z2*z3*z4*z6^12+ 2*z3^2*z4*z6^12- 2*z2*z3*z5*z6^12+ 2*z3^2*z5*z6^12-
    8*z2*z4*z5*z6^12- 2*z3*z4*z5*z6^12+ 2*z2*z3*z6^13- 2*z3^2*z6^13+
    6*z2*z4*z6^13+ 2*z3*z4*z6^13+ 6*z2*z5*z6^13+ 2*z3*z5*z6^13+ 6*z4*z5*z6^13-
    4*z2*z6^14- 2*z3*z6^14- 4*z4*z6^14- 4*z5*z6^14+ 2*z6^15+ 6*z2*z3^13*z7-
    4*z3^14*z7- 8*z2*z3^12*z4*z7+ 6*z3^13*z4*z7- 8*z2*z3^12*z5*z7+
    6*z3^13*z5*z7+ 10*z2*z3^11*z4*z5*z7- 8*z3^12*z4*z5*z7- 2*z2*z3^12*z6*z7+
    2*z3^13*z6*z7+ 2*z2*z3^11*z4*z6*z7- 2*z3^12*z4*z6*z7+ 2*z2*z3^11*z5*z6*z7-
    2*z3^12*z5*z6*z7- 2*z2*z3^10*z4*z5*z6*z7+ 2*z3^11*z4*z5*z6*z7-
    2*z2*z3^11*z6^2*z7+ 2*z3^12*z6^2*z7+ 2*z2*z3^10*z4*z6^2*z7-
    2*z3^11*z4*z6^2*z7+ 2*z2*z3^10*z5*z6^2*z7- 2*z3^11*z5*z6^2*z7-
    2*z2*z3^9*z4*z5*z6^2*z7+ 2*z3^10*z4*z5*z6^2*z7- 2*z2*z3^10*z6^3*z7+
    2*z3^11*z6^3*z7+ 2*z2*z3^9*z4*z6^3*z7- 2*z3^10*z4*z6^3*z7+
    2*z2*z3^9*z5*z6^3*z7- 2*z3^10*z5*z6^3*z7- 2*z2*z3^8*z4*z5*z6^3*z7+
    2*z3^9*z4*z5*z6^3*z7- 2*z2*z3^9*z6^4*z7+ 2*z3^10*z6^4*z7+
    2*z2*z3^8*z4*z6^4*z7- 2*z3^9*z4*z6^4*z7+ 2*z2*z3^8*z5*z6^4*z7-
    2*z3^9*z5*z6^4*z7- 2*z2*z3^7*z4*z5*z6^4*z7+ 2*z3^8*z4*z5*z6^4*z7-
    2*z2*z3^8*z6^5*z7+ 2*z3^9*z6^5*z7+ 2*z2*z3^7*z4*z6^5*z7- 2*z3^8*z4*z6^5*z7+
    2*z2*z3^7*z5*z6^5*z7- 2*z3^8*z5*z6^5*z7- 2*z2*z3^6*z4*z5*z6^5*z7+
    2*z3^7*z4*z5*z6^5*z7- 2*z2*z3^7*z6^6*z7+ 2*z3^8*z6^6*z7+
    2*z2*z3^6*z4*z6^6*z7- 2*z3^7*z4*z6^6*z7+ 2*z2*z3^6*z5*z6^6*z7-
    2*z3^7*z5*z6^6*z7- 2*z2*z3^5*z4*z5*z6^6*z7+ 2*z3^6*z4*z5*z6^6*z7-
    2*z2*z3^6*z6^7*z7+ 2*z3^7*z6^7*z7+ 2*z2*z3^5*z4*z6^7*z7- 2*z3^6*z4*z6^7*z7+
    2*z2*z3^5*z5*z6^7*z7- 2*z3^6*z5*z6^7*z7- 2*z2*z3^4*z4*z5*z6^7*z7+
    2*z3^5*z4*z5*z6^7*z7- 2*z2*z3^5*z6^8*z7+ 2*z3^6*z6^8*z7+
    2*z2*z3^4*z4*z6^8*z7- 2*z3^5*z4*z6^8*z7+ 2*z2*z3^4*z5*z6^8*z7-
    2*z3^5*z5*z6^8*z7- 2*z2*z3^3*z4*z5*z6^8*z7+ 2*z3^4*z4*z5*z6^8*z7-
    2*z2*z3^4*z6^9*z7+ 2*z3^5*z6^9*z7+ 2*z2*z3^3*z4*z6^9*z7- 2*z3^4*z4*z6^9*z7+
    2*z2*z3^3*z5*z6^9*z7- 2*z3^4*z5*z6^9*z7- 2*z2*z3^2*z4*z5*z6^9*z7+
    2*z3^3*z4*z5*z6^9*z7- 2*z2*z3^3*z6^10*z7+ 2*z3^4*z6^10*z7+
    2*z2*z3^2*z4*z6^10*z7- 2*z3^3*z4*z6^10*z7+ 2*z2*z3^2*z5*z6^10*z7-
    2*z3^3*z5*z6^10*z7- 2*z2*z3*z4*z5*z6^10*z7+ 2*z3^2*z4*z5*z6^10*z7-
    2*z2*z3^2*z6^11*z7+ 2*z3^3*z6^11*z7+ 2*z2*z3*z4*z6^11*z7-
    2*z3^2*z4*z6^11*z7+ 2*z2*z3*z5*z6^11*z7- 2*z3^2*z5*z6^11*z7+
    10*z2*z4*z5*z6^11*z7+ 2*z3*z4*z5*z6^11*z7- 2*z2*z3*z6^12*z7+
    2*z3^2*z6^12*z7- 8*z2*z4*z6^12*z7- 2*z3*z4*z6^12*z7- 8*z2*z5*z6^12*z7-
    2*z3*z5*z6^12*z7- 8*z4*z5*z6^12*z7+ 6*z2*z6^13*z7+ 2*z3*z6^13*z7+
    6*z4*z6^13*z7+ 6*z5*z6^13*z7- 4*z6^14*z7- 13*z2*z3^12+ 10*z3^13+
    10*z2*z3^11*z4- 13*z3^12*z4+ 10*z2*z3^11*z5- 13*z3^12*z5+ z2*z3^10*z4*z5+
    10*z3^11*z4*z5- 3*z2*z3^11*z6- 3*z3^12*z6+ 11*z2*z3^10*z4*z6- 3*z3^11*z4*z6+
    11*z2*z3^10*z5*z6- 3*z3^11*z5*z6- 21*z2*z3^9*z4*z5*z6+ 11*z3^10*z4*z5*z6-
    3*z2*z3^10*z6^2- 3*z3^11*z6^2+ 11*z2*z3^9*z4*z6^2- 3*z3^10*z4*z6^2+
    11*z2*z3^9*z5*z6^2- 3*z3^10*z5*z6^2- 21*z2*z3^8*z4*z5*z6^2+
    11*z3^9*z4*z5*z6^2- 3*z2*z3^9*z6^3- 3*z3^10*z6^3+ 11*z2*z3^8*z4*z6^3-
    3*z3^9*z4*z6^3+ 11*z2*z3^8*z5*z6^3- 3*z3^9*z5*z6^3- 21*z2*z3^7*z4*z5*z6^3+
    11*z3^8*z4*z5*z6^3- 3*z2*z3^8*z6^4- 3*z3^9*z6^4+ 11*z2*z3^7*z4*z6^4-
    3*z3^8*z4*z6^4+ 11*z2*z3^7*z5*z6^4- 3*z3^8*z5*z6^4- 21*z2*z3^6*z4*z5*z6^4+
    11*z3^7*z4*z5*z6^4- 3*z2*z3^7*z6^5- 3*z3^8*z6^5+ 11*z2*z3^6*z4*z6^5-
    3*z3^7*z4*z6^5+ 11*z2*z3^6*z5*z6^5- 3*z3^7*z5*z6^5- 21*z2*z3^5*z4*z5*z6^5+
    11*z3^6*z4*z5*z6^5- 3*z2*z3^6*z6^6- 3*z3^7*z6^6+ 11*z2*z3^5*z4*z6^6-
    3*z3^6*z4*z6^6+ 11*z2*z3^5*z5*z6^6- 3*z3^6*z5*z6^6- 21*z2*z3^4*z4*z5*z6^6+
    11*z3^5*z4*z5*z6^6- 3*z2*z3^5*z6^7- 3*z3^6*z6^7+ 11*z2*z3^4*z4*z6^7-
    3*z3^5*z4*z6^7+ 11*z2*z3^4*z5*z6^7- 3*z3^5*z5*z6^7- 21*z2*z3^3*z4*z5*z6^7+
    11*z3^4*z4*z5*z6^7- 3*z2*z3^4*z6^8- 3*z3^5*z6^8+ 11*z2*z3^3*z4*z6^8-
    3*z3^4*z4*z6^8+ 11*z2*z3^3*z5*z6^8- 3*z3^4*z5*z6^8- 21*z2*z3^2*z4*z5*z6^8+
    11*z3^3*z4*z5*z6^8- 3*z2*z3^3*z6^9- 3*z3^4*z6^9+ 11*z2*z3^2*z4*z6^9-
    3*z3^3*z4*z6^9+ 11*z2*z3^2*z5*z6^9- 3*z3^3*z5*z6^9- 21*z2*z3*z4*z5*z6^9+
    11*z3^2*z4*z5*z6^9- 3*z2*z3^2*z6^10- 3*z3^3*z6^10+ 11*z2*z3*z4*z6^10-
    3*z3^2*z4*z6^10+ 11*z2*z3*z5*z6^10- 3*z3^2*z5*z6^10+ z2*z4*z5*z6^10+
    11*z3*z4*z5*z6^10- 3*z2*z3*z6^11- 3*z3^2*z6^11+ 10*z2*z4*z6^11-
    3*z3*z4*z6^11+ 10*z2*z5*z6^11- 3*z3*z5*z6^11+ 10*z4*z5*z6^11- 13*z2*z6^12-
    3*z3*z6^12- 13*z4*z6^12- 13*z5*z6^12+ 10*z6^13+ 10*z2*z3^11*z7- 13*z3^12*z7+
    z2*z3^10*z4*z7+ 10*z3^11*z4*z7+ z2*z3^10*z5*z7+ 10*z3^11*z5*z7-
    22*z2*z3^9*z4*z5*z7+ z3^10*z4*z5*z7+ 11*z2*z3^10*z6*z7- 3*z3^11*z6*z7-
    21*z2*z3^9*z4*z6*z7+ 11*z3^10*z4*z6*z7- 21*z2*z3^9*z5*z6*z7+
    11*z3^10*z5*z6*z7+ 33*z2*z3^8*z4*z5*z6*z7- 21*z3^9*z4*z5*z6*z7+
    11*z2*z3^9*z6^2*z7- 3*z3^10*z6^2*z7- 21*z2*z3^8*z4*z6^2*z7+
    11*z3^9*z4*z6^2*z7- 21*z2*z3^8*z5*z6^2*z7+ 11*z3^9*z5*z6^2*z7+
    33*z2*z3^7*z4*z5*z6^2*z7- 21*z3^8*z4*z5*z6^2*z7+ 11*z2*z3^8*z6^3*z7-
    3*z3^9*z6^3*z7- 21*z2*z3^7*z4*z6^3*z7+ 11*z3^8*z4*z6^3*z7-
    21*z2*z3^7*z5*z6^3*z7+ 11*z3^8*z5*z6^3*z7+ 33*z2*z3^6*z4*z5*z6^3*z7-
    21*z3^7*z4*z5*z6^3*z7+ 11*z2*z3^7*z6^4*z7- 3*z3^8*z6^4*z7-
    21*z2*z3^6*z4*z6^4*z7+ 11*z3^7*z4*z6^4*z7- 21*z2*z3^6*z5*z6^4*z7+
    11*z3^7*z5*z6^4*z7+ 33*z2*z3^5*z4*z5*z6^4*z7- 21*z3^6*z4*z5*z6^4*z7+
    11*z2*z3^6*z6^5*z7- 3*z3^7*z6^5*z7- 21*z2*z3^5*z4*z6^5*z7+
    11*z3^6*z4*z6^5*z7- 21*z2*z3^5*z5*z6^5*z7+ 11*z3^6*z5*z6^5*z7+
    33*z2*z3^4*z4*z5*z6^5*z7- 21*z3^5*z4*z5*z6^5*z7+ 11*z2*z3^5*z6^6*z7-
    3*z3^6*z6^6*z7- 21*z2*z3^4*z4*z6^6*z7+ 11*z3^5*z4*z6^6*z7-
    21*z2*z3^4*z5*z6^6*z7+ 11*z3^5*z5*z6^6*z7+ 33*z2*z3^3*z4*z5*z6^6*z7-
    21*z3^4*z4*z5*z6^6*z7+ 11*z2*z3^4*z6^7*z7- 3*z3^5*z6^7*z7-
    21*z2*z3^3*z4*z6^7*z7+ 11*z3^4*z4*z6^7*z7- 21*z2*z3^3*z5*z6^7*z7+
    11*z3^4*z5*z6^7*z7+ 33*z2*z3^2*z4*z5*z6^7*z7- 21*z3^3*z4*z5*z6^7*z7+
    11*z2*z3^3*z6^8*z7- 3*z3^4*z6^8*z7- 21*z2*z3^2*z4*z6^8*z7+
    11*z3^3*z4*z6^8*z7- 21*z2*z3^2*z5*z6^8*z7+ 11*z3^3*z5*z6^8*z7+
    33*z2*z3*z4*z5*z6^8*z7- 21*z3^2*z4*z5*z6^8*z7+ 11*z2*z3^2*z6^9*z7-
    3*z3^3*z6^9*z7- 21*z2*z3*z4*z6^9*z7+ 11*z3^2*z4*z6^9*z7-
    21*z2*z3*z5*z6^9*z7+ 11*z3^2*z5*z6^9*z7- 22*z2*z4*z5*z6^9*z7-
    21*z3*z4*z5*z6^9*z7+ 11*z2*z3*z6^10*z7- 3*z3^2*z6^10*z7+ z2*z4*z6^10*z7+
    11*z3*z4*z6^10*z7+ z2*z5*z6^10*z7+ 11*z3*z5*z6^10*z7+ z4*z5*z6^10*z7+
    10*z2*z6^11*z7- 3*z3*z6^11*z7+ 10*z4*z6^11*z7+ 10*z5*z6^11*z7- 13*z6^12*z7-
    12*z2*z3^10- 1107*z3^11+ 1121*z2*z3^9*z4- 12*z3^10*z4+ 1121*z2*z3^9*z5-
    12*z3^10*z5- 2231*z2*z3^8*z4*z5+ 1121*z3^9*z4*z5+ 1109*z2*z3^9*z6-
    1119*z3^10*z6- 1110*z2*z3^8*z4*z6+ 1109*z3^9*z4*z6- 1110*z2*z3^8*z5*z6+
    1109*z3^9*z5*z6+ 1132*z2*z3^7*z4*z5*z6- 1110*z3^8*z4*z5*z6+
    1109*z2*z3^8*z6^2- 1119*z3^9*z6^2- 1110*z2*z3^7*z4*z6^2+ 1109*z3^8*z4*z6^2-
    1110*z2*z3^7*z5*z6^2+ 1109*z3^8*z5*z6^2+ 1132*z2*z3^6*z4*z5*z6^2-
    1110*z3^7*z4*z5*z6^2+ 1109*z2*z3^7*z6^3- 1119*z3^8*z6^3-
    1110*z2*z3^6*z4*z6^3+ 1109*z3^7*z4*z6^3- 1110*z2*z3^6*z5*z6^3+
    1109*z3^7*z5*z6^3+ 1132*z2*z3^5*z4*z5*z6^3- 1110*z3^6*z4*z5*z6^3+
    1109*z2*z3^6*z6^4- 1119*z3^7*z6^4- 1110*z2*z3^5*z4*z6^4+ 1109*z3^6*z4*z6^4-
    1110*z2*z3^5*z5*z6^4+ 1109*z3^6*z5*z6^4+ 1132*z2*z3^4*z4*z5*z6^4-
    1110*z3^5*z4*z5*z6^4+ 1109*z2*z3^5*z6^5- 1119*z3^6*z6^5-
    1110*z2*z3^4*z4*z6^5+ 1109*z3^5*z4*z6^5- 1110*z2*z3^4*z5*z6^5+
    1109*z3^5*z5*z6^5+ 1132*z2*z3^3*z4*z5*z6^5- 1110*z3^4*z4*z5*z6^5+
    1109*z2*z3^4*z6^6- 1119*z3^5*z6^6- 1110*z2*z3^3*z4*z6^6+ 1109*z3^4*z4*z6^6-
    1110*z2*z3^3*z5*z6^6+ 1109*z3^4*z5*z6^6+ 1132*z2*z3^2*z4*z5*z6^6-
    1110*z3^3*z4*z5*z6^6+ 1109*z2*z3^3*z6^7- 1119*z3^4*z6^7-
    1110*z2*z3^2*z4*z6^7+ 1109*z3^3*z4*z6^7- 1110*z2*z3^2*z5*z6^7+
    1109*z3^3*z5*z6^7+ 1132*z2*z3*z4*z5*z6^7- 1110*z3^2*z4*z5*z6^7+
    1109*z2*z3^2*z6^8- 1119*z3^3*z6^8- 1110*z2*z3*z4*z6^8+ 1109*z3^2*z4*z6^8-
    1110*z2*z3*z5*z6^8+ 1109*z3^2*z5*z6^8- 2231*z2*z4*z5*z6^8-
    1110*z3*z4*z5*z6^8+ 1109*z2*z3*z6^9- 1119*z3^2*z6^9+ 1121*z2*z4*z6^9+
    1109*z3*z4*z6^9+ 1121*z2*z5*z6^9+ 1109*z3*z5*z6^9+ 1121*z4*z5*z6^9-
    12*z2*z6^10- 1119*z3*z6^10- 12*z4*z6^10- 12*z5*z6^10- 1107*z6^11+
    1121*z2*z3^9*z7- 12*z3^10*z7- 2231*z2*z3^8*z4*z7+ 1121*z3^9*z4*z7-
    2231*z2*z3^8*z5*z7+ 1121*z3^9*z5*z7+ 3363*z2*z3^7*z4*z5*z7-
    2231*z3^8*z4*z5*z7- 1110*z2*z3^8*z6*z7+ 1109*z3^9*z6*z7+
    1132*z2*z3^7*z4*z6*z7- 1110*z3^8*z4*z6*z7+ 1132*z2*z3^7*z5*z6*z7-
    1110*z3^8*z5*z6*z7- 1187*z2*z3^6*z4*z5*z6*z7+ 1132*z3^7*z4*z5*z6*z7-
    1110*z2*z3^7*z6^2*z7+ 1109*z3^8*z6^2*z7+ 1132*z2*z3^6*z4*z6^2*z7-
    1110*z3^7*z4*z6^2*z7+ 1132*z2*z3^6*z5*z6^2*z7- 1110*z3^7*z5*z6^2*z7-
    1187*z2*z3^5*z4*z5*z6^2*z7+ 1132*z3^6*z4*z5*z6^2*z7- 1110*z2*z3^6*z6^3*z7+
    1109*z3^7*z6^3*z7+ 1132*z2*z3^5*z4*z6^3*z7- 1110*z3^6*z4*z6^3*z7+
    1132*z2*z3^5*z5*z6^3*z7- 1110*z3^6*z5*z6^3*z7- 1187*z2*z3^4*z4*z5*z6^3*z7+
    1132*z3^5*z4*z5*z6^3*z7- 1110*z2*z3^5*z6^4*z7+ 1109*z3^6*z6^4*z7+
    1132*z2*z3^4*z4*z6^4*z7- 1110*z3^5*z4*z6^4*z7+ 1132*z2*z3^4*z5*z6^4*z7-
    1110*z3^5*z5*z6^4*z7- 1187*z2*z3^3*z4*z5*z6^4*z7+ 1132*z3^4*z4*z5*z6^4*z7-
    1110*z2*z3^4*z6^5*z7+ 1109*z3^5*z6^5*z7+ 1132*z2*z3^3*z4*z6^5*z7-
    1110*z3^4*z4*z6^5*z7+ 1132*z2*z3^3*z5*z6^5*z7- 1110*z3^4*z5*z6^5*z7-
    1187*z2*z3^2*z4*z5*z6^5*z7+ 1132*z3^3*z4*z5*z6^5*z7- 1110*z2*z3^3*z6^6*z7+
    1109*z3^4*z6^6*z7+ 1132*z2*z3^2*z4*z6^6*z7- 1110*z3^3*z4*z6^6*z7+
    1132*z2*z3^2*z5*z6^6*z7- 1110*z3^3*z5*z6^6*z7- 1187*z2*z3*z4*z5*z6^6*z7+
    1132*z3^2*z4*z5*z6^6*z7- 1110*z2*z3^2*z6^7*z7+ 1109*z3^3*z6^7*z7+
    1132*z2*z3*z4*z6^7*z7- 1110*z3^2*z4*z6^7*z7+ 1132*z2*z3*z5*z6^7*z7-
    1110*z3^2*z5*z6^7*z7+ 3363*z2*z4*z5*z6^7*z7+ 1132*z3*z4*z5*z6^7*z7-
    1110*z2*z3*z6^8*z7+ 1109*z3^2*z6^8*z7- 2231*z2*z4*z6^8*z7-
    1110*z3*z4*z6^8*z7- 2231*z2*z5*z6^8*z7- 1110*z3*z5*z6^8*z7-
    2231*z4*z5*z6^8*z7+ 1121*z2*z6^9*z7+ 1109*z3*z6^9*z7+ 1121*z4*z6^9*z7+
    1121*z5*z6^9*z7- 12*z6^10*z7- 3374*z2*z3^8+ 2264*z3^9+ 3363*z2*z3^7*z4-
    3374*z3^8*z4+ 3363*z2*z3^7*z5- 3374*z3^8*z5- 1121*z2*z3^6*z4*z5+
    3363*z3^7*z4*z5- 11*z2*z3^7*z6- 1110*z3^8*z6+ 2242*z2*z3^6*z4*z6-
    11*z3^7*z4*z6+ 2242*z2*z3^6*z5*z6- 11*z3^7*z5*z6+ 3396*z2*z3^5*z4*z5*z6+
    2242*z3^6*z4*z5*z6- 11*z2*z3^6*z6^2- 1110*z3^7*z6^2+ 2242*z2*z3^5*z4*z6^2-
    11*z3^6*z4*z6^2+ 2242*z2*z3^5*z5*z6^2- 11*z3^6*z5*z6^2+
    3396*z2*z3^4*z4*z5*z6^2+ 2242*z3^5*z4*z5*z6^2- 11*z2*z3^5*z6^3-
    1110*z3^6*z6^3+ 2242*z2*z3^4*z4*z6^3- 11*z3^5*z4*z6^3+ 2242*z2*z3^4*z5*z6^3-
    11*z3^5*z5*z6^3+ 3396*z2*z3^3*z4*z5*z6^3+ 2242*z3^4*z4*z5*z6^3-
    11*z2*z3^4*z6^4- 1110*z3^5*z6^4+ 2242*z2*z3^3*z4*z6^4- 11*z3^4*z4*z6^4+
    2242*z2*z3^3*z5*z6^4- 11*z3^4*z5*z6^4+ 3396*z2*z3^2*z4*z5*z6^4+
    2242*z3^3*z4*z5*z6^4- 11*z2*z3^3*z6^5- 1110*z3^4*z6^5+ 2242*z2*z3^2*z4*z6^5-
    11*z3^3*z4*z6^5+ 2242*z2*z3^2*z5*z6^5- 11*z3^3*z5*z6^5+
    3396*z2*z3*z4*z5*z6^5+ 2242*z3^2*z4*z5*z6^5- 11*z2*z3^2*z6^6-
    1110*z3^3*z6^6+ 2242*z2*z3*z4*z6^6- 11*z3^2*z4*z6^6+ 2242*z2*z3*z5*z6^6-
    11*z3^2*z5*z6^6- 1121*z2*z4*z5*z6^6+ 2242*z3*z4*z5*z6^6- 11*z2*z3*z6^7-
    1110*z3^2*z6^7+ 3363*z2*z4*z6^7- 11*z3*z4*z6^7+ 3363*z2*z5*z6^7-
    11*z3*z5*z6^7+ 3363*z4*z5*z6^7- 3374*z2*z6^8- 1110*z3*z6^8- 3374*z4*z6^8-
    3374*z5*z6^8+ 2264*z6^9+ 3363*z2*z3^7*z7- 3374*z3^8*z7- 1121*z2*z3^6*z4*z7+
    3363*z3^7*z4*z7- 1121*z2*z3^6*z5*z7+ 3363*z3^7*z5*z7- 4484*z2*z3^5*z4*z5*z7-
    1121*z3^6*z4*z5*z7+ 2242*z2*z3^6*z6*z7- 11*z3^7*z6*z7+
    3396*z2*z3^5*z4*z6*z7+ 2242*z3^6*z4*z6*z7+ 3396*z2*z3^5*z5*z6*z7+
    2242*z3^6*z5*z6*z7+ 1154*z2*z3^4*z4*z5*z6*z7+ 3396*z3^5*z4*z5*z6*z7+
    2242*z2*z3^5*z6^2*z7- 11*z3^6*z6^2*z7+ 3396*z2*z3^4*z4*z6^2*z7+
    2242*z3^5*z4*z6^2*z7+ 3396*z2*z3^4*z5*z6^2*z7+ 2242*z3^5*z5*z6^2*z7+
    1154*z2*z3^3*z4*z5*z6^2*z7+ 3396*z3^4*z4*z5*z6^2*z7+ 2242*z2*z3^4*z6^3*z7-
    11*z3^5*z6^3*z7+ 3396*z2*z3^3*z4*z6^3*z7+ 2242*z3^4*z4*z6^3*z7+
    3396*z2*z3^3*z5*z6^3*z7+ 2242*z3^4*z5*z6^3*z7+ 1154*z2*z3^2*z4*z5*z6^3*z7+
    3396*z3^3*z4*z5*z6^3*z7+ 2242*z2*z3^3*z6^4*z7- 11*z3^4*z6^4*z7+
    3396*z2*z3^2*z4*z6^4*z7+ 2242*z3^3*z4*z6^4*z7+ 3396*z2*z3^2*z5*z6^4*z7+
    2242*z3^3*z5*z6^4*z7+ 1154*z2*z3*z4*z5*z6^4*z7+ 3396*z3^2*z4*z5*z6^4*z7+
    2242*z2*z3^2*z6^5*z7- 11*z3^3*z6^5*z7+ 3396*z2*z3*z4*z6^5*z7+
    2242*z3^2*z4*z6^5*z7+ 3396*z2*z3*z5*z6^5*z7+ 2242*z3^2*z5*z6^5*z7-
    4484*z2*z4*z5*z6^5*z7+ 3396*z3*z4*z5*z6^5*z7+ 2242*z2*z3*z6^6*z7-
    11*z3^2*z6^6*z7- 1121*z2*z4*z6^6*z7+ 2242*z3*z4*z6^6*z7- 1121*z2*z5*z6^6*z7+
    2242*z3*z5*z6^6*z7- 1121*z4*z5*z6^6*z7+ 3363*z2*z6^7*z7- 11*z3*z6^7*z7+
    3363*z4*z6^7*z7+ 3363*z5*z6^7*z7- 3374*z6^8*z7+ 147*z2*z3^6+ 2604*z3^7+
    2740*z2*z3^5*z4+ 147*z3^6*z4+ 2740*z2*z3^5*z5+ 147*z3^6*z5+
    4495*z2*z3^4*z4*z5+ 2740*z3^5*z4*z5+ 2887*z2*z3^5*z6+ 2751*z3^6*z6-
    1766*z2*z3^4*z4*z6+ 2887*z3^5*z4*z6- 1766*z2*z3^4*z5*z6+ 2887*z3^5*z5*z6-
    2751*z2*z3^3*z4*z5*z6- 1766*z3^4*z4*z5*z6+ 2887*z2*z3^4*z6^2+
    2751*z3^5*z6^2- 1766*z2*z3^3*z4*z6^2+ 2887*z3^4*z4*z6^2-
    1766*z2*z3^3*z5*z6^2+ 2887*z3^4*z5*z6^2- 2751*z2*z3^2*z4*z5*z6^2-
    1766*z3^3*z4*z5*z6^2+ 2887*z2*z3^3*z6^3+ 2751*z3^4*z6^3-
    1766*z2*z3^2*z4*z6^3+ 2887*z3^3*z4*z6^3- 1766*z2*z3^2*z5*z6^3+
    2887*z3^3*z5*z6^3- 2751*z2*z3*z4*z5*z6^3- 1766*z3^2*z4*z5*z6^3+
    2887*z2*z3^2*z6^4+ 2751*z3^3*z6^4- 1766*z2*z3*z4*z6^4+ 2887*z3^2*z4*z6^4-
    1766*z2*z3*z5*z6^4+ 2887*z3^2*z5*z6^4+ 4495*z2*z4*z5*z6^4-
    1766*z3*z4*z5*z6^4+ 2887*z2*z3*z6^5+ 2751*z3^2*z6^5+ 2740*z2*z4*z6^5+
    2887*z3*z4*z6^5+ 2740*z2*z5*z6^5+ 2887*z3*z5*z6^5+ 2740*z4*z5*z6^5+
    147*z2*z6^6+ 2751*z3*z6^6+ 147*z4*z6^6+ 147*z5*z6^6+ 2604*z6^7+
    2740*z2*z3^5*z7+ 147*z3^6*z7+ 4495*z2*z3^4*z4*z7+ 2740*z3^5*z4*z7+
    4495*z2*z3^4*z5*z7+ 2740*z3^5*z5*z7+ 1755*z2*z3^3*z4*z5*z7+
    4495*z3^4*z4*z5*z7- 1766*z2*z3^4*z6*z7+ 2887*z3^5*z6*z7-
    2751*z2*z3^3*z4*z6*z7- 1766*z3^4*z4*z6*z7- 2751*z2*z3^3*z5*z6*z7-
    1766*z3^4*z5*z6*z7- 2887*z2*z3^2*z4*z5*z6*z7- 2751*z3^3*z4*z5*z6*z7-
    1766*z2*z3^3*z6^2*z7+ 2887*z3^4*z6^2*z7- 2751*z2*z3^2*z4*z6^2*z7-
    1766*z3^3*z4*z6^2*z7- 2751*z2*z3^2*z5*z6^2*z7- 1766*z3^3*z5*z6^2*z7-
    2887*z2*z3*z4*z5*z6^2*z7- 2751*z3^2*z4*z5*z6^2*z7- 1766*z2*z3^2*z6^3*z7+
    2887*z3^3*z6^3*z7- 2751*z2*z3*z4*z6^3*z7- 1766*z3^2*z4*z6^3*z7-
    2751*z2*z3*z5*z6^3*z7- 1766*z3^2*z5*z6^3*z7+ 1755*z2*z4*z5*z6^3*z7-
    2751*z3*z4*z5*z6^3*z7- 1766*z2*z3*z6^4*z7+ 2887*z3^2*z6^4*z7+
    4495*z2*z4*z6^4*z7- 1766*z3*z4*z6^4*z7+ 4495*z2*z5*z6^4*z7-
    1766*z3*z5*z6^4*z7+ 4495*z4*z5*z6^4*z7+ 2740*z2*z6^5*z7+ 2887*z3*z6^5*z7+
    2740*z4*z6^5*z7+ 2740*z5*z6^5*z7+ 147*z6^6*z7+ 318*z2*z3^4+ 2037*z3^5+
    3588*z2*z3^3*z4+ 318*z3^4*z4+ 3588*z2*z3^3*z5+ 318*z3^4*z5-
    2988*z2*z3^2*z4*z5+ 3588*z3^3*z4*z5+ 3906*z2*z3^3*z6+ 2355*z3^4*z6+
    600*z2*z3^2*z4*z6+ 3906*z3^3*z4*z6+ 600*z2*z3^2*z5*z6+ 3906*z3^3*z5*z6-
    2355*z2*z3*z4*z5*z6+ 600*z3^2*z4*z5*z6+ 3906*z2*z3^2*z6^2+ 2355*z3^3*z6^2+
    600*z2*z3*z4*z6^2+ 3906*z3^2*z4*z6^2+ 600*z2*z3*z5*z6^2+ 3906*z3^2*z5*z6^2-
    2988*z2*z4*z5*z6^2+ 600*z3*z4*z5*z6^2+ 3906*z2*z3*z6^3+ 2355*z3^2*z6^3+
    3588*z2*z4*z6^3+ 3906*z3*z4*z6^3+ 3588*z2*z5*z6^3+ 3906*z3*z5*z6^3+
    3588*z4*z5*z6^3+ 318*z2*z6^4+ 2355*z3*z6^4+ 318*z4*z6^4+ 318*z5*z6^4+
    2037*z6^5+ 3588*z2*z3^3*z7+ 318*z3^4*z7- 2988*z2*z3^2*z4*z7+
    3588*z3^3*z4*z7- 2988*z2*z3^2*z5*z7+ 3588*z3^3*z5*z7+ 633*z2*z3*z4*z5*z7-
    2988*z3^2*z4*z5*z7+ 600*z2*z3^2*z6*z7+ 3906*z3^3*z6*z7- 2355*z2*z3*z4*z6*z7+
    600*z3^2*z4*z6*z7- 2355*z2*z3*z5*z6*z7+ 600*z3^2*z5*z6*z7+
    633*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7+ 600*z2*z3*z6^2*z7+
    3906*z3^2*z6^2*z7- 2988*z2*z4*z6^2*z7+ 600*z3*z4*z6^2*z7-
    2988*z2*z5*z6^2*z7+ 600*z3*z5*z6^2*z7- 2988*z4*z5*z6^2*z7+ 3588*z2*z6^3*z7+
    3906*z3*z6^3*z7+ 3588*z4*z6^3*z7+ 3588*z5*z6^3*z7+ 318*z6^4*z7-
    1776*z2*z3^2+ 2166*z3^3- 2202*z2*z3*z4- 1776*z3^2*z4- 2202*z2*z3*z5-
    1776*z3^2*z5- 1068*z2*z4*z5- 2202*z3*z4*z5- 3978*z2*z3*z6+ 390*z3^2*z6-
    2202*z2*z4*z6- 3978*z3*z4*z6- 2202*z2*z5*z6- 3978*z3*z5*z6- 2202*z4*z5*z6-
    1776*z2*z6^2+ 390*z3*z6^2- 1776*z4*z6^2- 1776*z5*z6^2+ 2166*z6^3-
    2202*z2*z3*z7- 1776*z3^2*z7- 1068*z2*z4*z7- 2202*z3*z4*z7- 1068*z2*z5*z7-
    2202*z3*z5*z7- 1068*z4*z5*z7- 2202*z2*z6*z7- 3978*z3*z6*z7- 2202*z4*z6*z7-
    2202*z5*z6*z7- 1776*z6^2*z7+ 3538*z2- 1169*z3+ 3538*z4+ 3538*z5- 1169*z6+
    3538*z7",
    "- 4*z2*z3^14+ 2*z3^15+ 6*z2*z3^13*z4- 4*z3^14*z4+ 6*z2*z3^13*z5-
    4*z3^14*z5- 8*z2*z3^12*z4*z5+ 6*z3^13*z4*z5+ 6*z2*z3^13*z6- 4*z3^14*z6-
    8*z2*z3^12*z4*z6+ 6*z3^13*z4*z6- 8*z2*z3^12*z5*z6+ 6*z3^13*z5*z6+
    10*z2*z3^11*z4*z5*z6- 8*z3^12*z4*z5*z6+ 2*z2*z3^13*z7- 2*z3^14*z7-
    2*z2*z3^12*z4*z7+ 2*z3^13*z4*z7- 2*z2*z3^12*z5*z7+ 2*z3^13*z5*z7+
    2*z2*z3^11*z4*z5*z7- 2*z3^12*z4*z5*z7- 2*z2*z3^12*z6*z7+ 2*z3^13*z6*z7+
    2*z2*z3^11*z4*z6*z7- 2*z3^12*z4*z6*z7+ 2*z2*z3^11*z5*z6*z7-
    2*z3^12*z5*z6*z7- 2*z2*z3^10*z4*z5*z6*z7+ 2*z3^11*z4*z5*z6*z7+
    2*z2*z3^12*z7^2- 2*z3^13*z7^2- 2*z2*z3^11*z4*z7^2+ 2*z3^12*z4*z7^2-
    2*z2*z3^11*z5*z7^2+ 2*z3^12*z5*z7^2+ 2*z2*z3^10*z4*z5*z7^2-
    2*z3^11*z4*z5*z7^2- 2*z2*z3^11*z6*z7^2+ 2*z3^12*z6*z7^2+
    2*z2*z3^10*z4*z6*z7^2- 2*z3^11*z4*z6*z7^2+ 2*z2*z3^10*z5*z6*z7^2-
    2*z3^11*z5*z6*z7^2- 2*z2*z3^9*z4*z5*z6*z7^2+ 2*z3^10*z4*z5*z6*z7^2+
    2*z2*z3^11*z7^3- 2*z3^12*z7^3- 2*z2*z3^10*z4*z7^3+ 2*z3^11*z4*z7^3-
    2*z2*z3^10*z5*z7^3+ 2*z3^11*z5*z7^3+ 2*z2*z3^9*z4*z5*z7^3-
    2*z3^10*z4*z5*z7^3- 2*z2*z3^10*z6*z7^3+ 2*z3^11*z6*z7^3+
    2*z2*z3^9*z4*z6*z7^3- 2*z3^10*z4*z6*z7^3+ 2*z2*z3^9*z5*z6*z7^3-
    2*z3^10*z5*z6*z7^3- 2*z2*z3^8*z4*z5*z6*z7^3+ 2*z3^9*z4*z5*z6*z7^3+
    2*z2*z3^10*z7^4- 2*z3^11*z7^4- 2*z2*z3^9*z4*z7^4+ 2*z3^10*z4*z7^4-
    2*z2*z3^9*z5*z7^4+ 2*z3^10*z5*z7^4+ 2*z2*z3^8*z4*z5*z7^4- 2*z3^9*z4*z5*z7^4-
    2*z2*z3^9*z6*z7^4+ 2*z3^10*z6*z7^4+ 2*z2*z3^8*z4*z6*z7^4- 2*z3^9*z4*z6*z7^4+
    2*z2*z3^8*z5*z6*z7^4- 2*z3^9*z5*z6*z7^4- 2*z2*z3^7*z4*z5*z6*z7^4+
    2*z3^8*z4*z5*z6*z7^4+ 2*z2*z3^9*z7^5- 2*z3^10*z7^5- 2*z2*z3^8*z4*z7^5+
    2*z3^9*z4*z7^5- 2*z2*z3^8*z5*z7^5+ 2*z3^9*z5*z7^5+ 2*z2*z3^7*z4*z5*z7^5-
    2*z3^8*z4*z5*z7^5- 2*z2*z3^8*z6*z7^5+ 2*z3^9*z6*z7^5+ 2*z2*z3^7*z4*z6*z7^5-
    2*z3^8*z4*z6*z7^5+ 2*z2*z3^7*z5*z6*z7^5- 2*z3^8*z5*z6*z7^5-
    2*z2*z3^6*z4*z5*z6*z7^5+ 2*z3^7*z4*z5*z6*z7^5+ 2*z2*z3^8*z7^6- 2*z3^9*z7^6-
    2*z2*z3^7*z4*z7^6+ 2*z3^8*z4*z7^6- 2*z2*z3^7*z5*z7^6+ 2*z3^8*z5*z7^6+
    2*z2*z3^6*z4*z5*z7^6- 2*z3^7*z4*z5*z7^6- 2*z2*z3^7*z6*z7^6+ 2*z3^8*z6*z7^6+
    2*z2*z3^6*z4*z6*z7^6- 2*z3^7*z4*z6*z7^6+ 2*z2*z3^6*z5*z6*z7^6-
    2*z3^7*z5*z6*z7^6- 2*z2*z3^5*z4*z5*z6*z7^6+ 2*z3^6*z4*z5*z6*z7^6+
    2*z2*z3^7*z7^7- 2*z3^8*z7^7- 2*z2*z3^6*z4*z7^7+ 2*z3^7*z4*z7^7-
    2*z2*z3^6*z5*z7^7+ 2*z3^7*z5*z7^7+ 2*z2*z3^5*z4*z5*z7^7- 2*z3^6*z4*z5*z7^7-
    2*z2*z3^6*z6*z7^7+ 2*z3^7*z6*z7^7+ 2*z2*z3^5*z4*z6*z7^7- 2*z3^6*z4*z6*z7^7+
    2*z2*z3^5*z5*z6*z7^7- 2*z3^6*z5*z6*z7^7- 2*z2*z3^4*z4*z5*z6*z7^7+
    2*z3^5*z4*z5*z6*z7^7+ 2*z2*z3^6*z7^8- 2*z3^7*z7^8- 2*z2*z3^5*z4*z7^8+
    2*z3^6*z4*z7^8- 2*z2*z3^5*z5*z7^8+ 2*z3^6*z5*z7^8+ 2*z2*z3^4*z4*z5*z7^8-
    2*z3^5*z4*z5*z7^8- 2*z2*z3^5*z6*z7^8+ 2*z3^6*z6*z7^8+ 2*z2*z3^4*z4*z6*z7^8-
    2*z3^5*z4*z6*z7^8+ 2*z2*z3^4*z5*z6*z7^8- 2*z3^5*z5*z6*z7^8-
    2*z2*z3^3*z4*z5*z6*z7^8+ 2*z3^4*z4*z5*z6*z7^8+ 2*z2*z3^5*z7^9- 2*z3^6*z7^9-
    2*z2*z3^4*z4*z7^9+ 2*z3^5*z4*z7^9- 2*z2*z3^4*z5*z7^9+ 2*z3^5*z5*z7^9+
    2*z2*z3^3*z4*z5*z7^9- 2*z3^4*z4*z5*z7^9- 2*z2*z3^4*z6*z7^9+ 2*z3^5*z6*z7^9+
    2*z2*z3^3*z4*z6*z7^9- 2*z3^4*z4*z6*z7^9+ 2*z2*z3^3*z5*z6*z7^9-
    2*z3^4*z5*z6*z7^9- 2*z2*z3^2*z4*z5*z6*z7^9+ 2*z3^3*z4*z5*z6*z7^9+
    2*z2*z3^4*z7^10- 2*z3^5*z7^10- 2*z2*z3^3*z4*z7^10+ 2*z3^4*z4*z7^10-
    2*z2*z3^3*z5*z7^10+ 2*z3^4*z5*z7^10+ 2*z2*z3^2*z4*z5*z7^10-
    2*z3^3*z4*z5*z7^10- 2*z2*z3^3*z6*z7^10+ 2*z3^4*z6*z7^10+
    2*z2*z3^2*z4*z6*z7^10- 2*z3^3*z4*z6*z7^10+ 2*z2*z3^2*z5*z6*z7^10-
    2*z3^3*z5*z6*z7^10- 2*z2*z3*z4*z5*z6*z7^10+ 2*z3^2*z4*z5*z6*z7^10+
    2*z2*z3^3*z7^11- 2*z3^4*z7^11- 2*z2*z3^2*z4*z7^11+ 2*z3^3*z4*z7^11-
    2*z2*z3^2*z5*z7^11+ 2*z3^3*z5*z7^11+ 2*z2*z3*z4*z5*z7^11-
    2*z3^2*z4*z5*z7^11- 2*z2*z3^2*z6*z7^11+ 2*z3^3*z6*z7^11+
    2*z2*z3*z4*z6*z7^11- 2*z3^2*z4*z6*z7^11+ 2*z2*z3*z5*z6*z7^11-
    2*z3^2*z5*z6*z7^11+ 10*z2*z4*z5*z6*z7^11+ 2*z3*z4*z5*z6*z7^11+
    2*z2*z3^2*z7^12- 2*z3^3*z7^12- 2*z2*z3*z4*z7^12+ 2*z3^2*z4*z7^12-
    2*z2*z3*z5*z7^12+ 2*z3^2*z5*z7^12- 8*z2*z4*z5*z7^12- 2*z3*z4*z5*z7^12-
    2*z2*z3*z6*z7^12+ 2*z3^2*z6*z7^12- 8*z2*z4*z6*z7^12- 2*z3*z4*z6*z7^12-
    8*z2*z5*z6*z7^12- 2*z3*z5*z6*z7^12- 8*z4*z5*z6*z7^12+ 2*z2*z3*z7^13-
    2*z3^2*z7^13+ 6*z2*z4*z7^13+ 2*z3*z4*z7^13+ 6*z2*z5*z7^13+ 2*z3*z5*z7^13+
    6*z4*z5*z7^13+ 6*z2*z6*z7^13+ 2*z3*z6*z7^13+ 6*z4*z6*z7^13+ 6*z5*z6*z7^13-
    4*z2*z7^14- 2*z3*z7^14- 4*z4*z7^14- 4*z5*z7^14- 4*z6*z7^14+ 2*z7^15-
    13*z2*z3^12+ 10*z3^13+ 10*z2*z3^11*z4- 13*z3^12*z4+ 10*z2*z3^11*z5-
    13*z3^12*z5+ z2*z3^10*z4*z5+ 10*z3^11*z4*z5+ 10*z2*z3^11*z6- 13*z3^12*z6+
    z2*z3^10*z4*z6+ 10*z3^11*z4*z6+ z2*z3^10*z5*z6+ 10*z3^11*z5*z6-
    22*z2*z3^9*z4*z5*z6+ z3^10*z4*z5*z6- 3*z2*z3^11*z7- 3*z3^12*z7+
    11*z2*z3^10*z4*z7- 3*z3^11*z4*z7+ 11*z2*z3^10*z5*z7- 3*z3^11*z5*z7-
    21*z2*z3^9*z4*z5*z7+ 11*z3^10*z4*z5*z7+ 11*z2*z3^10*z6*z7- 3*z3^11*z6*z7-
    21*z2*z3^9*z4*z6*z7+ 11*z3^10*z4*z6*z7- 21*z2*z3^9*z5*z6*z7+
    11*z3^10*z5*z6*z7+ 33*z2*z3^8*z4*z5*z6*z7- 21*z3^9*z4*z5*z6*z7-
    3*z2*z3^10*z7^2- 3*z3^11*z7^2+ 11*z2*z3^9*z4*z7^2- 3*z3^10*z4*z7^2+
    11*z2*z3^9*z5*z7^2- 3*z3^10*z5*z7^2- 21*z2*z3^8*z4*z5*z7^2+
    11*z3^9*z4*z5*z7^2+ 11*z2*z3^9*z6*z7^2- 3*z3^10*z6*z7^2-
    21*z2*z3^8*z4*z6*z7^2+ 11*z3^9*z4*z6*z7^2- 21*z2*z3^8*z5*z6*z7^2+
    11*z3^9*z5*z6*z7^2+ 33*z2*z3^7*z4*z5*z6*z7^2- 21*z3^8*z4*z5*z6*z7^2-
    3*z2*z3^9*z7^3- 3*z3^10*z7^3+ 11*z2*z3^8*z4*z7^3- 3*z3^9*z4*z7^3+
    11*z2*z3^8*z5*z7^3- 3*z3^9*z5*z7^3- 21*z2*z3^7*z4*z5*z7^3+
    11*z3^8*z4*z5*z7^3+ 11*z2*z3^8*z6*z7^3- 3*z3^9*z6*z7^3-
    21*z2*z3^7*z4*z6*z7^3+ 11*z3^8*z4*z6*z7^3- 21*z2*z3^7*z5*z6*z7^3+
    11*z3^8*z5*z6*z7^3+ 33*z2*z3^6*z4*z5*z6*z7^3- 21*z3^7*z4*z5*z6*z7^3-
    3*z2*z3^8*z7^4- 3*z3^9*z7^4+ 11*z2*z3^7*z4*z7^4- 3*z3^8*z4*z7^4+
    11*z2*z3^7*z5*z7^4- 3*z3^8*z5*z7^4- 21*z2*z3^6*z4*z5*z7^4+
    11*z3^7*z4*z5*z7^4+ 11*z2*z3^7*z6*z7^4- 3*z3^8*z6*z7^4-
    21*z2*z3^6*z4*z6*z7^4+ 11*z3^7*z4*z6*z7^4- 21*z2*z3^6*z5*z6*z7^4+
    11*z3^7*z5*z6*z7^4+ 33*z2*z3^5*z4*z5*z6*z7^4- 21*z3^6*z4*z5*z6*z7^4-
    3*z2*z3^7*z7^5- 3*z3^8*z7^5+ 11*z2*z3^6*z4*z7^5- 3*z3^7*z4*z7^5+
    11*z2*z3^6*z5*z7^5- 3*z3^7*z5*z7^5- 21*z2*z3^5*z4*z5*z7^5+
    11*z3^6*z4*z5*z7^5+ 11*z2*z3^6*z6*z7^5- 3*z3^7*z6*z7^5-
    21*z2*z3^5*z4*z6*z7^5+ 11*z3^6*z4*z6*z7^5- 21*z2*z3^5*z5*z6*z7^5+
    11*z3^6*z5*z6*z7^5+ 33*z2*z3^4*z4*z5*z6*z7^5- 21*z3^5*z4*z5*z6*z7^5-
    3*z2*z3^6*z7^6- 3*z3^7*z7^6+ 11*z2*z3^5*z4*z7^6- 3*z3^6*z4*z7^6+
    11*z2*z3^5*z5*z7^6- 3*z3^6*z5*z7^6- 21*z2*z3^4*z4*z5*z7^6+
    11*z3^5*z4*z5*z7^6+ 11*z2*z3^5*z6*z7^6- 3*z3^6*z6*z7^6-
    21*z2*z3^4*z4*z6*z7^6+ 11*z3^5*z4*z6*z7^6- 21*z2*z3^4*z5*z6*z7^6+
    11*z3^5*z5*z6*z7^6+ 33*z2*z3^3*z4*z5*z6*z7^6- 21*z3^4*z4*z5*z6*z7^6-
    3*z2*z3^5*z7^7- 3*z3^6*z7^7+ 11*z2*z3^4*z4*z7^7- 3*z3^5*z4*z7^7+
    11*z2*z3^4*z5*z7^7- 3*z3^5*z5*z7^7- 21*z2*z3^3*z4*z5*z7^7+
    11*z3^4*z4*z5*z7^7+ 11*z2*z3^4*z6*z7^7- 3*z3^5*z6*z7^7-
    21*z2*z3^3*z4*z6*z7^7+ 11*z3^4*z4*z6*z7^7- 21*z2*z3^3*z5*z6*z7^7+
    11*z3^4*z5*z6*z7^7+ 33*z2*z3^2*z4*z5*z6*z7^7- 21*z3^3*z4*z5*z6*z7^7-
    3*z2*z3^4*z7^8- 3*z3^5*z7^8+ 11*z2*z3^3*z4*z7^8- 3*z3^4*z4*z7^8+
    11*z2*z3^3*z5*z7^8- 3*z3^4*z5*z7^8- 21*z2*z3^2*z4*z5*z7^8+
    11*z3^3*z4*z5*z7^8+ 11*z2*z3^3*z6*z7^8- 3*z3^4*z6*z7^8-
    21*z2*z3^2*z4*z6*z7^8+ 11*z3^3*z4*z6*z7^8- 21*z2*z3^2*z5*z6*z7^8+
    11*z3^3*z5*z6*z7^8+ 33*z2*z3*z4*z5*z6*z7^8- 21*z3^2*z4*z5*z6*z7^8-
    3*z2*z3^3*z7^9- 3*z3^4*z7^9+ 11*z2*z3^2*z4*z7^9- 3*z3^3*z4*z7^9+
    11*z2*z3^2*z5*z7^9- 3*z3^3*z5*z7^9- 21*z2*z3*z4*z5*z7^9+ 11*z3^2*z4*z5*z7^9+
    11*z2*z3^2*z6*z7^9- 3*z3^3*z6*z7^9- 21*z2*z3*z4*z6*z7^9+ 11*z3^2*z4*z6*z7^9-
    21*z2*z3*z5*z6*z7^9+ 11*z3^2*z5*z6*z7^9- 22*z2*z4*z5*z6*z7^9-
    21*z3*z4*z5*z6*z7^9- 3*z2*z3^2*z7^10- 3*z3^3*z7^10+ 11*z2*z3*z4*z7^10-
    3*z3^2*z4*z7^10+ 11*z2*z3*z5*z7^10- 3*z3^2*z5*z7^10+ z2*z4*z5*z7^10+
    11*z3*z4*z5*z7^10+ 11*z2*z3*z6*z7^10- 3*z3^2*z6*z7^10+ z2*z4*z6*z7^10+
    11*z3*z4*z6*z7^10+ z2*z5*z6*z7^10+ 11*z3*z5*z6*z7^10+ z4*z5*z6*z7^10-
    3*z2*z3*z7^11- 3*z3^2*z7^11+ 10*z2*z4*z7^11- 3*z3*z4*z7^11+ 10*z2*z5*z7^11-
    3*z3*z5*z7^11+ 10*z4*z5*z7^11+ 10*z2*z6*z7^11- 3*z3*z6*z7^11+
    10*z4*z6*z7^11+ 10*z5*z6*z7^11- 13*z2*z7^12- 3*z3*z7^12- 13*z4*z7^12-
    13*z5*z7^12- 13*z6*z7^12+ 10*z7^13- 12*z2*z3^10- 1107*z3^11+
    1121*z2*z3^9*z4- 12*z3^10*z4+ 1121*z2*z3^9*z5- 12*z3^10*z5-
    2231*z2*z3^8*z4*z5+ 1121*z3^9*z4*z5+ 1121*z2*z3^9*z6- 12*z3^10*z6-
    2231*z2*z3^8*z4*z6+ 1121*z3^9*z4*z6- 2231*z2*z3^8*z5*z6+ 1121*z3^9*z5*z6+
    3363*z2*z3^7*z4*z5*z6- 2231*z3^8*z4*z5*z6+ 1109*z2*z3^9*z7- 1119*z3^10*z7-
    1110*z2*z3^8*z4*z7+ 1109*z3^9*z4*z7- 1110*z2*z3^8*z5*z7+ 1109*z3^9*z5*z7+
    1132*z2*z3^7*z4*z5*z7- 1110*z3^8*z4*z5*z7- 1110*z2*z3^8*z6*z7+
    1109*z3^9*z6*z7+ 1132*z2*z3^7*z4*z6*z7- 1110*z3^8*z4*z6*z7+
    1132*z2*z3^7*z5*z6*z7- 1110*z3^8*z5*z6*z7- 1187*z2*z3^6*z4*z5*z6*z7+
    1132*z3^7*z4*z5*z6*z7+ 1109*z2*z3^8*z7^2- 1119*z3^9*z7^2-
    1110*z2*z3^7*z4*z7^2+ 1109*z3^8*z4*z7^2- 1110*z2*z3^7*z5*z7^2+
    1109*z3^8*z5*z7^2+ 1132*z2*z3^6*z4*z5*z7^2- 1110*z3^7*z4*z5*z7^2-
    1110*z2*z3^7*z6*z7^2+ 1109*z3^8*z6*z7^2+ 1132*z2*z3^6*z4*z6*z7^2-
    1110*z3^7*z4*z6*z7^2+ 1132*z2*z3^6*z5*z6*z7^2- 1110*z3^7*z5*z6*z7^2-
    1187*z2*z3^5*z4*z5*z6*z7^2+ 1132*z3^6*z4*z5*z6*z7^2+ 1109*z2*z3^7*z7^3-
    1119*z3^8*z7^3- 1110*z2*z3^6*z4*z7^3+ 1109*z3^7*z4*z7^3-
    1110*z2*z3^6*z5*z7^3+ 1109*z3^7*z5*z7^3+ 1132*z2*z3^5*z4*z5*z7^3-
    1110*z3^6*z4*z5*z7^3- 1110*z2*z3^6*z6*z7^3+ 1109*z3^7*z6*z7^3+
    1132*z2*z3^5*z4*z6*z7^3- 1110*z3^6*z4*z6*z7^3+ 1132*z2*z3^5*z5*z6*z7^3-
    1110*z3^6*z5*z6*z7^3- 1187*z2*z3^4*z4*z5*z6*z7^3+ 1132*z3^5*z4*z5*z6*z7^3+
    1109*z2*z3^6*z7^4- 1119*z3^7*z7^4- 1110*z2*z3^5*z4*z7^4+ 1109*z3^6*z4*z7^4-
    1110*z2*z3^5*z5*z7^4+ 1109*z3^6*z5*z7^4+ 1132*z2*z3^4*z4*z5*z7^4-
    1110*z3^5*z4*z5*z7^4- 1110*z2*z3^5*z6*z7^4+ 1109*z3^6*z6*z7^4+
    1132*z2*z3^4*z4*z6*z7^4- 1110*z3^5*z4*z6*z7^4+ 1132*z2*z3^4*z5*z6*z7^4-
    1110*z3^5*z5*z6*z7^4- 1187*z2*z3^3*z4*z5*z6*z7^4+ 1132*z3^4*z4*z5*z6*z7^4+
    1109*z2*z3^5*z7^5- 1119*z3^6*z7^5- 1110*z2*z3^4*z4*z7^5+ 1109*z3^5*z4*z7^5-
    1110*z2*z3^4*z5*z7^5+ 1109*z3^5*z5*z7^5+ 1132*z2*z3^3*z4*z5*z7^5-
    1110*z3^4*z4*z5*z7^5- 1110*z2*z3^4*z6*z7^5+ 1109*z3^5*z6*z7^5+
    1132*z2*z3^3*z4*z6*z7^5- 1110*z3^4*z4*z6*z7^5+ 1132*z2*z3^3*z5*z6*z7^5-
    1110*z3^4*z5*z6*z7^5- 1187*z2*z3^2*z4*z5*z6*z7^5+ 1132*z3^3*z4*z5*z6*z7^5+
    1109*z2*z3^4*z7^6- 1119*z3^5*z7^6- 1110*z2*z3^3*z4*z7^6+ 1109*z3^4*z4*z7^6-
    1110*z2*z3^3*z5*z7^6+ 1109*z3^4*z5*z7^6+ 1132*z2*z3^2*z4*z5*z7^6-
    1110*z3^3*z4*z5*z7^6- 1110*z2*z3^3*z6*z7^6+ 1109*z3^4*z6*z7^6+
    1132*z2*z3^2*z4*z6*z7^6- 1110*z3^3*z4*z6*z7^6+ 1132*z2*z3^2*z5*z6*z7^6-
    1110*z3^3*z5*z6*z7^6- 1187*z2*z3*z4*z5*z6*z7^6+ 1132*z3^2*z4*z5*z6*z7^6+
    1109*z2*z3^3*z7^7- 1119*z3^4*z7^7- 1110*z2*z3^2*z4*z7^7+ 1109*z3^3*z4*z7^7-
    1110*z2*z3^2*z5*z7^7+ 1109*z3^3*z5*z7^7+ 1132*z2*z3*z4*z5*z7^7-
    1110*z3^2*z4*z5*z7^7- 1110*z2*z3^2*z6*z7^7+ 1109*z3^3*z6*z7^7+
    1132*z2*z3*z4*z6*z7^7- 1110*z3^2*z4*z6*z7^7+ 1132*z2*z3*z5*z6*z7^7-
    1110*z3^2*z5*z6*z7^7+ 3363*z2*z4*z5*z6*z7^7+ 1132*z3*z4*z5*z6*z7^7+
    1109*z2*z3^2*z7^8- 1119*z3^3*z7^8- 1110*z2*z3*z4*z7^8+ 1109*z3^2*z4*z7^8-
    1110*z2*z3*z5*z7^8+ 1109*z3^2*z5*z7^8- 2231*z2*z4*z5*z7^8-
    1110*z3*z4*z5*z7^8- 1110*z2*z3*z6*z7^8+ 1109*z3^2*z6*z7^8-
    2231*z2*z4*z6*z7^8- 1110*z3*z4*z6*z7^8- 2231*z2*z5*z6*z7^8-
    1110*z3*z5*z6*z7^8- 2231*z4*z5*z6*z7^8+ 1109*z2*z3*z7^9- 1119*z3^2*z7^9+
    1121*z2*z4*z7^9+ 1109*z3*z4*z7^9+ 1121*z2*z5*z7^9+ 1109*z3*z5*z7^9+
    1121*z4*z5*z7^9+ 1121*z2*z6*z7^9+ 1109*z3*z6*z7^9+ 1121*z4*z6*z7^9+
    1121*z5*z6*z7^9- 12*z2*z7^10- 1119*z3*z7^10- 12*z4*z7^10- 12*z5*z7^10-
    12*z6*z7^10- 1107*z7^11- 3374*z2*z3^8+ 2264*z3^9+ 3363*z2*z3^7*z4-
    3374*z3^8*z4+ 3363*z2*z3^7*z5- 3374*z3^8*z5- 1121*z2*z3^6*z4*z5+
    3363*z3^7*z4*z5+ 3363*z2*z3^7*z6- 3374*z3^8*z6- 1121*z2*z3^6*z4*z6+
    3363*z3^7*z4*z6- 1121*z2*z3^6*z5*z6+ 3363*z3^7*z5*z6- 4484*z2*z3^5*z4*z5*z6-
    1121*z3^6*z4*z5*z6- 11*z2*z3^7*z7- 1110*z3^8*z7+ 2242*z2*z3^6*z4*z7-
    11*z3^7*z4*z7+ 2242*z2*z3^6*z5*z7- 11*z3^7*z5*z7+ 3396*z2*z3^5*z4*z5*z7+
    2242*z3^6*z4*z5*z7+ 2242*z2*z3^6*z6*z7- 11*z3^7*z6*z7+
    3396*z2*z3^5*z4*z6*z7+ 2242*z3^6*z4*z6*z7+ 3396*z2*z3^5*z5*z6*z7+
    2242*z3^6*z5*z6*z7+ 1154*z2*z3^4*z4*z5*z6*z7+ 3396*z3^5*z4*z5*z6*z7-
    11*z2*z3^6*z7^2- 1110*z3^7*z7^2+ 2242*z2*z3^5*z4*z7^2- 11*z3^6*z4*z7^2+
    2242*z2*z3^5*z5*z7^2- 11*z3^6*z5*z7^2+ 3396*z2*z3^4*z4*z5*z7^2+
    2242*z3^5*z4*z5*z7^2+ 2242*z2*z3^5*z6*z7^2- 11*z3^6*z6*z7^2+
    3396*z2*z3^4*z4*z6*z7^2+ 2242*z3^5*z4*z6*z7^2+ 3396*z2*z3^4*z5*z6*z7^2+
    2242*z3^5*z5*z6*z7^2+ 1154*z2*z3^3*z4*z5*z6*z7^2+ 3396*z3^4*z4*z5*z6*z7^2-
    11*z2*z3^5*z7^3- 1110*z3^6*z7^3+ 2242*z2*z3^4*z4*z7^3- 11*z3^5*z4*z7^3+
    2242*z2*z3^4*z5*z7^3- 11*z3^5*z5*z7^3+ 3396*z2*z3^3*z4*z5*z7^3+
    2242*z3^4*z4*z5*z7^3+ 2242*z2*z3^4*z6*z7^3- 11*z3^5*z6*z7^3+
    3396*z2*z3^3*z4*z6*z7^3+ 2242*z3^4*z4*z6*z7^3+ 3396*z2*z3^3*z5*z6*z7^3+
    2242*z3^4*z5*z6*z7^3+ 1154*z2*z3^2*z4*z5*z6*z7^3+ 3396*z3^3*z4*z5*z6*z7^3-
    11*z2*z3^4*z7^4- 1110*z3^5*z7^4+ 2242*z2*z3^3*z4*z7^4- 11*z3^4*z4*z7^4+
    2242*z2*z3^3*z5*z7^4- 11*z3^4*z5*z7^4+ 3396*z2*z3^2*z4*z5*z7^4+
    2242*z3^3*z4*z5*z7^4+ 2242*z2*z3^3*z6*z7^4- 11*z3^4*z6*z7^4+
    3396*z2*z3^2*z4*z6*z7^4+ 2242*z3^3*z4*z6*z7^4+ 3396*z2*z3^2*z5*z6*z7^4+
    2242*z3^3*z5*z6*z7^4+ 1154*z2*z3*z4*z5*z6*z7^4+ 3396*z3^2*z4*z5*z6*z7^4-
    11*z2*z3^3*z7^5- 1110*z3^4*z7^5+ 2242*z2*z3^2*z4*z7^5- 11*z3^3*z4*z7^5+
    2242*z2*z3^2*z5*z7^5- 11*z3^3*z5*z7^5+ 3396*z2*z3*z4*z5*z7^5+
    2242*z3^2*z4*z5*z7^5+ 2242*z2*z3^2*z6*z7^5- 11*z3^3*z6*z7^5+
    3396*z2*z3*z4*z6*z7^5+ 2242*z3^2*z4*z6*z7^5+ 3396*z2*z3*z5*z6*z7^5+
    2242*z3^2*z5*z6*z7^5- 4484*z2*z4*z5*z6*z7^5+ 3396*z3*z4*z5*z6*z7^5-
    11*z2*z3^2*z7^6- 1110*z3^3*z7^6+ 2242*z2*z3*z4*z7^6- 11*z3^2*z4*z7^6+
    2242*z2*z3*z5*z7^6- 11*z3^2*z5*z7^6- 1121*z2*z4*z5*z7^6+ 2242*z3*z4*z5*z7^6+
    2242*z2*z3*z6*z7^6- 11*z3^2*z6*z7^6- 1121*z2*z4*z6*z7^6+ 2242*z3*z4*z6*z7^6-
    1121*z2*z5*z6*z7^6+ 2242*z3*z5*z6*z7^6- 1121*z4*z5*z6*z7^6- 11*z2*z3*z7^7-
    1110*z3^2*z7^7+ 3363*z2*z4*z7^7- 11*z3*z4*z7^7+ 3363*z2*z5*z7^7-
    11*z3*z5*z7^7+ 3363*z4*z5*z7^7+ 3363*z2*z6*z7^7- 11*z3*z6*z7^7+
    3363*z4*z6*z7^7+ 3363*z5*z6*z7^7- 3374*z2*z7^8- 1110*z3*z7^8- 3374*z4*z7^8-
    3374*z5*z7^8- 3374*z6*z7^8+ 2264*z7^9+ 147*z2*z3^6+ 2604*z3^7+
    2740*z2*z3^5*z4+ 147*z3^6*z4+ 2740*z2*z3^5*z5+ 147*z3^6*z5+
    4495*z2*z3^4*z4*z5+ 2740*z3^5*z4*z5+ 2740*z2*z3^5*z6+ 147*z3^6*z6+
    4495*z2*z3^4*z4*z6+ 2740*z3^5*z4*z6+ 4495*z2*z3^4*z5*z6+ 2740*z3^5*z5*z6+
    1755*z2*z3^3*z4*z5*z6+ 4495*z3^4*z4*z5*z6+ 2887*z2*z3^5*z7+ 2751*z3^6*z7-
    1766*z2*z3^4*z4*z7+ 2887*z3^5*z4*z7- 1766*z2*z3^4*z5*z7+ 2887*z3^5*z5*z7-
    2751*z2*z3^3*z4*z5*z7- 1766*z3^4*z4*z5*z7- 1766*z2*z3^4*z6*z7+
    2887*z3^5*z6*z7- 2751*z2*z3^3*z4*z6*z7- 1766*z3^4*z4*z6*z7-
    2751*z2*z3^3*z5*z6*z7- 1766*z3^4*z5*z6*z7- 2887*z2*z3^2*z4*z5*z6*z7-
    2751*z3^3*z4*z5*z6*z7+ 2887*z2*z3^4*z7^2+ 2751*z3^5*z7^2-
    1766*z2*z3^3*z4*z7^2+ 2887*z3^4*z4*z7^2- 1766*z2*z3^3*z5*z7^2+
    2887*z3^4*z5*z7^2- 2751*z2*z3^2*z4*z5*z7^2- 1766*z3^3*z4*z5*z7^2-
    1766*z2*z3^3*z6*z7^2+ 2887*z3^4*z6*z7^2- 2751*z2*z3^2*z4*z6*z7^2-
    1766*z3^3*z4*z6*z7^2- 2751*z2*z3^2*z5*z6*z7^2- 1766*z3^3*z5*z6*z7^2-
    2887*z2*z3*z4*z5*z6*z7^2- 2751*z3^2*z4*z5*z6*z7^2+ 2887*z2*z3^3*z7^3+
    2751*z3^4*z7^3- 1766*z2*z3^2*z4*z7^3+ 2887*z3^3*z4*z7^3-
    1766*z2*z3^2*z5*z7^3+ 2887*z3^3*z5*z7^3- 2751*z2*z3*z4*z5*z7^3-
    1766*z3^2*z4*z5*z7^3- 1766*z2*z3^2*z6*z7^3+ 2887*z3^3*z6*z7^3-
    2751*z2*z3*z4*z6*z7^3- 1766*z3^2*z4*z6*z7^3- 2751*z2*z3*z5*z6*z7^3-
    1766*z3^2*z5*z6*z7^3+ 1755*z2*z4*z5*z6*z7^3- 2751*z3*z4*z5*z6*z7^3+
    2887*z2*z3^2*z7^4+ 2751*z3^3*z7^4- 1766*z2*z3*z4*z7^4+ 2887*z3^2*z4*z7^4-
    1766*z2*z3*z5*z7^4+ 2887*z3^2*z5*z7^4+ 4495*z2*z4*z5*z7^4-
    1766*z3*z4*z5*z7^4- 1766*z2*z3*z6*z7^4+ 2887*z3^2*z6*z7^4+
    4495*z2*z4*z6*z7^4- 1766*z3*z4*z6*z7^4+ 4495*z2*z5*z6*z7^4-
    1766*z3*z5*z6*z7^4+ 4495*z4*z5*z6*z7^4+ 2887*z2*z3*z7^5+ 2751*z3^2*z7^5+
    2740*z2*z4*z7^5+ 2887*z3*z4*z7^5+ 2740*z2*z5*z7^5+ 2887*z3*z5*z7^5+
    2740*z4*z5*z7^5+ 2740*z2*z6*z7^5+ 2887*z3*z6*z7^5+ 2740*z4*z6*z7^5+
    2740*z5*z6*z7^5+ 147*z2*z7^6+ 2751*z3*z7^6+ 147*z4*z7^6+ 147*z5*z7^6+
    147*z6*z7^6+ 2604*z7^7+ 318*z2*z3^4+ 2037*z3^5+ 3588*z2*z3^3*z4+
    318*z3^4*z4+ 3588*z2*z3^3*z5+ 318*z3^4*z5- 2988*z2*z3^2*z4*z5+
    3588*z3^3*z4*z5+ 3588*z2*z3^3*z6+ 318*z3^4*z6- 2988*z2*z3^2*z4*z6+
    3588*z3^3*z4*z6- 2988*z2*z3^2*z5*z6+ 3588*z3^3*z5*z6+ 633*z2*z3*z4*z5*z6-
    2988*z3^2*z4*z5*z6+ 3906*z2*z3^3*z7+ 2355*z3^4*z7+ 600*z2*z3^2*z4*z7+
    3906*z3^3*z4*z7+ 600*z2*z3^2*z5*z7+ 3906*z3^3*z5*z7- 2355*z2*z3*z4*z5*z7+
    600*z3^2*z4*z5*z7+ 600*z2*z3^2*z6*z7+ 3906*z3^3*z6*z7- 2355*z2*z3*z4*z6*z7+
    600*z3^2*z4*z6*z7- 2355*z2*z3*z5*z6*z7+ 600*z3^2*z5*z6*z7+
    633*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7+ 3906*z2*z3^2*z7^2+ 2355*z3^3*z7^2+
    600*z2*z3*z4*z7^2+ 3906*z3^2*z4*z7^2+ 600*z2*z3*z5*z7^2+ 3906*z3^2*z5*z7^2-
    2988*z2*z4*z5*z7^2+ 600*z3*z4*z5*z7^2+ 600*z2*z3*z6*z7^2+ 3906*z3^2*z6*z7^2-
    2988*z2*z4*z6*z7^2+ 600*z3*z4*z6*z7^2- 2988*z2*z5*z6*z7^2+
    600*z3*z5*z6*z7^2- 2988*z4*z5*z6*z7^2+ 3906*z2*z3*z7^3+ 2355*z3^2*z7^3+
    3588*z2*z4*z7^3+ 3906*z3*z4*z7^3+ 3588*z2*z5*z7^3+ 3906*z3*z5*z7^3+
    3588*z4*z5*z7^3+ 3588*z2*z6*z7^3+ 3906*z3*z6*z7^3+ 3588*z4*z6*z7^3+
    3588*z5*z6*z7^3+ 318*z2*z7^4+ 2355*z3*z7^4+ 318*z4*z7^4+ 318*z5*z7^4+
    318*z6*z7^4+ 2037*z7^5- 1776*z2*z3^2+ 2166*z3^3- 2202*z2*z3*z4-
    1776*z3^2*z4- 2202*z2*z3*z5- 1776*z3^2*z5- 1068*z2*z4*z5- 2202*z3*z4*z5-
    2202*z2*z3*z6- 1776*z3^2*z6- 1068*z2*z4*z6- 2202*z3*z4*z6- 1068*z2*z5*z6-
    2202*z3*z5*z6- 1068*z4*z5*z6- 3978*z2*z3*z7+ 390*z3^2*z7- 2202*z2*z4*z7-
    3978*z3*z4*z7- 2202*z2*z5*z7- 3978*z3*z5*z7- 2202*z4*z5*z7- 2202*z2*z6*z7-
    3978*z3*z6*z7- 2202*z4*z6*z7- 2202*z5*z6*z7- 1776*z2*z7^2+ 390*z3*z7^2-
    1776*z4*z7^2- 1776*z5*z7^2- 1776*z6*z7^2+ 2166*z7^3+ 3538*z2- 1169*z3+
    3538*z4+ 3538*z5+ 3538*z6- 1169*z7",
    "6*z2*z3*z4^13- 4*z2*z4^14- 4*z3*z4^14+ 2*z4^15- 2*z2*z3*z4^12*z5+
    2*z2*z4^13*z5+ 2*z3*z4^13*z5- 2*z4^14*z5- 2*z2*z3*z4^11*z5^2+
    2*z2*z4^12*z5^2+ 2*z3*z4^12*z5^2- 2*z4^13*z5^2- 2*z2*z3*z4^10*z5^3+
    2*z2*z4^11*z5^3+ 2*z3*z4^11*z5^3- 2*z4^12*z5^3- 2*z2*z3*z4^9*z5^4+
    2*z2*z4^10*z5^4+ 2*z3*z4^10*z5^4- 2*z4^11*z5^4- 2*z2*z3*z4^8*z5^5+
    2*z2*z4^9*z5^5+ 2*z3*z4^9*z5^5- 2*z4^10*z5^5- 2*z2*z3*z4^7*z5^6+
    2*z2*z4^8*z5^6+ 2*z3*z4^8*z5^6- 2*z4^9*z5^6- 2*z2*z3*z4^6*z5^7+
    2*z2*z4^7*z5^7+ 2*z3*z4^7*z5^7- 2*z4^8*z5^7- 2*z2*z3*z4^5*z5^8+
    2*z2*z4^6*z5^8+ 2*z3*z4^6*z5^8- 2*z4^7*z5^8- 2*z2*z3*z4^4*z5^9+
    2*z2*z4^5*z5^9+ 2*z3*z4^5*z5^9- 2*z4^6*z5^9- 2*z2*z3*z4^3*z5^10+
    2*z2*z4^4*z5^10+ 2*z3*z4^4*z5^10- 2*z4^5*z5^10- 2*z2*z3*z4^2*z5^11+
    2*z2*z4^3*z5^11+ 2*z3*z4^3*z5^11- 2*z4^4*z5^11- 2*z2*z3*z4*z5^12+
    2*z2*z4^2*z5^12+ 2*z3*z4^2*z5^12- 2*z4^3*z5^12+ 6*z2*z3*z5^13+
    2*z2*z4*z5^13+ 2*z3*z4*z5^13- 2*z4^2*z5^13- 4*z2*z5^14- 4*z3*z5^14-
    2*z4*z5^14+ 2*z5^15- 8*z2*z3*z4^12*z6+ 6*z2*z4^13*z6+ 6*z3*z4^13*z6-
    4*z4^14*z6+ 2*z2*z3*z4^11*z5*z6- 2*z2*z4^12*z5*z6- 2*z3*z4^12*z5*z6+
    2*z4^13*z5*z6+ 2*z2*z3*z4^10*z5^2*z6- 2*z2*z4^11*z5^2*z6-
    2*z3*z4^11*z5^2*z6+ 2*z4^12*z5^2*z6+ 2*z2*z3*z4^9*z5^3*z6-
    2*z2*z4^10*z5^3*z6- 2*z3*z4^10*z5^3*z6+ 2*z4^11*z5^3*z6+
    2*z2*z3*z4^8*z5^4*z6- 2*z2*z4^9*z5^4*z6- 2*z3*z4^9*z5^4*z6+ 2*z4^10*z5^4*z6+
    2*z2*z3*z4^7*z5^5*z6- 2*z2*z4^8*z5^5*z6- 2*z3*z4^8*z5^5*z6+ 2*z4^9*z5^5*z6+
    2*z2*z3*z4^6*z5^6*z6- 2*z2*z4^7*z5^6*z6- 2*z3*z4^7*z5^6*z6+ 2*z4^8*z5^6*z6+
    2*z2*z3*z4^5*z5^7*z6- 2*z2*z4^6*z5^7*z6- 2*z3*z4^6*z5^7*z6+ 2*z4^7*z5^7*z6+
    2*z2*z3*z4^4*z5^8*z6- 2*z2*z4^5*z5^8*z6- 2*z3*z4^5*z5^8*z6+ 2*z4^6*z5^8*z6+
    2*z2*z3*z4^3*z5^9*z6- 2*z2*z4^4*z5^9*z6- 2*z3*z4^4*z5^9*z6+ 2*z4^5*z5^9*z6+
    2*z2*z3*z4^2*z5^10*z6- 2*z2*z4^3*z5^10*z6- 2*z3*z4^3*z5^10*z6+
    2*z4^4*z5^10*z6+ 2*z2*z3*z4*z5^11*z6- 2*z2*z4^2*z5^11*z6-
    2*z3*z4^2*z5^11*z6+ 2*z4^3*z5^11*z6- 8*z2*z3*z5^12*z6- 2*z2*z4*z5^12*z6-
    2*z3*z4*z5^12*z6+ 2*z4^2*z5^12*z6+ 6*z2*z5^13*z6+ 6*z3*z5^13*z6+
    2*z4*z5^13*z6- 4*z5^14*z6- 8*z2*z3*z4^12*z7+ 6*z2*z4^13*z7+ 6*z3*z4^13*z7-
    4*z4^14*z7+ 2*z2*z3*z4^11*z5*z7- 2*z2*z4^12*z5*z7- 2*z3*z4^12*z5*z7+
    2*z4^13*z5*z7+ 2*z2*z3*z4^10*z5^2*z7- 2*z2*z4^11*z5^2*z7-
    2*z3*z4^11*z5^2*z7+ 2*z4^12*z5^2*z7+ 2*z2*z3*z4^9*z5^3*z7-
    2*z2*z4^10*z5^3*z7- 2*z3*z4^10*z5^3*z7+ 2*z4^11*z5^3*z7+
    2*z2*z3*z4^8*z5^4*z7- 2*z2*z4^9*z5^4*z7- 2*z3*z4^9*z5^4*z7+ 2*z4^10*z5^4*z7+
    2*z2*z3*z4^7*z5^5*z7- 2*z2*z4^8*z5^5*z7- 2*z3*z4^8*z5^5*z7+ 2*z4^9*z5^5*z7+
    2*z2*z3*z4^6*z5^6*z7- 2*z2*z4^7*z5^6*z7- 2*z3*z4^7*z5^6*z7+ 2*z4^8*z5^6*z7+
    2*z2*z3*z4^5*z5^7*z7- 2*z2*z4^6*z5^7*z7- 2*z3*z4^6*z5^7*z7+ 2*z4^7*z5^7*z7+
    2*z2*z3*z4^4*z5^8*z7- 2*z2*z4^5*z5^8*z7- 2*z3*z4^5*z5^8*z7+ 2*z4^6*z5^8*z7+
    2*z2*z3*z4^3*z5^9*z7- 2*z2*z4^4*z5^9*z7- 2*z3*z4^4*z5^9*z7+ 2*z4^5*z5^9*z7+
    2*z2*z3*z4^2*z5^10*z7- 2*z2*z4^3*z5^10*z7- 2*z3*z4^3*z5^10*z7+
    2*z4^4*z5^10*z7+ 2*z2*z3*z4*z5^11*z7- 2*z2*z4^2*z5^11*z7-
    2*z3*z4^2*z5^11*z7+ 2*z4^3*z5^11*z7- 8*z2*z3*z5^12*z7- 2*z2*z4*z5^12*z7-
    2*z3*z4*z5^12*z7+ 2*z4^2*z5^12*z7+ 6*z2*z5^13*z7+ 6*z3*z5^13*z7+
    2*z4*z5^13*z7- 4*z5^14*z7+ 10*z2*z3*z4^11*z6*z7- 8*z2*z4^12*z6*z7-
    8*z3*z4^12*z6*z7+ 6*z4^13*z6*z7- 2*z2*z3*z4^10*z5*z6*z7+
    2*z2*z4^11*z5*z6*z7+ 2*z3*z4^11*z5*z6*z7- 2*z4^12*z5*z6*z7-
    2*z2*z3*z4^9*z5^2*z6*z7+ 2*z2*z4^10*z5^2*z6*z7+ 2*z3*z4^10*z5^2*z6*z7-
    2*z4^11*z5^2*z6*z7- 2*z2*z3*z4^8*z5^3*z6*z7+ 2*z2*z4^9*z5^3*z6*z7+
    2*z3*z4^9*z5^3*z6*z7- 2*z4^10*z5^3*z6*z7- 2*z2*z3*z4^7*z5^4*z6*z7+
    2*z2*z4^8*z5^4*z6*z7+ 2*z3*z4^8*z5^4*z6*z7- 2*z4^9*z5^4*z6*z7-
    2*z2*z3*z4^6*z5^5*z6*z7+ 2*z2*z4^7*z5^5*z6*z7+ 2*z3*z4^7*z5^5*z6*z7-
    2*z4^8*z5^5*z6*z7- 2*z2*z3*z4^5*z5^6*z6*z7+ 2*z2*z4^6*z5^6*z6*z7+
    2*z3*z4^6*z5^6*z6*z7- 2*z4^7*z5^6*z6*z7- 2*z2*z3*z4^4*z5^7*z6*z7+
    2*z2*z4^5*z5^7*z6*z7+ 2*z3*z4^5*z5^7*z6*z7- 2*z4^6*z5^7*z6*z7-
    2*z2*z3*z4^3*z5^8*z6*z7+ 2*z2*z4^4*z5^8*z6*z7+ 2*z3*z4^4*z5^8*z6*z7-
    2*z4^5*z5^8*z6*z7- 2*z2*z3*z4^2*z5^9*z6*z7+ 2*z2*z4^3*z5^9*z6*z7+
    2*z3*z4^3*z5^9*z6*z7- 2*z4^4*z5^9*z6*z7- 2*z2*z3*z4*z5^10*z6*z7+
    2*z2*z4^2*z5^10*z6*z7+ 2*z3*z4^2*z5^10*z6*z7- 2*z4^3*z5^10*z6*z7+
    10*z2*z3*z5^11*z6*z7+ 2*z2*z4*z5^11*z6*z7+ 2*z3*z4*z5^11*z6*z7-
    2*z4^2*z5^11*z6*z7- 8*z2*z5^12*z6*z7- 8*z3*z5^12*z6*z7- 2*z4*z5^12*z6*z7+
    6*z5^13*z6*z7+ 10*z2*z3*z4^11- 13*z2*z4^12- 13*z3*z4^12+ 10*z4^13+
    11*z2*z3*z4^10*z5- 3*z2*z4^11*z5- 3*z3*z4^11*z5- 3*z4^12*z5+
    11*z2*z3*z4^9*z5^2- 3*z2*z4^10*z5^2- 3*z3*z4^10*z5^2- 3*z4^11*z5^2+
    11*z2*z3*z4^8*z5^3- 3*z2*z4^9*z5^3- 3*z3*z4^9*z5^3- 3*z4^10*z5^3+
    11*z2*z3*z4^7*z5^4- 3*z2*z4^8*z5^4- 3*z3*z4^8*z5^4- 3*z4^9*z5^4+
    11*z2*z3*z4^6*z5^5- 3*z2*z4^7*z5^5- 3*z3*z4^7*z5^5- 3*z4^8*z5^5+
    11*z2*z3*z4^5*z5^6- 3*z2*z4^6*z5^6- 3*z3*z4^6*z5^6- 3*z4^7*z5^6+
    11*z2*z3*z4^4*z5^7- 3*z2*z4^5*z5^7- 3*z3*z4^5*z5^7- 3*z4^6*z5^7+
    11*z2*z3*z4^3*z5^8- 3*z2*z4^4*z5^8- 3*z3*z4^4*z5^8- 3*z4^5*z5^8+
    11*z2*z3*z4^2*z5^9- 3*z2*z4^3*z5^9- 3*z3*z4^3*z5^9- 3*z4^4*z5^9+
    11*z2*z3*z4*z5^10- 3*z2*z4^2*z5^10- 3*z3*z4^2*z5^10- 3*z4^3*z5^10+
    10*z2*z3*z5^11- 3*z2*z4*z5^11- 3*z3*z4*z5^11- 3*z4^2*z5^11- 13*z2*z5^12-
    13*z3*z5^12- 3*z4*z5^12+ 10*z5^13+ z2*z3*z4^10*z6+ 10*z2*z4^11*z6+
    10*z3*z4^11*z6- 13*z4^12*z6- 21*z2*z3*z4^9*z5*z6+ 11*z2*z4^10*z5*z6+
    11*z3*z4^10*z5*z6- 3*z4^11*z5*z6- 21*z2*z3*z4^8*z5^2*z6+ 11*z2*z4^9*z5^2*z6+
    11*z3*z4^9*z5^2*z6- 3*z4^10*z5^2*z6- 21*z2*z3*z4^7*z5^3*z6+
    11*z2*z4^8*z5^3*z6+ 11*z3*z4^8*z5^3*z6- 3*z4^9*z5^3*z6-
    21*z2*z3*z4^6*z5^4*z6+ 11*z2*z4^7*z5^4*z6+ 11*z3*z4^7*z5^4*z6-
    3*z4^8*z5^4*z6- 21*z2*z3*z4^5*z5^5*z6+ 11*z2*z4^6*z5^5*z6+
    11*z3*z4^6*z5^5*z6- 3*z4^7*z5^5*z6- 21*z2*z3*z4^4*z5^6*z6+
    11*z2*z4^5*z5^6*z6+ 11*z3*z4^5*z5^6*z6- 3*z4^6*z5^6*z6-
    21*z2*z3*z4^3*z5^7*z6+ 11*z2*z4^4*z5^7*z6+ 11*z3*z4^4*z5^7*z6-
    3*z4^5*z5^7*z6- 21*z2*z3*z4^2*z5^8*z6+ 11*z2*z4^3*z5^8*z6+
    11*z3*z4^3*z5^8*z6- 3*z4^4*z5^8*z6- 21*z2*z3*z4*z5^9*z6+ 11*z2*z4^2*z5^9*z6+
    11*z3*z4^2*z5^9*z6- 3*z4^3*z5^9*z6+ z2*z3*z5^10*z6+ 11*z2*z4*z5^10*z6+
    11*z3*z4*z5^10*z6- 3*z4^2*z5^10*z6+ 10*z2*z5^11*z6+ 10*z3*z5^11*z6-
    3*z4*z5^11*z6- 13*z5^12*z6+ z2*z3*z4^10*z7+ 10*z2*z4^11*z7+ 10*z3*z4^11*z7-
    13*z4^12*z7- 21*z2*z3*z4^9*z5*z7+ 11*z2*z4^10*z5*z7+ 11*z3*z4^10*z5*z7-
    3*z4^11*z5*z7- 21*z2*z3*z4^8*z5^2*z7+ 11*z2*z4^9*z5^2*z7+
    11*z3*z4^9*z5^2*z7- 3*z4^10*z5^2*z7- 21*z2*z3*z4^7*z5^3*z7+
    11*z2*z4^8*z5^3*z7+ 11*z3*z4^8*z5^3*z7- 3*z4^9*z5^3*z7-
    21*z2*z3*z4^6*z5^4*z7+ 11*z2*z4^7*z5^4*z7+ 11*z3*z4^7*z5^4*z7-
    3*z4^8*z5^4*z7- 21*z2*z3*z4^5*z5^5*z7+ 11*z2*z4^6*z5^5*z7+
    11*z3*z4^6*z5^5*z7- 3*z4^7*z5^5*z7- 21*z2*z3*z4^4*z5^6*z7+
    11*z2*z4^5*z5^6*z7+ 11*z3*z4^5*z5^6*z7- 3*z4^6*z5^6*z7-
    21*z2*z3*z4^3*z5^7*z7+ 11*z2*z4^4*z5^7*z7+ 11*z3*z4^4*z5^7*z7-
    3*z4^5*z5^7*z7- 21*z2*z3*z4^2*z5^8*z7+ 11*z2*z4^3*z5^8*z7+
    11*z3*z4^3*z5^8*z7- 3*z4^4*z5^8*z7- 21*z2*z3*z4*z5^9*z7+ 11*z2*z4^2*z5^9*z7+
    11*z3*z4^2*z5^9*z7- 3*z4^3*z5^9*z7+ z2*z3*z5^10*z7+ 11*z2*z4*z5^10*z7+
    11*z3*z4*z5^10*z7- 3*z4^2*z5^10*z7+ 10*z2*z5^11*z7+ 10*z3*z5^11*z7-
    3*z4*z5^11*z7- 13*z5^12*z7- 22*z2*z3*z4^9*z6*z7+ z2*z4^10*z6*z7+
    z3*z4^10*z6*z7+ 10*z4^11*z6*z7+ 33*z2*z3*z4^8*z5*z6*z7- 21*z2*z4^9*z5*z6*z7-
    21*z3*z4^9*z5*z6*z7+ 11*z4^10*z5*z6*z7+ 33*z2*z3*z4^7*z5^2*z6*z7-
    21*z2*z4^8*z5^2*z6*z7- 21*z3*z4^8*z5^2*z6*z7+ 11*z4^9*z5^2*z6*z7+
    33*z2*z3*z4^6*z5^3*z6*z7- 21*z2*z4^7*z5^3*z6*z7- 21*z3*z4^7*z5^3*z6*z7+
    11*z4^8*z5^3*z6*z7+ 33*z2*z3*z4^5*z5^4*z6*z7- 21*z2*z4^6*z5^4*z6*z7-
    21*z3*z4^6*z5^4*z6*z7+ 11*z4^7*z5^4*z6*z7+ 33*z2*z3*z4^4*z5^5*z6*z7-
    21*z2*z4^5*z5^5*z6*z7- 21*z3*z4^5*z5^5*z6*z7+ 11*z4^6*z5^5*z6*z7+
    33*z2*z3*z4^3*z5^6*z6*z7- 21*z2*z4^4*z5^6*z6*z7- 21*z3*z4^4*z5^6*z6*z7+
    11*z4^5*z5^6*z6*z7+ 33*z2*z3*z4^2*z5^7*z6*z7- 21*z2*z4^3*z5^7*z6*z7-
    21*z3*z4^3*z5^7*z6*z7+ 11*z4^4*z5^7*z6*z7+ 33*z2*z3*z4*z5^8*z6*z7-
    21*z2*z4^2*z5^8*z6*z7- 21*z3*z4^2*z5^8*z6*z7+ 11*z4^3*z5^8*z6*z7-
    22*z2*z3*z5^9*z6*z7- 21*z2*z4*z5^9*z6*z7- 21*z3*z4*z5^9*z6*z7+
    11*z4^2*z5^9*z6*z7+ z2*z5^10*z6*z7+ z3*z5^10*z6*z7+ 11*z4*z5^10*z6*z7+
    10*z5^11*z6*z7+ 1121*z2*z3*z4^9- 12*z2*z4^10- 12*z3*z4^10- 1107*z4^11-
    1110*z2*z3*z4^8*z5+ 1109*z2*z4^9*z5+ 1109*z3*z4^9*z5- 1119*z4^10*z5-
    1110*z2*z3*z4^7*z5^2+ 1109*z2*z4^8*z5^2+ 1109*z3*z4^8*z5^2- 1119*z4^9*z5^2-
    1110*z2*z3*z4^6*z5^3+ 1109*z2*z4^7*z5^3+ 1109*z3*z4^7*z5^3- 1119*z4^8*z5^3-
    1110*z2*z3*z4^5*z5^4+ 1109*z2*z4^6*z5^4+ 1109*z3*z4^6*z5^4- 1119*z4^7*z5^4-
    1110*z2*z3*z4^4*z5^5+ 1109*z2*z4^5*z5^5+ 1109*z3*z4^5*z5^5- 1119*z4^6*z5^5-
    1110*z2*z3*z4^3*z5^6+ 1109*z2*z4^4*z5^6+ 1109*z3*z4^4*z5^6- 1119*z4^5*z5^6-
    1110*z2*z3*z4^2*z5^7+ 1109*z2*z4^3*z5^7+ 1109*z3*z4^3*z5^7- 1119*z4^4*z5^7-
    1110*z2*z3*z4*z5^8+ 1109*z2*z4^2*z5^8+ 1109*z3*z4^2*z5^8- 1119*z4^3*z5^8+
    1121*z2*z3*z5^9+ 1109*z2*z4*z5^9+ 1109*z3*z4*z5^9- 1119*z4^2*z5^9-
    12*z2*z5^10- 12*z3*z5^10- 1119*z4*z5^10- 1107*z5^11- 2231*z2*z3*z4^8*z6+
    1121*z2*z4^9*z6+ 1121*z3*z4^9*z6- 12*z4^10*z6+ 1132*z2*z3*z4^7*z5*z6-
    1110*z2*z4^8*z5*z6- 1110*z3*z4^8*z5*z6+ 1109*z4^9*z5*z6+
    1132*z2*z3*z4^6*z5^2*z6- 1110*z2*z4^7*z5^2*z6- 1110*z3*z4^7*z5^2*z6+
    1109*z4^8*z5^2*z6+ 1132*z2*z3*z4^5*z5^3*z6- 1110*z2*z4^6*z5^3*z6-
    1110*z3*z4^6*z5^3*z6+ 1109*z4^7*z5^3*z6+ 1132*z2*z3*z4^4*z5^4*z6-
    1110*z2*z4^5*z5^4*z6- 1110*z3*z4^5*z5^4*z6+ 1109*z4^6*z5^4*z6+
    1132*z2*z3*z4^3*z5^5*z6- 1110*z2*z4^4*z5^5*z6- 1110*z3*z4^4*z5^5*z6+
    1109*z4^5*z5^5*z6+ 1132*z2*z3*z4^2*z5^6*z6- 1110*z2*z4^3*z5^6*z6-
    1110*z3*z4^3*z5^6*z6+ 1109*z4^4*z5^6*z6+ 1132*z2*z3*z4*z5^7*z6-
    1110*z2*z4^2*z5^7*z6- 1110*z3*z4^2*z5^7*z6+ 1109*z4^3*z5^7*z6-
    2231*z2*z3*z5^8*z6- 1110*z2*z4*z5^8*z6- 1110*z3*z4*z5^8*z6+
    1109*z4^2*z5^8*z6+ 1121*z2*z5^9*z6+ 1121*z3*z5^9*z6+ 1109*z4*z5^9*z6-
    12*z5^10*z6- 2231*z2*z3*z4^8*z7+ 1121*z2*z4^9*z7+ 1121*z3*z4^9*z7-
    12*z4^10*z7+ 1132*z2*z3*z4^7*z5*z7- 1110*z2*z4^8*z5*z7- 1110*z3*z4^8*z5*z7+
    1109*z4^9*z5*z7+ 1132*z2*z3*z4^6*z5^2*z7- 1110*z2*z4^7*z5^2*z7-
    1110*z3*z4^7*z5^2*z7+ 1109*z4^8*z5^2*z7+ 1132*z2*z3*z4^5*z5^3*z7-
    1110*z2*z4^6*z5^3*z7- 1110*z3*z4^6*z5^3*z7+ 1109*z4^7*z5^3*z7+
    1132*z2*z3*z4^4*z5^4*z7- 1110*z2*z4^5*z5^4*z7- 1110*z3*z4^5*z5^4*z7+
    1109*z4^6*z5^4*z7+ 1132*z2*z3*z4^3*z5^5*z7- 1110*z2*z4^4*z5^5*z7-
    1110*z3*z4^4*z5^5*z7+ 1109*z4^5*z5^5*z7+ 1132*z2*z3*z4^2*z5^6*z7-
    1110*z2*z4^3*z5^6*z7- 1110*z3*z4^3*z5^6*z7+ 1109*z4^4*z5^6*z7+
    1132*z2*z3*z4*z5^7*z7- 1110*z2*z4^2*z5^7*z7- 1110*z3*z4^2*z5^7*z7+
    1109*z4^3*z5^7*z7- 2231*z2*z3*z5^8*z7- 1110*z2*z4*z5^8*z7-
    1110*z3*z4*z5^8*z7+ 1109*z4^2*z5^8*z7+ 1121*z2*z5^9*z7+ 1121*z3*z5^9*z7+
    1109*z4*z5^9*z7- 12*z5^10*z7+ 3363*z2*z3*z4^7*z6*z7- 2231*z2*z4^8*z6*z7-
    2231*z3*z4^8*z6*z7+ 1121*z4^9*z6*z7- 1187*z2*z3*z4^6*z5*z6*z7+
    1132*z2*z4^7*z5*z6*z7+ 1132*z3*z4^7*z5*z6*z7- 1110*z4^8*z5*z6*z7-
    1187*z2*z3*z4^5*z5^2*z6*z7+ 1132*z2*z4^6*z5^2*z6*z7+
    1132*z3*z4^6*z5^2*z6*z7- 1110*z4^7*z5^2*z6*z7- 1187*z2*z3*z4^4*z5^3*z6*z7+
    1132*z2*z4^5*z5^3*z6*z7+ 1132*z3*z4^5*z5^3*z6*z7- 1110*z4^6*z5^3*z6*z7-
    1187*z2*z3*z4^3*z5^4*z6*z7+ 1132*z2*z4^4*z5^4*z6*z7+
    1132*z3*z4^4*z5^4*z6*z7- 1110*z4^5*z5^4*z6*z7- 1187*z2*z3*z4^2*z5^5*z6*z7+
    1132*z2*z4^3*z5^5*z6*z7+ 1132*z3*z4^3*z5^5*z6*z7- 1110*z4^4*z5^5*z6*z7-
    1187*z2*z3*z4*z5^6*z6*z7+ 1132*z2*z4^2*z5^6*z6*z7+ 1132*z3*z4^2*z5^6*z6*z7-
    1110*z4^3*z5^6*z6*z7+ 3363*z2*z3*z5^7*z6*z7+ 1132*z2*z4*z5^7*z6*z7+
    1132*z3*z4*z5^7*z6*z7- 1110*z4^2*z5^7*z6*z7- 2231*z2*z5^8*z6*z7-
    2231*z3*z5^8*z6*z7- 1110*z4*z5^8*z6*z7+ 1121*z5^9*z6*z7+ 3363*z2*z3*z4^7-
    3374*z2*z4^8- 3374*z3*z4^8+ 2264*z4^9+ 2242*z2*z3*z4^6*z5- 11*z2*z4^7*z5-
    11*z3*z4^7*z5- 1110*z4^8*z5+ 2242*z2*z3*z4^5*z5^2- 11*z2*z4^6*z5^2-
    11*z3*z4^6*z5^2- 1110*z4^7*z5^2+ 2242*z2*z3*z4^4*z5^3- 11*z2*z4^5*z5^3-
    11*z3*z4^5*z5^3- 1110*z4^6*z5^3+ 2242*z2*z3*z4^3*z5^4- 11*z2*z4^4*z5^4-
    11*z3*z4^4*z5^4- 1110*z4^5*z5^4+ 2242*z2*z3*z4^2*z5^5- 11*z2*z4^3*z5^5-
    11*z3*z4^3*z5^5- 1110*z4^4*z5^5+ 2242*z2*z3*z4*z5^6- 11*z2*z4^2*z5^6-
    11*z3*z4^2*z5^6- 1110*z4^3*z5^6+ 3363*z2*z3*z5^7- 11*z2*z4*z5^7-
    11*z3*z4*z5^7- 1110*z4^2*z5^7- 3374*z2*z5^8- 3374*z3*z5^8- 1110*z4*z5^8+
    2264*z5^9- 1121*z2*z3*z4^6*z6+ 3363*z2*z4^7*z6+ 3363*z3*z4^7*z6-
    3374*z4^8*z6+ 3396*z2*z3*z4^5*z5*z6+ 2242*z2*z4^6*z5*z6+ 2242*z3*z4^6*z5*z6-
    11*z4^7*z5*z6+ 3396*z2*z3*z4^4*z5^2*z6+ 2242*z2*z4^5*z5^2*z6+
    2242*z3*z4^5*z5^2*z6- 11*z4^6*z5^2*z6+ 3396*z2*z3*z4^3*z5^3*z6+
    2242*z2*z4^4*z5^3*z6+ 2242*z3*z4^4*z5^3*z6- 11*z4^5*z5^3*z6+
    3396*z2*z3*z4^2*z5^4*z6+ 2242*z2*z4^3*z5^4*z6+ 2242*z3*z4^3*z5^4*z6-
    11*z4^4*z5^4*z6+ 3396*z2*z3*z4*z5^5*z6+ 2242*z2*z4^2*z5^5*z6+
    2242*z3*z4^2*z5^5*z6- 11*z4^3*z5^5*z6- 1121*z2*z3*z5^6*z6+
    2242*z2*z4*z5^6*z6+ 2242*z3*z4*z5^6*z6- 11*z4^2*z5^6*z6+ 3363*z2*z5^7*z6+
    3363*z3*z5^7*z6- 11*z4*z5^7*z6- 3374*z5^8*z6- 1121*z2*z3*z4^6*z7+
    3363*z2*z4^7*z7+ 3363*z3*z4^7*z7- 3374*z4^8*z7+ 3396*z2*z3*z4^5*z5*z7+
    2242*z2*z4^6*z5*z7+ 2242*z3*z4^6*z5*z7- 11*z4^7*z5*z7+
    3396*z2*z3*z4^4*z5^2*z7+ 2242*z2*z4^5*z5^2*z7+ 2242*z3*z4^5*z5^2*z7-
    11*z4^6*z5^2*z7+ 3396*z2*z3*z4^3*z5^3*z7+ 2242*z2*z4^4*z5^3*z7+
    2242*z3*z4^4*z5^3*z7- 11*z4^5*z5^3*z7+ 3396*z2*z3*z4^2*z5^4*z7+
    2242*z2*z4^3*z5^4*z7+ 2242*z3*z4^3*z5^4*z7- 11*z4^4*z5^4*z7+
    3396*z2*z3*z4*z5^5*z7+ 2242*z2*z4^2*z5^5*z7+ 2242*z3*z4^2*z5^5*z7-
    11*z4^3*z5^5*z7- 1121*z2*z3*z5^6*z7+ 2242*z2*z4*z5^6*z7+ 2242*z3*z4*z5^6*z7-
    11*z4^2*z5^6*z7+ 3363*z2*z5^7*z7+ 3363*z3*z5^7*z7- 11*z4*z5^7*z7-
    3374*z5^8*z7- 4484*z2*z3*z4^5*z6*z7- 1121*z2*z4^6*z6*z7- 1121*z3*z4^6*z6*z7+
    3363*z4^7*z6*z7+ 1154*z2*z3*z4^4*z5*z6*z7+ 3396*z2*z4^5*z5*z6*z7+
    3396*z3*z4^5*z5*z6*z7+ 2242*z4^6*z5*z6*z7+ 1154*z2*z3*z4^3*z5^2*z6*z7+
    3396*z2*z4^4*z5^2*z6*z7+ 3396*z3*z4^4*z5^2*z6*z7+ 2242*z4^5*z5^2*z6*z7+
    1154*z2*z3*z4^2*z5^3*z6*z7+ 3396*z2*z4^3*z5^3*z6*z7+
    3396*z3*z4^3*z5^3*z6*z7+ 2242*z4^4*z5^3*z6*z7+ 1154*z2*z3*z4*z5^4*z6*z7+
    3396*z2*z4^2*z5^4*z6*z7+ 3396*z3*z4^2*z5^4*z6*z7+ 2242*z4^3*z5^4*z6*z7-
    4484*z2*z3*z5^5*z6*z7+ 3396*z2*z4*z5^5*z6*z7+ 3396*z3*z4*z5^5*z6*z7+
    2242*z4^2*z5^5*z6*z7- 1121*z2*z5^6*z6*z7- 1121*z3*z5^6*z6*z7+
    2242*z4*z5^6*z6*z7+ 3363*z5^7*z6*z7+ 2740*z2*z3*z4^5+ 147*z2*z4^6+
    147*z3*z4^6+ 2604*z4^7- 1766*z2*z3*z4^4*z5+ 2887*z2*z4^5*z5+
    2887*z3*z4^5*z5+ 2751*z4^6*z5- 1766*z2*z3*z4^3*z5^2+ 2887*z2*z4^4*z5^2+
    2887*z3*z4^4*z5^2+ 2751*z4^5*z5^2- 1766*z2*z3*z4^2*z5^3+ 2887*z2*z4^3*z5^3+
    2887*z3*z4^3*z5^3+ 2751*z4^4*z5^3- 1766*z2*z3*z4*z5^4+ 2887*z2*z4^2*z5^4+
    2887*z3*z4^2*z5^4+ 2751*z4^3*z5^4+ 2740*z2*z3*z5^5+ 2887*z2*z4*z5^5+
    2887*z3*z4*z5^5+ 2751*z4^2*z5^5+ 147*z2*z5^6+ 147*z3*z5^6+ 2751*z4*z5^6+
    2604*z5^7+ 4495*z2*z3*z4^4*z6+ 2740*z2*z4^5*z6+ 2740*z3*z4^5*z6+
    147*z4^6*z6- 2751*z2*z3*z4^3*z5*z6- 1766*z2*z4^4*z5*z6- 1766*z3*z4^4*z5*z6+
    2887*z4^5*z5*z6- 2751*z2*z3*z4^2*z5^2*z6- 1766*z2*z4^3*z5^2*z6-
    1766*z3*z4^3*z5^2*z6+ 2887*z4^4*z5^2*z6- 2751*z2*z3*z4*z5^3*z6-
    1766*z2*z4^2*z5^3*z6- 1766*z3*z4^2*z5^3*z6+ 2887*z4^3*z5^3*z6+
    4495*z2*z3*z5^4*z6- 1766*z2*z4*z5^4*z6- 1766*z3*z4*z5^4*z6+
    2887*z4^2*z5^4*z6+ 2740*z2*z5^5*z6+ 2740*z3*z5^5*z6+ 2887*z4*z5^5*z6+
    147*z5^6*z6+ 4495*z2*z3*z4^4*z7+ 2740*z2*z4^5*z7+ 2740*z3*z4^5*z7+
    147*z4^6*z7- 2751*z2*z3*z4^3*z5*z7- 1766*z2*z4^4*z5*z7- 1766*z3*z4^4*z5*z7+
    2887*z4^5*z5*z7- 2751*z2*z3*z4^2*z5^2*z7- 1766*z2*z4^3*z5^2*z7-
    1766*z3*z4^3*z5^2*z7+ 2887*z4^4*z5^2*z7- 2751*z2*z3*z4*z5^3*z7-
    1766*z2*z4^2*z5^3*z7- 1766*z3*z4^2*z5^3*z7+ 2887*z4^3*z5^3*z7+
    4495*z2*z3*z5^4*z7- 1766*z2*z4*z5^4*z7- 1766*z3*z4*z5^4*z7+
    2887*z4^2*z5^4*z7+ 2740*z2*z5^5*z7+ 2740*z3*z5^5*z7+ 2887*z4*z5^5*z7+
    147*z5^6*z7+ 1755*z2*z3*z4^3*z6*z7+ 4495*z2*z4^4*z6*z7+ 4495*z3*z4^4*z6*z7+
    2740*z4^5*z6*z7- 2887*z2*z3*z4^2*z5*z6*z7- 2751*z2*z4^3*z5*z6*z7-
    2751*z3*z4^3*z5*z6*z7- 1766*z4^4*z5*z6*z7- 2887*z2*z3*z4*z5^2*z6*z7-
    2751*z2*z4^2*z5^2*z6*z7- 2751*z3*z4^2*z5^2*z6*z7- 1766*z4^3*z5^2*z6*z7+
    1755*z2*z3*z5^3*z6*z7- 2751*z2*z4*z5^3*z6*z7- 2751*z3*z4*z5^3*z6*z7-
    1766*z4^2*z5^3*z6*z7+ 4495*z2*z5^4*z6*z7+ 4495*z3*z5^4*z6*z7-
    1766*z4*z5^4*z6*z7+ 2740*z5^5*z6*z7+ 3588*z2*z3*z4^3+ 318*z2*z4^4+
    318*z3*z4^4+ 2037*z4^5+ 600*z2*z3*z4^2*z5+ 3906*z2*z4^3*z5+ 3906*z3*z4^3*z5+
    2355*z4^4*z5+ 600*z2*z3*z4*z5^2+ 3906*z2*z4^2*z5^2+ 3906*z3*z4^2*z5^2+
    2355*z4^3*z5^2+ 3588*z2*z3*z5^3+ 3906*z2*z4*z5^3+ 3906*z3*z4*z5^3+
    2355*z4^2*z5^3+ 318*z2*z5^4+ 318*z3*z5^4+ 2355*z4*z5^4+ 2037*z5^5-
    2988*z2*z3*z4^2*z6+ 3588*z2*z4^3*z6+ 3588*z3*z4^3*z6+ 318*z4^4*z6-
    2355*z2*z3*z4*z5*z6+ 600*z2*z4^2*z5*z6+ 600*z3*z4^2*z5*z6+ 3906*z4^3*z5*z6-
    2988*z2*z3*z5^2*z6+ 600*z2*z4*z5^2*z6+ 600*z3*z4*z5^2*z6+ 3906*z4^2*z5^2*z6+
    3588*z2*z5^3*z6+ 3588*z3*z5^3*z6+ 3906*z4*z5^3*z6+ 318*z5^4*z6-
    2988*z2*z3*z4^2*z7+ 3588*z2*z4^3*z7+ 3588*z3*z4^3*z7+ 318*z4^4*z7-
    2355*z2*z3*z4*z5*z7+ 600*z2*z4^2*z5*z7+ 600*z3*z4^2*z5*z7+ 3906*z4^3*z5*z7-
    2988*z2*z3*z5^2*z7+ 600*z2*z4*z5^2*z7+ 600*z3*z4*z5^2*z7+ 3906*z4^2*z5^2*z7+
    3588*z2*z5^3*z7+ 3588*z3*z5^3*z7+ 3906*z4*z5^3*z7+ 318*z5^4*z7+
    633*z2*z3*z4*z6*z7- 2988*z2*z4^2*z6*z7- 2988*z3*z4^2*z6*z7+ 3588*z4^3*z6*z7+
    633*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7+
    600*z4^2*z5*z6*z7- 2988*z2*z5^2*z6*z7- 2988*z3*z5^2*z6*z7+
    600*z4*z5^2*z6*z7+ 3588*z5^3*z6*z7- 2202*z2*z3*z4- 1776*z2*z4^2-
    1776*z3*z4^2+ 2166*z4^3- 2202*z2*z3*z5- 3978*z2*z4*z5- 3978*z3*z4*z5+
    390*z4^2*z5- 1776*z2*z5^2- 1776*z3*z5^2+ 390*z4*z5^2+ 2166*z5^3-
    1068*z2*z3*z6- 2202*z2*z4*z6- 2202*z3*z4*z6- 1776*z4^2*z6- 2202*z2*z5*z6-
    2202*z3*z5*z6- 3978*z4*z5*z6- 1776*z5^2*z6- 1068*z2*z3*z7- 2202*z2*z4*z7-
    2202*z3*z4*z7- 1776*z4^2*z7- 2202*z2*z5*z7- 2202*z3*z5*z7- 3978*z4*z5*z7-
    1776*z5^2*z7- 1068*z2*z6*z7- 1068*z3*z6*z7- 2202*z4*z6*z7- 2202*z5*z6*z7+
    3538*z2+ 3538*z3- 1169*z4- 1169*z5+ 3538*z6+ 3538*z7",
    "6*z2*z3*z4^13- 4*z2*z4^14- 4*z3*z4^14+ 2*z4^15- 8*z2*z3*z4^12*z5+
    6*z2*z4^13*z5+ 6*z3*z4^13*z5- 4*z4^14*z5- 2*z2*z3*z4^12*z6+ 2*z2*z4^13*z6+
    2*z3*z4^13*z6- 2*z4^14*z6+ 2*z2*z3*z4^11*z5*z6- 2*z2*z4^12*z5*z6-
    2*z3*z4^12*z5*z6+ 2*z4^13*z5*z6- 2*z2*z3*z4^11*z6^2+ 2*z2*z4^12*z6^2+
    2*z3*z4^12*z6^2- 2*z4^13*z6^2+ 2*z2*z3*z4^10*z5*z6^2- 2*z2*z4^11*z5*z6^2-
    2*z3*z4^11*z5*z6^2+ 2*z4^12*z5*z6^2- 2*z2*z3*z4^10*z6^3+ 2*z2*z4^11*z6^3+
    2*z3*z4^11*z6^3- 2*z4^12*z6^3+ 2*z2*z3*z4^9*z5*z6^3- 2*z2*z4^10*z5*z6^3-
    2*z3*z4^10*z5*z6^3+ 2*z4^11*z5*z6^3- 2*z2*z3*z4^9*z6^4+ 2*z2*z4^10*z6^4+
    2*z3*z4^10*z6^4- 2*z4^11*z6^4+ 2*z2*z3*z4^8*z5*z6^4- 2*z2*z4^9*z5*z6^4-
    2*z3*z4^9*z5*z6^4+ 2*z4^10*z5*z6^4- 2*z2*z3*z4^8*z6^5+ 2*z2*z4^9*z6^5+
    2*z3*z4^9*z6^5- 2*z4^10*z6^5+ 2*z2*z3*z4^7*z5*z6^5- 2*z2*z4^8*z5*z6^5-
    2*z3*z4^8*z5*z6^5+ 2*z4^9*z5*z6^5- 2*z2*z3*z4^7*z6^6+ 2*z2*z4^8*z6^6+
    2*z3*z4^8*z6^6- 2*z4^9*z6^6+ 2*z2*z3*z4^6*z5*z6^6- 2*z2*z4^7*z5*z6^6-
    2*z3*z4^7*z5*z6^6+ 2*z4^8*z5*z6^6- 2*z2*z3*z4^6*z6^7+ 2*z2*z4^7*z6^7+
    2*z3*z4^7*z6^7- 2*z4^8*z6^7+ 2*z2*z3*z4^5*z5*z6^7- 2*z2*z4^6*z5*z6^7-
    2*z3*z4^6*z5*z6^7+ 2*z4^7*z5*z6^7- 2*z2*z3*z4^5*z6^8+ 2*z2*z4^6*z6^8+
    2*z3*z4^6*z6^8- 2*z4^7*z6^8+ 2*z2*z3*z4^4*z5*z6^8- 2*z2*z4^5*z5*z6^8-
    2*z3*z4^5*z5*z6^8+ 2*z4^6*z5*z6^8- 2*z2*z3*z4^4*z6^9+ 2*z2*z4^5*z6^9+
    2*z3*z4^5*z6^9- 2*z4^6*z6^9+ 2*z2*z3*z4^3*z5*z6^9- 2*z2*z4^4*z5*z6^9-
    2*z3*z4^4*z5*z6^9+ 2*z4^5*z5*z6^9- 2*z2*z3*z4^3*z6^10+ 2*z2*z4^4*z6^10+
    2*z3*z4^4*z6^10- 2*z4^5*z6^10+ 2*z2*z3*z4^2*z5*z6^10- 2*z2*z4^3*z5*z6^10-
    2*z3*z4^3*z5*z6^10+ 2*z4^4*z5*z6^10- 2*z2*z3*z4^2*z6^11+ 2*z2*z4^3*z6^11+
    2*z3*z4^3*z6^11- 2*z4^4*z6^11+ 2*z2*z3*z4*z5*z6^11- 2*z2*z4^2*z5*z6^11-
    2*z3*z4^2*z5*z6^11+ 2*z4^3*z5*z6^11- 2*z2*z3*z4*z6^12+ 2*z2*z4^2*z6^12+
    2*z3*z4^2*z6^12- 2*z4^3*z6^12- 8*z2*z3*z5*z6^12- 2*z2*z4*z5*z6^12-
    2*z3*z4*z5*z6^12+ 2*z4^2*z5*z6^12+ 6*z2*z3*z6^13+ 2*z2*z4*z6^13+
    2*z3*z4*z6^13- 2*z4^2*z6^13+ 6*z2*z5*z6^13+ 6*z3*z5*z6^13+ 2*z4*z5*z6^13-
    4*z2*z6^14- 4*z3*z6^14- 2*z4*z6^14- 4*z5*z6^14+ 2*z6^15- 8*z2*z3*z4^12*z7+
    6*z2*z4^13*z7+ 6*z3*z4^13*z7- 4*z4^14*z7+ 10*z2*z3*z4^11*z5*z7-
    8*z2*z4^12*z5*z7- 8*z3*z4^12*z5*z7+ 6*z4^13*z5*z7+ 2*z2*z3*z4^11*z6*z7-
    2*z2*z4^12*z6*z7- 2*z3*z4^12*z6*z7+ 2*z4^13*z6*z7- 2*z2*z3*z4^10*z5*z6*z7+
    2*z2*z4^11*z5*z6*z7+ 2*z3*z4^11*z5*z6*z7- 2*z4^12*z5*z6*z7+
    2*z2*z3*z4^10*z6^2*z7- 2*z2*z4^11*z6^2*z7- 2*z3*z4^11*z6^2*z7+
    2*z4^12*z6^2*z7- 2*z2*z3*z4^9*z5*z6^2*z7+ 2*z2*z4^10*z5*z6^2*z7+
    2*z3*z4^10*z5*z6^2*z7- 2*z4^11*z5*z6^2*z7+ 2*z2*z3*z4^9*z6^3*z7-
    2*z2*z4^10*z6^3*z7- 2*z3*z4^10*z6^3*z7+ 2*z4^11*z6^3*z7-
    2*z2*z3*z4^8*z5*z6^3*z7+ 2*z2*z4^9*z5*z6^3*z7+ 2*z3*z4^9*z5*z6^3*z7-
    2*z4^10*z5*z6^3*z7+ 2*z2*z3*z4^8*z6^4*z7- 2*z2*z4^9*z6^4*z7-
    2*z3*z4^9*z6^4*z7+ 2*z4^10*z6^4*z7- 2*z2*z3*z4^7*z5*z6^4*z7+
    2*z2*z4^8*z5*z6^4*z7+ 2*z3*z4^8*z5*z6^4*z7- 2*z4^9*z5*z6^4*z7+
    2*z2*z3*z4^7*z6^5*z7- 2*z2*z4^8*z6^5*z7- 2*z3*z4^8*z6^5*z7+ 2*z4^9*z6^5*z7-
    2*z2*z3*z4^6*z5*z6^5*z7+ 2*z2*z4^7*z5*z6^5*z7+ 2*z3*z4^7*z5*z6^5*z7-
    2*z4^8*z5*z6^5*z7+ 2*z2*z3*z4^6*z6^6*z7- 2*z2*z4^7*z6^6*z7-
    2*z3*z4^7*z6^6*z7+ 2*z4^8*z6^6*z7- 2*z2*z3*z4^5*z5*z6^6*z7+
    2*z2*z4^6*z5*z6^6*z7+ 2*z3*z4^6*z5*z6^6*z7- 2*z4^7*z5*z6^6*z7+
    2*z2*z3*z4^5*z6^7*z7- 2*z2*z4^6*z6^7*z7- 2*z3*z4^6*z6^7*z7+ 2*z4^7*z6^7*z7-
    2*z2*z3*z4^4*z5*z6^7*z7+ 2*z2*z4^5*z5*z6^7*z7+ 2*z3*z4^5*z5*z6^7*z7-
    2*z4^6*z5*z6^7*z7+ 2*z2*z3*z4^4*z6^8*z7- 2*z2*z4^5*z6^8*z7-
    2*z3*z4^5*z6^8*z7+ 2*z4^6*z6^8*z7- 2*z2*z3*z4^3*z5*z6^8*z7+
    2*z2*z4^4*z5*z6^8*z7+ 2*z3*z4^4*z5*z6^8*z7- 2*z4^5*z5*z6^8*z7+
    2*z2*z3*z4^3*z6^9*z7- 2*z2*z4^4*z6^9*z7- 2*z3*z4^4*z6^9*z7+ 2*z4^5*z6^9*z7-
    2*z2*z3*z4^2*z5*z6^9*z7+ 2*z2*z4^3*z5*z6^9*z7+ 2*z3*z4^3*z5*z6^9*z7-
    2*z4^4*z5*z6^9*z7+ 2*z2*z3*z4^2*z6^10*z7- 2*z2*z4^3*z6^10*z7-
    2*z3*z4^3*z6^10*z7+ 2*z4^4*z6^10*z7- 2*z2*z3*z4*z5*z6^10*z7+
    2*z2*z4^2*z5*z6^10*z7+ 2*z3*z4^2*z5*z6^10*z7- 2*z4^3*z5*z6^10*z7+
    2*z2*z3*z4*z6^11*z7- 2*z2*z4^2*z6^11*z7- 2*z3*z4^2*z6^11*z7+
    2*z4^3*z6^11*z7+ 10*z2*z3*z5*z6^11*z7+ 2*z2*z4*z5*z6^11*z7+
    2*z3*z4*z5*z6^11*z7- 2*z4^2*z5*z6^11*z7- 8*z2*z3*z6^12*z7- 2*z2*z4*z6^12*z7-
    2*z3*z4*z6^12*z7+ 2*z4^2*z6^12*z7- 8*z2*z5*z6^12*z7- 8*z3*z5*z6^12*z7-
    2*z4*z5*z6^12*z7+ 6*z2*z6^13*z7+ 6*z3*z6^13*z7+ 2*z4*z6^13*z7+
    6*z5*z6^13*z7- 4*z6^14*z7+ 10*z2*z3*z4^11- 13*z2*z4^12- 13*z3*z4^12+
    10*z4^13+ z2*z3*z4^10*z5+ 10*z2*z4^11*z5+ 10*z3*z4^11*z5- 13*z4^12*z5+
    11*z2*z3*z4^10*z6- 3*z2*z4^11*z6- 3*z3*z4^11*z6- 3*z4^12*z6-
    21*z2*z3*z4^9*z5*z6+ 11*z2*z4^10*z5*z6+ 11*z3*z4^10*z5*z6- 3*z4^11*z5*z6+
    11*z2*z3*z4^9*z6^2- 3*z2*z4^10*z6^2- 3*z3*z4^10*z6^2- 3*z4^11*z6^2-
    21*z2*z3*z4^8*z5*z6^2+ 11*z2*z4^9*z5*z6^2+ 11*z3*z4^9*z5*z6^2-
    3*z4^10*z5*z6^2+ 11*z2*z3*z4^8*z6^3- 3*z2*z4^9*z6^3- 3*z3*z4^9*z6^3-
    3*z4^10*z6^3- 21*z2*z3*z4^7*z5*z6^3+ 11*z2*z4^8*z5*z6^3+ 11*z3*z4^8*z5*z6^3-
    3*z4^9*z5*z6^3+ 11*z2*z3*z4^7*z6^4- 3*z2*z4^8*z6^4- 3*z3*z4^8*z6^4-
    3*z4^9*z6^4- 21*z2*z3*z4^6*z5*z6^4+ 11*z2*z4^7*z5*z6^4+ 11*z3*z4^7*z5*z6^4-
    3*z4^8*z5*z6^4+ 11*z2*z3*z4^6*z6^5- 3*z2*z4^7*z6^5- 3*z3*z4^7*z6^5-
    3*z4^8*z6^5- 21*z2*z3*z4^5*z5*z6^5+ 11*z2*z4^6*z5*z6^5+ 11*z3*z4^6*z5*z6^5-
    3*z4^7*z5*z6^5+ 11*z2*z3*z4^5*z6^6- 3*z2*z4^6*z6^6- 3*z3*z4^6*z6^6-
    3*z4^7*z6^6- 21*z2*z3*z4^4*z5*z6^6+ 11*z2*z4^5*z5*z6^6+ 11*z3*z4^5*z5*z6^6-
    3*z4^6*z5*z6^6+ 11*z2*z3*z4^4*z6^7- 3*z2*z4^5*z6^7- 3*z3*z4^5*z6^7-
    3*z4^6*z6^7- 21*z2*z3*z4^3*z5*z6^7+ 11*z2*z4^4*z5*z6^7+ 11*z3*z4^4*z5*z6^7-
    3*z4^5*z5*z6^7+ 11*z2*z3*z4^3*z6^8- 3*z2*z4^4*z6^8- 3*z3*z4^4*z6^8-
    3*z4^5*z6^8- 21*z2*z3*z4^2*z5*z6^8+ 11*z2*z4^3*z5*z6^8+ 11*z3*z4^3*z5*z6^8-
    3*z4^4*z5*z6^8+ 11*z2*z3*z4^2*z6^9- 3*z2*z4^3*z6^9- 3*z3*z4^3*z6^9-
    3*z4^4*z6^9- 21*z2*z3*z4*z5*z6^9+ 11*z2*z4^2*z5*z6^9+ 11*z3*z4^2*z5*z6^9-
    3*z4^3*z5*z6^9+ 11*z2*z3*z4*z6^10- 3*z2*z4^2*z6^10- 3*z3*z4^2*z6^10-
    3*z4^3*z6^10+ z2*z3*z5*z6^10+ 11*z2*z4*z5*z6^10+ 11*z3*z4*z5*z6^10-
    3*z4^2*z5*z6^10+ 10*z2*z3*z6^11- 3*z2*z4*z6^11- 3*z3*z4*z6^11- 3*z4^2*z6^11+
    10*z2*z5*z6^11+ 10*z3*z5*z6^11- 3*z4*z5*z6^11- 13*z2*z6^12- 13*z3*z6^12-
    3*z4*z6^12- 13*z5*z6^12+ 10*z6^13+ z2*z3*z4^10*z7+ 10*z2*z4^11*z7+
    10*z3*z4^11*z7- 13*z4^12*z7- 22*z2*z3*z4^9*z5*z7+ z2*z4^10*z5*z7+
    z3*z4^10*z5*z7+ 10*z4^11*z5*z7- 21*z2*z3*z4^9*z6*z7+ 11*z2*z4^10*z6*z7+
    11*z3*z4^10*z6*z7- 3*z4^11*z6*z7+ 33*z2*z3*z4^8*z5*z6*z7-
    21*z2*z4^9*z5*z6*z7- 21*z3*z4^9*z5*z6*z7+ 11*z4^10*z5*z6*z7-
    21*z2*z3*z4^8*z6^2*z7+ 11*z2*z4^9*z6^2*z7+ 11*z3*z4^9*z6^2*z7-
    3*z4^10*z6^2*z7+ 33*z2*z3*z4^7*z5*z6^2*z7- 21*z2*z4^8*z5*z6^2*z7-
    21*z3*z4^8*z5*z6^2*z7+ 11*z4^9*z5*z6^2*z7- 21*z2*z3*z4^7*z6^3*z7+
    11*z2*z4^8*z6^3*z7+ 11*z3*z4^8*z6^3*z7- 3*z4^9*z6^3*z7+
    33*z2*z3*z4^6*z5*z6^3*z7- 21*z2*z4^7*z5*z6^3*z7- 21*z3*z4^7*z5*z6^3*z7+
    11*z4^8*z5*z6^3*z7- 21*z2*z3*z4^6*z6^4*z7+ 11*z2*z4^7*z6^4*z7+
    11*z3*z4^7*z6^4*z7- 3*z4^8*z6^4*z7+ 33*z2*z3*z4^5*z5*z6^4*z7-
    21*z2*z4^6*z5*z6^4*z7- 21*z3*z4^6*z5*z6^4*z7+ 11*z4^7*z5*z6^4*z7-
    21*z2*z3*z4^5*z6^5*z7+ 11*z2*z4^6*z6^5*z7+ 11*z3*z4^6*z6^5*z7-
    3*z4^7*z6^5*z7+ 33*z2*z3*z4^4*z5*z6^5*z7- 21*z2*z4^5*z5*z6^5*z7-
    21*z3*z4^5*z5*z6^5*z7+ 11*z4^6*z5*z6^5*z7- 21*z2*z3*z4^4*z6^6*z7+
    11*z2*z4^5*z6^6*z7+ 11*z3*z4^5*z6^6*z7- 3*z4^6*z6^6*z7+
    33*z2*z3*z4^3*z5*z6^6*z7- 21*z2*z4^4*z5*z6^6*z7- 21*z3*z4^4*z5*z6^6*z7+
    11*z4^5*z5*z6^6*z7- 21*z2*z3*z4^3*z6^7*z7+ 11*z2*z4^4*z6^7*z7+
    11*z3*z4^4*z6^7*z7- 3*z4^5*z6^7*z7+ 33*z2*z3*z4^2*z5*z6^7*z7-
    21*z2*z4^3*z5*z6^7*z7- 21*z3*z4^3*z5*z6^7*z7+ 11*z4^4*z5*z6^7*z7-
    21*z2*z3*z4^2*z6^8*z7+ 11*z2*z4^3*z6^8*z7+ 11*z3*z4^3*z6^8*z7-
    3*z4^4*z6^8*z7+ 33*z2*z3*z4*z5*z6^8*z7- 21*z2*z4^2*z5*z6^8*z7-
    21*z3*z4^2*z5*z6^8*z7+ 11*z4^3*z5*z6^8*z7- 21*z2*z3*z4*z6^9*z7+
    11*z2*z4^2*z6^9*z7+ 11*z3*z4^2*z6^9*z7- 3*z4^3*z6^9*z7- 22*z2*z3*z5*z6^9*z7-
    21*z2*z4*z5*z6^9*z7- 21*z3*z4*z5*z6^9*z7+ 11*z4^2*z5*z6^9*z7+
    z2*z3*z6^10*z7+ 11*z2*z4*z6^10*z7+ 11*z3*z4*z6^10*z7- 3*z4^2*z6^10*z7+
    z2*z5*z6^10*z7+ z3*z5*z6^10*z7+ 11*z4*z5*z6^10*z7+ 10*z2*z6^11*z7+
    10*z3*z6^11*z7- 3*z4*z6^11*z7+ 10*z5*z6^11*z7- 13*z6^12*z7+ 1121*z2*z3*z4^9-
    12*z2*z4^10- 12*z3*z4^10- 1107*z4^11- 2231*z2*z3*z4^8*z5+ 1121*z2*z4^9*z5+
    1121*z3*z4^9*z5- 12*z4^10*z5- 1110*z2*z3*z4^8*z6+ 1109*z2*z4^9*z6+
    1109*z3*z4^9*z6- 1119*z4^10*z6+ 1132*z2*z3*z4^7*z5*z6- 1110*z2*z4^8*z5*z6-
    1110*z3*z4^8*z5*z6+ 1109*z4^9*z5*z6- 1110*z2*z3*z4^7*z6^2+
    1109*z2*z4^8*z6^2+ 1109*z3*z4^8*z6^2- 1119*z4^9*z6^2+
    1132*z2*z3*z4^6*z5*z6^2- 1110*z2*z4^7*z5*z6^2- 1110*z3*z4^7*z5*z6^2+
    1109*z4^8*z5*z6^2- 1110*z2*z3*z4^6*z6^3+ 1109*z2*z4^7*z6^3+
    1109*z3*z4^7*z6^3- 1119*z4^8*z6^3+ 1132*z2*z3*z4^5*z5*z6^3-
    1110*z2*z4^6*z5*z6^3- 1110*z3*z4^6*z5*z6^3+ 1109*z4^7*z5*z6^3-
    1110*z2*z3*z4^5*z6^4+ 1109*z2*z4^6*z6^4+ 1109*z3*z4^6*z6^4- 1119*z4^7*z6^4+
    1132*z2*z3*z4^4*z5*z6^4- 1110*z2*z4^5*z5*z6^4- 1110*z3*z4^5*z5*z6^4+
    1109*z4^6*z5*z6^4- 1110*z2*z3*z4^4*z6^5+ 1109*z2*z4^5*z6^5+
    1109*z3*z4^5*z6^5- 1119*z4^6*z6^5+ 1132*z2*z3*z4^3*z5*z6^5-
    1110*z2*z4^4*z5*z6^5- 1110*z3*z4^4*z5*z6^5+ 1109*z4^5*z5*z6^5-
    1110*z2*z3*z4^3*z6^6+ 1109*z2*z4^4*z6^6+ 1109*z3*z4^4*z6^6- 1119*z4^5*z6^6+
    1132*z2*z3*z4^2*z5*z6^6- 1110*z2*z4^3*z5*z6^6- 1110*z3*z4^3*z5*z6^6+
    1109*z4^4*z5*z6^6- 1110*z2*z3*z4^2*z6^7+ 1109*z2*z4^3*z6^7+
    1109*z3*z4^3*z6^7- 1119*z4^4*z6^7+ 1132*z2*z3*z4*z5*z6^7-
    1110*z2*z4^2*z5*z6^7- 1110*z3*z4^2*z5*z6^7+ 1109*z4^3*z5*z6^7-
    1110*z2*z3*z4*z6^8+ 1109*z2*z4^2*z6^8+ 1109*z3*z4^2*z6^8- 1119*z4^3*z6^8-
    2231*z2*z3*z5*z6^8- 1110*z2*z4*z5*z6^8- 1110*z3*z4*z5*z6^8+
    1109*z4^2*z5*z6^8+ 1121*z2*z3*z6^9+ 1109*z2*z4*z6^9+ 1109*z3*z4*z6^9-
    1119*z4^2*z6^9+ 1121*z2*z5*z6^9+ 1121*z3*z5*z6^9+ 1109*z4*z5*z6^9-
    12*z2*z6^10- 12*z3*z6^10- 1119*z4*z6^10- 12*z5*z6^10- 1107*z6^11-
    2231*z2*z3*z4^8*z7+ 1121*z2*z4^9*z7+ 1121*z3*z4^9*z7- 12*z4^10*z7+
    3363*z2*z3*z4^7*z5*z7- 2231*z2*z4^8*z5*z7- 2231*z3*z4^8*z5*z7+
    1121*z4^9*z5*z7+ 1132*z2*z3*z4^7*z6*z7- 1110*z2*z4^8*z6*z7-
    1110*z3*z4^8*z6*z7+ 1109*z4^9*z6*z7- 1187*z2*z3*z4^6*z5*z6*z7+
    1132*z2*z4^7*z5*z6*z7+ 1132*z3*z4^7*z5*z6*z7- 1110*z4^8*z5*z6*z7+
    1132*z2*z3*z4^6*z6^2*z7- 1110*z2*z4^7*z6^2*z7- 1110*z3*z4^7*z6^2*z7+
    1109*z4^8*z6^2*z7- 1187*z2*z3*z4^5*z5*z6^2*z7+ 1132*z2*z4^6*z5*z6^2*z7+
    1132*z3*z4^6*z5*z6^2*z7- 1110*z4^7*z5*z6^2*z7+ 1132*z2*z3*z4^5*z6^3*z7-
    1110*z2*z4^6*z6^3*z7- 1110*z3*z4^6*z6^3*z7+ 1109*z4^7*z6^3*z7-
    1187*z2*z3*z4^4*z5*z6^3*z7+ 1132*z2*z4^5*z5*z6^3*z7+
    1132*z3*z4^5*z5*z6^3*z7- 1110*z4^6*z5*z6^3*z7+ 1132*z2*z3*z4^4*z6^4*z7-
    1110*z2*z4^5*z6^4*z7- 1110*z3*z4^5*z6^4*z7+ 1109*z4^6*z6^4*z7-
    1187*z2*z3*z4^3*z5*z6^4*z7+ 1132*z2*z4^4*z5*z6^4*z7+
    1132*z3*z4^4*z5*z6^4*z7- 1110*z4^5*z5*z6^4*z7+ 1132*z2*z3*z4^3*z6^5*z7-
    1110*z2*z4^4*z6^5*z7- 1110*z3*z4^4*z6^5*z7+ 1109*z4^5*z6^5*z7-
    1187*z2*z3*z4^2*z5*z6^5*z7+ 1132*z2*z4^3*z5*z6^5*z7+
    1132*z3*z4^3*z5*z6^5*z7- 1110*z4^4*z5*z6^5*z7+ 1132*z2*z3*z4^2*z6^6*z7-
    1110*z2*z4^3*z6^6*z7- 1110*z3*z4^3*z6^6*z7+ 1109*z4^4*z6^6*z7-
    1187*z2*z3*z4*z5*z6^6*z7+ 1132*z2*z4^2*z5*z6^6*z7+ 1132*z3*z4^2*z5*z6^6*z7-
    1110*z4^3*z5*z6^6*z7+ 1132*z2*z3*z4*z6^7*z7- 1110*z2*z4^2*z6^7*z7-
    1110*z3*z4^2*z6^7*z7+ 1109*z4^3*z6^7*z7+ 3363*z2*z3*z5*z6^7*z7+
    1132*z2*z4*z5*z6^7*z7+ 1132*z3*z4*z5*z6^7*z7- 1110*z4^2*z5*z6^7*z7-
    2231*z2*z3*z6^8*z7- 1110*z2*z4*z6^8*z7- 1110*z3*z4*z6^8*z7+
    1109*z4^2*z6^8*z7- 2231*z2*z5*z6^8*z7- 2231*z3*z5*z6^8*z7-
    1110*z4*z5*z6^8*z7+ 1121*z2*z6^9*z7+ 1121*z3*z6^9*z7+ 1109*z4*z6^9*z7+
    1121*z5*z6^9*z7- 12*z6^10*z7+ 3363*z2*z3*z4^7- 3374*z2*z4^8- 3374*z3*z4^8+
    2264*z4^9- 1121*z2*z3*z4^6*z5+ 3363*z2*z4^7*z5+ 3363*z3*z4^7*z5-
    3374*z4^8*z5+ 2242*z2*z3*z4^6*z6- 11*z2*z4^7*z6- 11*z3*z4^7*z6-
    1110*z4^8*z6+ 3396*z2*z3*z4^5*z5*z6+ 2242*z2*z4^6*z5*z6+ 2242*z3*z4^6*z5*z6-
    11*z4^7*z5*z6+ 2242*z2*z3*z4^5*z6^2- 11*z2*z4^6*z6^2- 11*z3*z4^6*z6^2-
    1110*z4^7*z6^2+ 3396*z2*z3*z4^4*z5*z6^2+ 2242*z2*z4^5*z5*z6^2+
    2242*z3*z4^5*z5*z6^2- 11*z4^6*z5*z6^2+ 2242*z2*z3*z4^4*z6^3-
    11*z2*z4^5*z6^3- 11*z3*z4^5*z6^3- 1110*z4^6*z6^3+ 3396*z2*z3*z4^3*z5*z6^3+
    2242*z2*z4^4*z5*z6^3+ 2242*z3*z4^4*z5*z6^3- 11*z4^5*z5*z6^3+
    2242*z2*z3*z4^3*z6^4- 11*z2*z4^4*z6^4- 11*z3*z4^4*z6^4- 1110*z4^5*z6^4+
    3396*z2*z3*z4^2*z5*z6^4+ 2242*z2*z4^3*z5*z6^4+ 2242*z3*z4^3*z5*z6^4-
    11*z4^4*z5*z6^4+ 2242*z2*z3*z4^2*z6^5- 11*z2*z4^3*z6^5- 11*z3*z4^3*z6^5-
    1110*z4^4*z6^5+ 3396*z2*z3*z4*z5*z6^5+ 2242*z2*z4^2*z5*z6^5+
    2242*z3*z4^2*z5*z6^5- 11*z4^3*z5*z6^5+ 2242*z2*z3*z4*z6^6- 11*z2*z4^2*z6^6-
    11*z3*z4^2*z6^6- 1110*z4^3*z6^6- 1121*z2*z3*z5*z6^6+ 2242*z2*z4*z5*z6^6+
    2242*z3*z4*z5*z6^6- 11*z4^2*z5*z6^6+ 3363*z2*z3*z6^7- 11*z2*z4*z6^7-
    11*z3*z4*z6^7- 1110*z4^2*z6^7+ 3363*z2*z5*z6^7+ 3363*z3*z5*z6^7-
    11*z4*z5*z6^7- 3374*z2*z6^8- 3374*z3*z6^8- 1110*z4*z6^8- 3374*z5*z6^8+
    2264*z6^9- 1121*z2*z3*z4^6*z7+ 3363*z2*z4^7*z7+ 3363*z3*z4^7*z7-
    3374*z4^8*z7- 4484*z2*z3*z4^5*z5*z7- 1121*z2*z4^6*z5*z7- 1121*z3*z4^6*z5*z7+
    3363*z4^7*z5*z7+ 3396*z2*z3*z4^5*z6*z7+ 2242*z2*z4^6*z6*z7+
    2242*z3*z4^6*z6*z7- 11*z4^7*z6*z7+ 1154*z2*z3*z4^4*z5*z6*z7+
    3396*z2*z4^5*z5*z6*z7+ 3396*z3*z4^5*z5*z6*z7+ 2242*z4^6*z5*z6*z7+
    3396*z2*z3*z4^4*z6^2*z7+ 2242*z2*z4^5*z6^2*z7+ 2242*z3*z4^5*z6^2*z7-
    11*z4^6*z6^2*z7+ 1154*z2*z3*z4^3*z5*z6^2*z7+ 3396*z2*z4^4*z5*z6^2*z7+
    3396*z3*z4^4*z5*z6^2*z7+ 2242*z4^5*z5*z6^2*z7+ 3396*z2*z3*z4^3*z6^3*z7+
    2242*z2*z4^4*z6^3*z7+ 2242*z3*z4^4*z6^3*z7- 11*z4^5*z6^3*z7+
    1154*z2*z3*z4^2*z5*z6^3*z7+ 3396*z2*z4^3*z5*z6^3*z7+
    3396*z3*z4^3*z5*z6^3*z7+ 2242*z4^4*z5*z6^3*z7+ 3396*z2*z3*z4^2*z6^4*z7+
    2242*z2*z4^3*z6^4*z7+ 2242*z3*z4^3*z6^4*z7- 11*z4^4*z6^4*z7+
    1154*z2*z3*z4*z5*z6^4*z7+ 3396*z2*z4^2*z5*z6^4*z7+ 3396*z3*z4^2*z5*z6^4*z7+
    2242*z4^3*z5*z6^4*z7+ 3396*z2*z3*z4*z6^5*z7+ 2242*z2*z4^2*z6^5*z7+
    2242*z3*z4^2*z6^5*z7- 11*z4^3*z6^5*z7- 4484*z2*z3*z5*z6^5*z7+
    3396*z2*z4*z5*z6^5*z7+ 3396*z3*z4*z5*z6^5*z7+ 2242*z4^2*z5*z6^5*z7-
    1121*z2*z3*z6^6*z7+ 2242*z2*z4*z6^6*z7+ 2242*z3*z4*z6^6*z7- 11*z4^2*z6^6*z7-
    1121*z2*z5*z6^6*z7- 1121*z3*z5*z6^6*z7+ 2242*z4*z5*z6^6*z7+ 3363*z2*z6^7*z7+
    3363*z3*z6^7*z7- 11*z4*z6^7*z7+ 3363*z5*z6^7*z7- 3374*z6^8*z7+
    2740*z2*z3*z4^5+ 147*z2*z4^6+ 147*z3*z4^6+ 2604*z4^7+ 4495*z2*z3*z4^4*z5+
    2740*z2*z4^5*z5+ 2740*z3*z4^5*z5+ 147*z4^6*z5- 1766*z2*z3*z4^4*z6+
    2887*z2*z4^5*z6+ 2887*z3*z4^5*z6+ 2751*z4^6*z6- 2751*z2*z3*z4^3*z5*z6-
    1766*z2*z4^4*z5*z6- 1766*z3*z4^4*z5*z6+ 2887*z4^5*z5*z6-
    1766*z2*z3*z4^3*z6^2+ 2887*z2*z4^4*z6^2+ 2887*z3*z4^4*z6^2+ 2751*z4^5*z6^2-
    2751*z2*z3*z4^2*z5*z6^2- 1766*z2*z4^3*z5*z6^2- 1766*z3*z4^3*z5*z6^2+
    2887*z4^4*z5*z6^2- 1766*z2*z3*z4^2*z6^3+ 2887*z2*z4^3*z6^3+
    2887*z3*z4^3*z6^3+ 2751*z4^4*z6^3- 2751*z2*z3*z4*z5*z6^3-
    1766*z2*z4^2*z5*z6^3- 1766*z3*z4^2*z5*z6^3+ 2887*z4^3*z5*z6^3-
    1766*z2*z3*z4*z6^4+ 2887*z2*z4^2*z6^4+ 2887*z3*z4^2*z6^4+ 2751*z4^3*z6^4+
    4495*z2*z3*z5*z6^4- 1766*z2*z4*z5*z6^4- 1766*z3*z4*z5*z6^4+
    2887*z4^2*z5*z6^4+ 2740*z2*z3*z6^5+ 2887*z2*z4*z6^5+ 2887*z3*z4*z6^5+
    2751*z4^2*z6^5+ 2740*z2*z5*z6^5+ 2740*z3*z5*z6^5+ 2887*z4*z5*z6^5+
    147*z2*z6^6+ 147*z3*z6^6+ 2751*z4*z6^6+ 147*z5*z6^6+ 2604*z6^7+
    4495*z2*z3*z4^4*z7+ 2740*z2*z4^5*z7+ 2740*z3*z4^5*z7+ 147*z4^6*z7+
    1755*z2*z3*z4^3*z5*z7+ 4495*z2*z4^4*z5*z7+ 4495*z3*z4^4*z5*z7+
    2740*z4^5*z5*z7- 2751*z2*z3*z4^3*z6*z7- 1766*z2*z4^4*z6*z7-
    1766*z3*z4^4*z6*z7+ 2887*z4^5*z6*z7- 2887*z2*z3*z4^2*z5*z6*z7-
    2751*z2*z4^3*z5*z6*z7- 2751*z3*z4^3*z5*z6*z7- 1766*z4^4*z5*z6*z7-
    2751*z2*z3*z4^2*z6^2*z7- 1766*z2*z4^3*z6^2*z7- 1766*z3*z4^3*z6^2*z7+
    2887*z4^4*z6^2*z7- 2887*z2*z3*z4*z5*z6^2*z7- 2751*z2*z4^2*z5*z6^2*z7-
    2751*z3*z4^2*z5*z6^2*z7- 1766*z4^3*z5*z6^2*z7- 2751*z2*z3*z4*z6^3*z7-
    1766*z2*z4^2*z6^3*z7- 1766*z3*z4^2*z6^3*z7+ 2887*z4^3*z6^3*z7+
    1755*z2*z3*z5*z6^3*z7- 2751*z2*z4*z5*z6^3*z7- 2751*z3*z4*z5*z6^3*z7-
    1766*z4^2*z5*z6^3*z7+ 4495*z2*z3*z6^4*z7- 1766*z2*z4*z6^4*z7-
    1766*z3*z4*z6^4*z7+ 2887*z4^2*z6^4*z7+ 4495*z2*z5*z6^4*z7+
    4495*z3*z5*z6^4*z7- 1766*z4*z5*z6^4*z7+ 2740*z2*z6^5*z7+ 2740*z3*z6^5*z7+
    2887*z4*z6^5*z7+ 2740*z5*z6^5*z7+ 147*z6^6*z7+ 3588*z2*z3*z4^3+ 318*z2*z4^4+
    318*z3*z4^4+ 2037*z4^5- 2988*z2*z3*z4^2*z5+ 3588*z2*z4^3*z5+
    3588*z3*z4^3*z5+ 318*z4^4*z5+ 600*z2*z3*z4^2*z6+ 3906*z2*z4^3*z6+
    3906*z3*z4^3*z6+ 2355*z4^4*z6- 2355*z2*z3*z4*z5*z6+ 600*z2*z4^2*z5*z6+
    600*z3*z4^2*z5*z6+ 3906*z4^3*z5*z6+ 600*z2*z3*z4*z6^2+ 3906*z2*z4^2*z6^2+
    3906*z3*z4^2*z6^2+ 2355*z4^3*z6^2- 2988*z2*z3*z5*z6^2+ 600*z2*z4*z5*z6^2+
    600*z3*z4*z5*z6^2+ 3906*z4^2*z5*z6^2+ 3588*z2*z3*z6^3+ 3906*z2*z4*z6^3+
    3906*z3*z4*z6^3+ 2355*z4^2*z6^3+ 3588*z2*z5*z6^3+ 3588*z3*z5*z6^3+
    3906*z4*z5*z6^3+ 318*z2*z6^4+ 318*z3*z6^4+ 2355*z4*z6^4+ 318*z5*z6^4+
    2037*z6^5- 2988*z2*z3*z4^2*z7+ 3588*z2*z4^3*z7+ 3588*z3*z4^3*z7+
    318*z4^4*z7+ 633*z2*z3*z4*z5*z7- 2988*z2*z4^2*z5*z7- 2988*z3*z4^2*z5*z7+
    3588*z4^3*z5*z7- 2355*z2*z3*z4*z6*z7+ 600*z2*z4^2*z6*z7+ 600*z3*z4^2*z6*z7+
    3906*z4^3*z6*z7+ 633*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7-
    2355*z3*z4*z5*z6*z7+ 600*z4^2*z5*z6*z7- 2988*z2*z3*z6^2*z7+
    600*z2*z4*z6^2*z7+ 600*z3*z4*z6^2*z7+ 3906*z4^2*z6^2*z7- 2988*z2*z5*z6^2*z7-
    2988*z3*z5*z6^2*z7+ 600*z4*z5*z6^2*z7+ 3588*z2*z6^3*z7+ 3588*z3*z6^3*z7+
    3906*z4*z6^3*z7+ 3588*z5*z6^3*z7+ 318*z6^4*z7- 2202*z2*z3*z4- 1776*z2*z4^2-
    1776*z3*z4^2+ 2166*z4^3- 1068*z2*z3*z5- 2202*z2*z4*z5- 2202*z3*z4*z5-
    1776*z4^2*z5- 2202*z2*z3*z6- 3978*z2*z4*z6- 3978*z3*z4*z6+ 390*z4^2*z6-
    2202*z2*z5*z6- 2202*z3*z5*z6- 3978*z4*z5*z6- 1776*z2*z6^2- 1776*z3*z6^2+
    390*z4*z6^2- 1776*z5*z6^2+ 2166*z6^3- 1068*z2*z3*z7- 2202*z2*z4*z7-
    2202*z3*z4*z7- 1776*z4^2*z7- 1068*z2*z5*z7- 1068*z3*z5*z7- 2202*z4*z5*z7-
    2202*z2*z6*z7- 2202*z3*z6*z7- 3978*z4*z6*z7- 2202*z5*z6*z7- 1776*z6^2*z7+
    3538*z2+ 3538*z3- 1169*z4+ 3538*z5- 1169*z6+ 3538*z7",
    "6*z2*z3*z4^13- 4*z2*z4^14- 4*z3*z4^14+ 2*z4^15- 8*z2*z3*z4^12*z5+
    6*z2*z4^13*z5+ 6*z3*z4^13*z5- 4*z4^14*z5- 8*z2*z3*z4^12*z6+ 6*z2*z4^13*z6+
    6*z3*z4^13*z6- 4*z4^14*z6+ 10*z2*z3*z4^11*z5*z6- 8*z2*z4^12*z5*z6-
    8*z3*z4^12*z5*z6+ 6*z4^13*z5*z6- 2*z2*z3*z4^12*z7+ 2*z2*z4^13*z7+
    2*z3*z4^13*z7- 2*z4^14*z7+ 2*z2*z3*z4^11*z5*z7- 2*z2*z4^12*z5*z7-
    2*z3*z4^12*z5*z7+ 2*z4^13*z5*z7+ 2*z2*z3*z4^11*z6*z7- 2*z2*z4^12*z6*z7-
    2*z3*z4^12*z6*z7+ 2*z4^13*z6*z7- 2*z2*z3*z4^10*z5*z6*z7+
    2*z2*z4^11*z5*z6*z7+ 2*z3*z4^11*z5*z6*z7- 2*z4^12*z5*z6*z7-
    2*z2*z3*z4^11*z7^2+ 2*z2*z4^12*z7^2+ 2*z3*z4^12*z7^2- 2*z4^13*z7^2+
    2*z2*z3*z4^10*z5*z7^2- 2*z2*z4^11*z5*z7^2- 2*z3*z4^11*z5*z7^2+
    2*z4^12*z5*z7^2+ 2*z2*z3*z4^10*z6*z7^2- 2*z2*z4^11*z6*z7^2-
    2*z3*z4^11*z6*z7^2+ 2*z4^12*z6*z7^2- 2*z2*z3*z4^9*z5*z6*z7^2+
    2*z2*z4^10*z5*z6*z7^2+ 2*z3*z4^10*z5*z6*z7^2- 2*z4^11*z5*z6*z7^2-
    2*z2*z3*z4^10*z7^3+ 2*z2*z4^11*z7^3+ 2*z3*z4^11*z7^3- 2*z4^12*z7^3+
    2*z2*z3*z4^9*z5*z7^3- 2*z2*z4^10*z5*z7^3- 2*z3*z4^10*z5*z7^3+
    2*z4^11*z5*z7^3+ 2*z2*z3*z4^9*z6*z7^3- 2*z2*z4^10*z6*z7^3-
    2*z3*z4^10*z6*z7^3+ 2*z4^11*z6*z7^3- 2*z2*z3*z4^8*z5*z6*z7^3+
    2*z2*z4^9*z5*z6*z7^3+ 2*z3*z4^9*z5*z6*z7^3- 2*z4^10*z5*z6*z7^3-
    2*z2*z3*z4^9*z7^4+ 2*z2*z4^10*z7^4+ 2*z3*z4^10*z7^4- 2*z4^11*z7^4+
    2*z2*z3*z4^8*z5*z7^4- 2*z2*z4^9*z5*z7^4- 2*z3*z4^9*z5*z7^4+ 2*z4^10*z5*z7^4+
    2*z2*z3*z4^8*z6*z7^4- 2*z2*z4^9*z6*z7^4- 2*z3*z4^9*z6*z7^4+ 2*z4^10*z6*z7^4-
    2*z2*z3*z4^7*z5*z6*z7^4+ 2*z2*z4^8*z5*z6*z7^4+ 2*z3*z4^8*z5*z6*z7^4-
    2*z4^9*z5*z6*z7^4- 2*z2*z3*z4^8*z7^5+ 2*z2*z4^9*z7^5+ 2*z3*z4^9*z7^5-
    2*z4^10*z7^5+ 2*z2*z3*z4^7*z5*z7^5- 2*z2*z4^8*z5*z7^5- 2*z3*z4^8*z5*z7^5+
    2*z4^9*z5*z7^5+ 2*z2*z3*z4^7*z6*z7^5- 2*z2*z4^8*z6*z7^5- 2*z3*z4^8*z6*z7^5+
    2*z4^9*z6*z7^5- 2*z2*z3*z4^6*z5*z6*z7^5+ 2*z2*z4^7*z5*z6*z7^5+
    2*z3*z4^7*z5*z6*z7^5- 2*z4^8*z5*z6*z7^5- 2*z2*z3*z4^7*z7^6+ 2*z2*z4^8*z7^6+
    2*z3*z4^8*z7^6- 2*z4^9*z7^6+ 2*z2*z3*z4^6*z5*z7^6- 2*z2*z4^7*z5*z7^6-
    2*z3*z4^7*z5*z7^6+ 2*z4^8*z5*z7^6+ 2*z2*z3*z4^6*z6*z7^6- 2*z2*z4^7*z6*z7^6-
    2*z3*z4^7*z6*z7^6+ 2*z4^8*z6*z7^6- 2*z2*z3*z4^5*z5*z6*z7^6+
    2*z2*z4^6*z5*z6*z7^6+ 2*z3*z4^6*z5*z6*z7^6- 2*z4^7*z5*z6*z7^6-
    2*z2*z3*z4^6*z7^7+ 2*z2*z4^7*z7^7+ 2*z3*z4^7*z7^7- 2*z4^8*z7^7+
    2*z2*z3*z4^5*z5*z7^7- 2*z2*z4^6*z5*z7^7- 2*z3*z4^6*z5*z7^7+ 2*z4^7*z5*z7^7+
    2*z2*z3*z4^5*z6*z7^7- 2*z2*z4^6*z6*z7^7- 2*z3*z4^6*z6*z7^7+ 2*z4^7*z6*z7^7-
    2*z2*z3*z4^4*z5*z6*z7^7+ 2*z2*z4^5*z5*z6*z7^7+ 2*z3*z4^5*z5*z6*z7^7-
    2*z4^6*z5*z6*z7^7- 2*z2*z3*z4^5*z7^8+ 2*z2*z4^6*z7^8+ 2*z3*z4^6*z7^8-
    2*z4^7*z7^8+ 2*z2*z3*z4^4*z5*z7^8- 2*z2*z4^5*z5*z7^8- 2*z3*z4^5*z5*z7^8+
    2*z4^6*z5*z7^8+ 2*z2*z3*z4^4*z6*z7^8- 2*z2*z4^5*z6*z7^8- 2*z3*z4^5*z6*z7^8+
    2*z4^6*z6*z7^8- 2*z2*z3*z4^3*z5*z6*z7^8+ 2*z2*z4^4*z5*z6*z7^8+
    2*z3*z4^4*z5*z6*z7^8- 2*z4^5*z5*z6*z7^8- 2*z2*z3*z4^4*z7^9+ 2*z2*z4^5*z7^9+
    2*z3*z4^5*z7^9- 2*z4^6*z7^9+ 2*z2*z3*z4^3*z5*z7^9- 2*z2*z4^4*z5*z7^9-
    2*z3*z4^4*z5*z7^9+ 2*z4^5*z5*z7^9+ 2*z2*z3*z4^3*z6*z7^9- 2*z2*z4^4*z6*z7^9-
    2*z3*z4^4*z6*z7^9+ 2*z4^5*z6*z7^9- 2*z2*z3*z4^2*z5*z6*z7^9+
    2*z2*z4^3*z5*z6*z7^9+ 2*z3*z4^3*z5*z6*z7^9- 2*z4^4*z5*z6*z7^9-
    2*z2*z3*z4^3*z7^10+ 2*z2*z4^4*z7^10+ 2*z3*z4^4*z7^10- 2*z4^5*z7^10+
    2*z2*z3*z4^2*z5*z7^10- 2*z2*z4^3*z5*z7^10- 2*z3*z4^3*z5*z7^10+
    2*z4^4*z5*z7^10+ 2*z2*z3*z4^2*z6*z7^10- 2*z2*z4^3*z6*z7^10-
    2*z3*z4^3*z6*z7^10+ 2*z4^4*z6*z7^10- 2*z2*z3*z4*z5*z6*z7^10+
    2*z2*z4^2*z5*z6*z7^10+ 2*z3*z4^2*z5*z6*z7^10- 2*z4^3*z5*z6*z7^10-
    2*z2*z3*z4^2*z7^11+ 2*z2*z4^3*z7^11+ 2*z3*z4^3*z7^11- 2*z4^4*z7^11+
    2*z2*z3*z4*z5*z7^11- 2*z2*z4^2*z5*z7^11- 2*z3*z4^2*z5*z7^11+
    2*z4^3*z5*z7^11+ 2*z2*z3*z4*z6*z7^11- 2*z2*z4^2*z6*z7^11-
    2*z3*z4^2*z6*z7^11+ 2*z4^3*z6*z7^11+ 10*z2*z3*z5*z6*z7^11+
    2*z2*z4*z5*z6*z7^11+ 2*z3*z4*z5*z6*z7^11- 2*z4^2*z5*z6*z7^11-
    2*z2*z3*z4*z7^12+ 2*z2*z4^2*z7^12+ 2*z3*z4^2*z7^12- 2*z4^3*z7^12-
    8*z2*z3*z5*z7^12- 2*z2*z4*z5*z7^12- 2*z3*z4*z5*z7^12+ 2*z4^2*z5*z7^12-
    8*z2*z3*z6*z7^12- 2*z2*z4*z6*z7^12- 2*z3*z4*z6*z7^12+ 2*z4^2*z6*z7^12-
    8*z2*z5*z6*z7^12- 8*z3*z5*z6*z7^12- 2*z4*z5*z6*z7^12+ 6*z2*z3*z7^13+
    2*z2*z4*z7^13+ 2*z3*z4*z7^13- 2*z4^2*z7^13+ 6*z2*z5*z7^13+ 6*z3*z5*z7^13+
    2*z4*z5*z7^13+ 6*z2*z6*z7^13+ 6*z3*z6*z7^13+ 2*z4*z6*z7^13+ 6*z5*z6*z7^13-
    4*z2*z7^14- 4*z3*z7^14- 2*z4*z7^14- 4*z5*z7^14- 4*z6*z7^14+ 2*z7^15+
    10*z2*z3*z4^11- 13*z2*z4^12- 13*z3*z4^12+ 10*z4^13+ z2*z3*z4^10*z5+
    10*z2*z4^11*z5+ 10*z3*z4^11*z5- 13*z4^12*z5+ z2*z3*z4^10*z6+ 10*z2*z4^11*z6+
    10*z3*z4^11*z6- 13*z4^12*z6- 22*z2*z3*z4^9*z5*z6+ z2*z4^10*z5*z6+
    z3*z4^10*z5*z6+ 10*z4^11*z5*z6+ 11*z2*z3*z4^10*z7- 3*z2*z4^11*z7-
    3*z3*z4^11*z7- 3*z4^12*z7- 21*z2*z3*z4^9*z5*z7+ 11*z2*z4^10*z5*z7+
    11*z3*z4^10*z5*z7- 3*z4^11*z5*z7- 21*z2*z3*z4^9*z6*z7+ 11*z2*z4^10*z6*z7+
    11*z3*z4^10*z6*z7- 3*z4^11*z6*z7+ 33*z2*z3*z4^8*z5*z6*z7-
    21*z2*z4^9*z5*z6*z7- 21*z3*z4^9*z5*z6*z7+ 11*z4^10*z5*z6*z7+
    11*z2*z3*z4^9*z7^2- 3*z2*z4^10*z7^2- 3*z3*z4^10*z7^2- 3*z4^11*z7^2-
    21*z2*z3*z4^8*z5*z7^2+ 11*z2*z4^9*z5*z7^2+ 11*z3*z4^9*z5*z7^2-
    3*z4^10*z5*z7^2- 21*z2*z3*z4^8*z6*z7^2+ 11*z2*z4^9*z6*z7^2+
    11*z3*z4^9*z6*z7^2- 3*z4^10*z6*z7^2+ 33*z2*z3*z4^7*z5*z6*z7^2-
    21*z2*z4^8*z5*z6*z7^2- 21*z3*z4^8*z5*z6*z7^2+ 11*z4^9*z5*z6*z7^2+
    11*z2*z3*z4^8*z7^3- 3*z2*z4^9*z7^3- 3*z3*z4^9*z7^3- 3*z4^10*z7^3-
    21*z2*z3*z4^7*z5*z7^3+ 11*z2*z4^8*z5*z7^3+ 11*z3*z4^8*z5*z7^3-
    3*z4^9*z5*z7^3- 21*z2*z3*z4^7*z6*z7^3+ 11*z2*z4^8*z6*z7^3+
    11*z3*z4^8*z6*z7^3- 3*z4^9*z6*z7^3+ 33*z2*z3*z4^6*z5*z6*z7^3-
    21*z2*z4^7*z5*z6*z7^3- 21*z3*z4^7*z5*z6*z7^3+ 11*z4^8*z5*z6*z7^3+
    11*z2*z3*z4^7*z7^4- 3*z2*z4^8*z7^4- 3*z3*z4^8*z7^4- 3*z4^9*z7^4-
    21*z2*z3*z4^6*z5*z7^4+ 11*z2*z4^7*z5*z7^4+ 11*z3*z4^7*z5*z7^4-
    3*z4^8*z5*z7^4- 21*z2*z3*z4^6*z6*z7^4+ 11*z2*z4^7*z6*z7^4+
    11*z3*z4^7*z6*z7^4- 3*z4^8*z6*z7^4+ 33*z2*z3*z4^5*z5*z6*z7^4-
    21*z2*z4^6*z5*z6*z7^4- 21*z3*z4^6*z5*z6*z7^4+ 11*z4^7*z5*z6*z7^4+
    11*z2*z3*z4^6*z7^5- 3*z2*z4^7*z7^5- 3*z3*z4^7*z7^5- 3*z4^8*z7^5-
    21*z2*z3*z4^5*z5*z7^5+ 11*z2*z4^6*z5*z7^5+ 11*z3*z4^6*z5*z7^5-
    3*z4^7*z5*z7^5- 21*z2*z3*z4^5*z6*z7^5+ 11*z2*z4^6*z6*z7^5+
    11*z3*z4^6*z6*z7^5- 3*z4^7*z6*z7^5+ 33*z2*z3*z4^4*z5*z6*z7^5-
    21*z2*z4^5*z5*z6*z7^5- 21*z3*z4^5*z5*z6*z7^5+ 11*z4^6*z5*z6*z7^5+
    11*z2*z3*z4^5*z7^6- 3*z2*z4^6*z7^6- 3*z3*z4^6*z7^6- 3*z4^7*z7^6-
    21*z2*z3*z4^4*z5*z7^6+ 11*z2*z4^5*z5*z7^6+ 11*z3*z4^5*z5*z7^6-
    3*z4^6*z5*z7^6- 21*z2*z3*z4^4*z6*z7^6+ 11*z2*z4^5*z6*z7^6+
    11*z3*z4^5*z6*z7^6- 3*z4^6*z6*z7^6+ 33*z2*z3*z4^3*z5*z6*z7^6-
    21*z2*z4^4*z5*z6*z7^6- 21*z3*z4^4*z5*z6*z7^6+ 11*z4^5*z5*z6*z7^6+
    11*z2*z3*z4^4*z7^7- 3*z2*z4^5*z7^7- 3*z3*z4^5*z7^7- 3*z4^6*z7^7-
    21*z2*z3*z4^3*z5*z7^7+ 11*z2*z4^4*z5*z7^7+ 11*z3*z4^4*z5*z7^7-
    3*z4^5*z5*z7^7- 21*z2*z3*z4^3*z6*z7^7+ 11*z2*z4^4*z6*z7^7+
    11*z3*z4^4*z6*z7^7- 3*z4^5*z6*z7^7+ 33*z2*z3*z4^2*z5*z6*z7^7-
    21*z2*z4^3*z5*z6*z7^7- 21*z3*z4^3*z5*z6*z7^7+ 11*z4^4*z5*z6*z7^7+
    11*z2*z3*z4^3*z7^8- 3*z2*z4^4*z7^8- 3*z3*z4^4*z7^8- 3*z4^5*z7^8-
    21*z2*z3*z4^2*z5*z7^8+ 11*z2*z4^3*z5*z7^8+ 11*z3*z4^3*z5*z7^8-
    3*z4^4*z5*z7^8- 21*z2*z3*z4^2*z6*z7^8+ 11*z2*z4^3*z6*z7^8+
    11*z3*z4^3*z6*z7^8- 3*z4^4*z6*z7^8+ 33*z2*z3*z4*z5*z6*z7^8-
    21*z2*z4^2*z5*z6*z7^8- 21*z3*z4^2*z5*z6*z7^8+ 11*z4^3*z5*z6*z7^8+
    11*z2*z3*z4^2*z7^9- 3*z2*z4^3*z7^9- 3*z3*z4^3*z7^9- 3*z4^4*z7^9-
    21*z2*z3*z4*z5*z7^9+ 11*z2*z4^2*z5*z7^9+ 11*z3*z4^2*z5*z7^9- 3*z4^3*z5*z7^9-
    21*z2*z3*z4*z6*z7^9+ 11*z2*z4^2*z6*z7^9+ 11*z3*z4^2*z6*z7^9- 3*z4^3*z6*z7^9-
    22*z2*z3*z5*z6*z7^9- 21*z2*z4*z5*z6*z7^9- 21*z3*z4*z5*z6*z7^9+
    11*z4^2*z5*z6*z7^9+ 11*z2*z3*z4*z7^10- 3*z2*z4^2*z7^10- 3*z3*z4^2*z7^10-
    3*z4^3*z7^10+ z2*z3*z5*z7^10+ 11*z2*z4*z5*z7^10+ 11*z3*z4*z5*z7^10-
    3*z4^2*z5*z7^10+ z2*z3*z6*z7^10+ 11*z2*z4*z6*z7^10+ 11*z3*z4*z6*z7^10-
    3*z4^2*z6*z7^10+ z2*z5*z6*z7^10+ z3*z5*z6*z7^10+ 11*z4*z5*z6*z7^10+
    10*z2*z3*z7^11- 3*z2*z4*z7^11- 3*z3*z4*z7^11- 3*z4^2*z7^11+ 10*z2*z5*z7^11+
    10*z3*z5*z7^11- 3*z4*z5*z7^11+ 10*z2*z6*z7^11+ 10*z3*z6*z7^11-
    3*z4*z6*z7^11+ 10*z5*z6*z7^11- 13*z2*z7^12- 13*z3*z7^12- 3*z4*z7^12-
    13*z5*z7^12- 13*z6*z7^12+ 10*z7^13+ 1121*z2*z3*z4^9- 12*z2*z4^10-
    12*z3*z4^10- 1107*z4^11- 2231*z2*z3*z4^8*z5+ 1121*z2*z4^9*z5+
    1121*z3*z4^9*z5- 12*z4^10*z5- 2231*z2*z3*z4^8*z6+ 1121*z2*z4^9*z6+
    1121*z3*z4^9*z6- 12*z4^10*z6+ 3363*z2*z3*z4^7*z5*z6- 2231*z2*z4^8*z5*z6-
    2231*z3*z4^8*z5*z6+ 1121*z4^9*z5*z6- 1110*z2*z3*z4^8*z7+ 1109*z2*z4^9*z7+
    1109*z3*z4^9*z7- 1119*z4^10*z7+ 1132*z2*z3*z4^7*z5*z7- 1110*z2*z4^8*z5*z7-
    1110*z3*z4^8*z5*z7+ 1109*z4^9*z5*z7+ 1132*z2*z3*z4^7*z6*z7-
    1110*z2*z4^8*z6*z7- 1110*z3*z4^8*z6*z7+ 1109*z4^9*z6*z7-
    1187*z2*z3*z4^6*z5*z6*z7+ 1132*z2*z4^7*z5*z6*z7+ 1132*z3*z4^7*z5*z6*z7-
    1110*z4^8*z5*z6*z7- 1110*z2*z3*z4^7*z7^2+ 1109*z2*z4^8*z7^2+
    1109*z3*z4^8*z7^2- 1119*z4^9*z7^2+ 1132*z2*z3*z4^6*z5*z7^2-
    1110*z2*z4^7*z5*z7^2- 1110*z3*z4^7*z5*z7^2+ 1109*z4^8*z5*z7^2+
    1132*z2*z3*z4^6*z6*z7^2- 1110*z2*z4^7*z6*z7^2- 1110*z3*z4^7*z6*z7^2+
    1109*z4^8*z6*z7^2- 1187*z2*z3*z4^5*z5*z6*z7^2+ 1132*z2*z4^6*z5*z6*z7^2+
    1132*z3*z4^6*z5*z6*z7^2- 1110*z4^7*z5*z6*z7^2- 1110*z2*z3*z4^6*z7^3+
    1109*z2*z4^7*z7^3+ 1109*z3*z4^7*z7^3- 1119*z4^8*z7^3+
    1132*z2*z3*z4^5*z5*z7^3- 1110*z2*z4^6*z5*z7^3- 1110*z3*z4^6*z5*z7^3+
    1109*z4^7*z5*z7^3+ 1132*z2*z3*z4^5*z6*z7^3- 1110*z2*z4^6*z6*z7^3-
    1110*z3*z4^6*z6*z7^3+ 1109*z4^7*z6*z7^3- 1187*z2*z3*z4^4*z5*z6*z7^3+
    1132*z2*z4^5*z5*z6*z7^3+ 1132*z3*z4^5*z5*z6*z7^3- 1110*z4^6*z5*z6*z7^3-
    1110*z2*z3*z4^5*z7^4+ 1109*z2*z4^6*z7^4+ 1109*z3*z4^6*z7^4- 1119*z4^7*z7^4+
    1132*z2*z3*z4^4*z5*z7^4- 1110*z2*z4^5*z5*z7^4- 1110*z3*z4^5*z5*z7^4+
    1109*z4^6*z5*z7^4+ 1132*z2*z3*z4^4*z6*z7^4- 1110*z2*z4^5*z6*z7^4-
    1110*z3*z4^5*z6*z7^4+ 1109*z4^6*z6*z7^4- 1187*z2*z3*z4^3*z5*z6*z7^4+
    1132*z2*z4^4*z5*z6*z7^4+ 1132*z3*z4^4*z5*z6*z7^4- 1110*z4^5*z5*z6*z7^4-
    1110*z2*z3*z4^4*z7^5+ 1109*z2*z4^5*z7^5+ 1109*z3*z4^5*z7^5- 1119*z4^6*z7^5+
    1132*z2*z3*z4^3*z5*z7^5- 1110*z2*z4^4*z5*z7^5- 1110*z3*z4^4*z5*z7^5+
    1109*z4^5*z5*z7^5+ 1132*z2*z3*z4^3*z6*z7^5- 1110*z2*z4^4*z6*z7^5-
    1110*z3*z4^4*z6*z7^5+ 1109*z4^5*z6*z7^5- 1187*z2*z3*z4^2*z5*z6*z7^5+
    1132*z2*z4^3*z5*z6*z7^5+ 1132*z3*z4^3*z5*z6*z7^5- 1110*z4^4*z5*z6*z7^5-
    1110*z2*z3*z4^3*z7^6+ 1109*z2*z4^4*z7^6+ 1109*z3*z4^4*z7^6- 1119*z4^5*z7^6+
    1132*z2*z3*z4^2*z5*z7^6- 1110*z2*z4^3*z5*z7^6- 1110*z3*z4^3*z5*z7^6+
    1109*z4^4*z5*z7^6+ 1132*z2*z3*z4^2*z6*z7^6- 1110*z2*z4^3*z6*z7^6-
    1110*z3*z4^3*z6*z7^6+ 1109*z4^4*z6*z7^6- 1187*z2*z3*z4*z5*z6*z7^6+
    1132*z2*z4^2*z5*z6*z7^6+ 1132*z3*z4^2*z5*z6*z7^6- 1110*z4^3*z5*z6*z7^6-
    1110*z2*z3*z4^2*z7^7+ 1109*z2*z4^3*z7^7+ 1109*z3*z4^3*z7^7- 1119*z4^4*z7^7+
    1132*z2*z3*z4*z5*z7^7- 1110*z2*z4^2*z5*z7^7- 1110*z3*z4^2*z5*z7^7+
    1109*z4^3*z5*z7^7+ 1132*z2*z3*z4*z6*z7^7- 1110*z2*z4^2*z6*z7^7-
    1110*z3*z4^2*z6*z7^7+ 1109*z4^3*z6*z7^7+ 3363*z2*z3*z5*z6*z7^7+
    1132*z2*z4*z5*z6*z7^7+ 1132*z3*z4*z5*z6*z7^7- 1110*z4^2*z5*z6*z7^7-
    1110*z2*z3*z4*z7^8+ 1109*z2*z4^2*z7^8+ 1109*z3*z4^2*z7^8- 1119*z4^3*z7^8-
    2231*z2*z3*z5*z7^8- 1110*z2*z4*z5*z7^8- 1110*z3*z4*z5*z7^8+
    1109*z4^2*z5*z7^8- 2231*z2*z3*z6*z7^8- 1110*z2*z4*z6*z7^8-
    1110*z3*z4*z6*z7^8+ 1109*z4^2*z6*z7^8- 2231*z2*z5*z6*z7^8-
    2231*z3*z5*z6*z7^8- 1110*z4*z5*z6*z7^8+ 1121*z2*z3*z7^9+ 1109*z2*z4*z7^9+
    1109*z3*z4*z7^9- 1119*z4^2*z7^9+ 1121*z2*z5*z7^9+ 1121*z3*z5*z7^9+
    1109*z4*z5*z7^9+ 1121*z2*z6*z7^9+ 1121*z3*z6*z7^9+ 1109*z4*z6*z7^9+
    1121*z5*z6*z7^9- 12*z2*z7^10- 12*z3*z7^10- 1119*z4*z7^10- 12*z5*z7^10-
    12*z6*z7^10- 1107*z7^11+ 3363*z2*z3*z4^7- 3374*z2*z4^8- 3374*z3*z4^8+
    2264*z4^9- 1121*z2*z3*z4^6*z5+ 3363*z2*z4^7*z5+ 3363*z3*z4^7*z5-
    3374*z4^8*z5- 1121*z2*z3*z4^6*z6+ 3363*z2*z4^7*z6+ 3363*z3*z4^7*z6-
    3374*z4^8*z6- 4484*z2*z3*z4^5*z5*z6- 1121*z2*z4^6*z5*z6- 1121*z3*z4^6*z5*z6+
    3363*z4^7*z5*z6+ 2242*z2*z3*z4^6*z7- 11*z2*z4^7*z7- 11*z3*z4^7*z7-
    1110*z4^8*z7+ 3396*z2*z3*z4^5*z5*z7+ 2242*z2*z4^6*z5*z7+ 2242*z3*z4^6*z5*z7-
    11*z4^7*z5*z7+ 3396*z2*z3*z4^5*z6*z7+ 2242*z2*z4^6*z6*z7+
    2242*z3*z4^6*z6*z7- 11*z4^7*z6*z7+ 1154*z2*z3*z4^4*z5*z6*z7+
    3396*z2*z4^5*z5*z6*z7+ 3396*z3*z4^5*z5*z6*z7+ 2242*z4^6*z5*z6*z7+
    2242*z2*z3*z4^5*z7^2- 11*z2*z4^6*z7^2- 11*z3*z4^6*z7^2- 1110*z4^7*z7^2+
    3396*z2*z3*z4^4*z5*z7^2+ 2242*z2*z4^5*z5*z7^2+ 2242*z3*z4^5*z5*z7^2-
    11*z4^6*z5*z7^2+ 3396*z2*z3*z4^4*z6*z7^2+ 2242*z2*z4^5*z6*z7^2+
    2242*z3*z4^5*z6*z7^2- 11*z4^6*z6*z7^2+ 1154*z2*z3*z4^3*z5*z6*z7^2+
    3396*z2*z4^4*z5*z6*z7^2+ 3396*z3*z4^4*z5*z6*z7^2+ 2242*z4^5*z5*z6*z7^2+
    2242*z2*z3*z4^4*z7^3- 11*z2*z4^5*z7^3- 11*z3*z4^5*z7^3- 1110*z4^6*z7^3+
    3396*z2*z3*z4^3*z5*z7^3+ 2242*z2*z4^4*z5*z7^3+ 2242*z3*z4^4*z5*z7^3-
    11*z4^5*z5*z7^3+ 3396*z2*z3*z4^3*z6*z7^3+ 2242*z2*z4^4*z6*z7^3+
    2242*z3*z4^4*z6*z7^3- 11*z4^5*z6*z7^3+ 1154*z2*z3*z4^2*z5*z6*z7^3+
    3396*z2*z4^3*z5*z6*z7^3+ 3396*z3*z4^3*z5*z6*z7^3+ 2242*z4^4*z5*z6*z7^3+
    2242*z2*z3*z4^3*z7^4- 11*z2*z4^4*z7^4- 11*z3*z4^4*z7^4- 1110*z4^5*z7^4+
    3396*z2*z3*z4^2*z5*z7^4+ 2242*z2*z4^3*z5*z7^4+ 2242*z3*z4^3*z5*z7^4-
    11*z4^4*z5*z7^4+ 3396*z2*z3*z4^2*z6*z7^4+ 2242*z2*z4^3*z6*z7^4+
    2242*z3*z4^3*z6*z7^4- 11*z4^4*z6*z7^4+ 1154*z2*z3*z4*z5*z6*z7^4+
    3396*z2*z4^2*z5*z6*z7^4+ 3396*z3*z4^2*z5*z6*z7^4+ 2242*z4^3*z5*z6*z7^4+
    2242*z2*z3*z4^2*z7^5- 11*z2*z4^3*z7^5- 11*z3*z4^3*z7^5- 1110*z4^4*z7^5+
    3396*z2*z3*z4*z5*z7^5+ 2242*z2*z4^2*z5*z7^5+ 2242*z3*z4^2*z5*z7^5-
    11*z4^3*z5*z7^5+ 3396*z2*z3*z4*z6*z7^5+ 2242*z2*z4^2*z6*z7^5+
    2242*z3*z4^2*z6*z7^5- 11*z4^3*z6*z7^5- 4484*z2*z3*z5*z6*z7^5+
    3396*z2*z4*z5*z6*z7^5+ 3396*z3*z4*z5*z6*z7^5+ 2242*z4^2*z5*z6*z7^5+
    2242*z2*z3*z4*z7^6- 11*z2*z4^2*z7^6- 11*z3*z4^2*z7^6- 1110*z4^3*z7^6-
    1121*z2*z3*z5*z7^6+ 2242*z2*z4*z5*z7^6+ 2242*z3*z4*z5*z7^6- 11*z4^2*z5*z7^6-
    1121*z2*z3*z6*z7^6+ 2242*z2*z4*z6*z7^6+ 2242*z3*z4*z6*z7^6- 11*z4^2*z6*z7^6-
    1121*z2*z5*z6*z7^6- 1121*z3*z5*z6*z7^6+ 2242*z4*z5*z6*z7^6+ 3363*z2*z3*z7^7-
    11*z2*z4*z7^7- 11*z3*z4*z7^7- 1110*z4^2*z7^7+ 3363*z2*z5*z7^7+
    3363*z3*z5*z7^7- 11*z4*z5*z7^7+ 3363*z2*z6*z7^7+ 3363*z3*z6*z7^7-
    11*z4*z6*z7^7+ 3363*z5*z6*z7^7- 3374*z2*z7^8- 3374*z3*z7^8- 1110*z4*z7^8-
    3374*z5*z7^8- 3374*z6*z7^8+ 2264*z7^9+ 2740*z2*z3*z4^5+ 147*z2*z4^6+
    147*z3*z4^6+ 2604*z4^7+ 4495*z2*z3*z4^4*z5+ 2740*z2*z4^5*z5+
    2740*z3*z4^5*z5+ 147*z4^6*z5+ 4495*z2*z3*z4^4*z6+ 2740*z2*z4^5*z6+
    2740*z3*z4^5*z6+ 147*z4^6*z6+ 1755*z2*z3*z4^3*z5*z6+ 4495*z2*z4^4*z5*z6+
    4495*z3*z4^4*z5*z6+ 2740*z4^5*z5*z6- 1766*z2*z3*z4^4*z7+ 2887*z2*z4^5*z7+
    2887*z3*z4^5*z7+ 2751*z4^6*z7- 2751*z2*z3*z4^3*z5*z7- 1766*z2*z4^4*z5*z7-
    1766*z3*z4^4*z5*z7+ 2887*z4^5*z5*z7- 2751*z2*z3*z4^3*z6*z7-
    1766*z2*z4^4*z6*z7- 1766*z3*z4^4*z6*z7+ 2887*z4^5*z6*z7-
    2887*z2*z3*z4^2*z5*z6*z7- 2751*z2*z4^3*z5*z6*z7- 2751*z3*z4^3*z5*z6*z7-
    1766*z4^4*z5*z6*z7- 1766*z2*z3*z4^3*z7^2+ 2887*z2*z4^4*z7^2+
    2887*z3*z4^4*z7^2+ 2751*z4^5*z7^2- 2751*z2*z3*z4^2*z5*z7^2-
    1766*z2*z4^3*z5*z7^2- 1766*z3*z4^3*z5*z7^2+ 2887*z4^4*z5*z7^2-
    2751*z2*z3*z4^2*z6*z7^2- 1766*z2*z4^3*z6*z7^2- 1766*z3*z4^3*z6*z7^2+
    2887*z4^4*z6*z7^2- 2887*z2*z3*z4*z5*z6*z7^2- 2751*z2*z4^2*z5*z6*z7^2-
    2751*z3*z4^2*z5*z6*z7^2- 1766*z4^3*z5*z6*z7^2- 1766*z2*z3*z4^2*z7^3+
    2887*z2*z4^3*z7^3+ 2887*z3*z4^3*z7^3+ 2751*z4^4*z7^3- 2751*z2*z3*z4*z5*z7^3-
    1766*z2*z4^2*z5*z7^3- 1766*z3*z4^2*z5*z7^3+ 2887*z4^3*z5*z7^3-
    2751*z2*z3*z4*z6*z7^3- 1766*z2*z4^2*z6*z7^3- 1766*z3*z4^2*z6*z7^3+
    2887*z4^3*z6*z7^3+ 1755*z2*z3*z5*z6*z7^3- 2751*z2*z4*z5*z6*z7^3-
    2751*z3*z4*z5*z6*z7^3- 1766*z4^2*z5*z6*z7^3- 1766*z2*z3*z4*z7^4+
    2887*z2*z4^2*z7^4+ 2887*z3*z4^2*z7^4+ 2751*z4^3*z7^4+ 4495*z2*z3*z5*z7^4-
    1766*z2*z4*z5*z7^4- 1766*z3*z4*z5*z7^4+ 2887*z4^2*z5*z7^4+
    4495*z2*z3*z6*z7^4- 1766*z2*z4*z6*z7^4- 1766*z3*z4*z6*z7^4+
    2887*z4^2*z6*z7^4+ 4495*z2*z5*z6*z7^4+ 4495*z3*z5*z6*z7^4-
    1766*z4*z5*z6*z7^4+ 2740*z2*z3*z7^5+ 2887*z2*z4*z7^5+ 2887*z3*z4*z7^5+
    2751*z4^2*z7^5+ 2740*z2*z5*z7^5+ 2740*z3*z5*z7^5+ 2887*z4*z5*z7^5+
    2740*z2*z6*z7^5+ 2740*z3*z6*z7^5+ 2887*z4*z6*z7^5+ 2740*z5*z6*z7^5+
    147*z2*z7^6+ 147*z3*z7^6+ 2751*z4*z7^6+ 147*z5*z7^6+ 147*z6*z7^6+ 2604*z7^7+
    3588*z2*z3*z4^3+ 318*z2*z4^4+ 318*z3*z4^4+ 2037*z4^5- 2988*z2*z3*z4^2*z5+
    3588*z2*z4^3*z5+ 3588*z3*z4^3*z5+ 318*z4^4*z5- 2988*z2*z3*z4^2*z6+
    3588*z2*z4^3*z6+ 3588*z3*z4^3*z6+ 318*z4^4*z6+ 633*z2*z3*z4*z5*z6-
    2988*z2*z4^2*z5*z6- 2988*z3*z4^2*z5*z6+ 3588*z4^3*z5*z6+ 600*z2*z3*z4^2*z7+
    3906*z2*z4^3*z7+ 3906*z3*z4^3*z7+ 2355*z4^4*z7- 2355*z2*z3*z4*z5*z7+
    600*z2*z4^2*z5*z7+ 600*z3*z4^2*z5*z7+ 3906*z4^3*z5*z7- 2355*z2*z3*z4*z6*z7+
    600*z2*z4^2*z6*z7+ 600*z3*z4^2*z6*z7+ 3906*z4^3*z6*z7+ 633*z2*z3*z5*z6*z7-
    2355*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7+ 600*z4^2*z5*z6*z7+
    600*z2*z3*z4*z7^2+ 3906*z2*z4^2*z7^2+ 3906*z3*z4^2*z7^2+ 2355*z4^3*z7^2-
    2988*z2*z3*z5*z7^2+ 600*z2*z4*z5*z7^2+ 600*z3*z4*z5*z7^2+ 3906*z4^2*z5*z7^2-
    2988*z2*z3*z6*z7^2+ 600*z2*z4*z6*z7^2+ 600*z3*z4*z6*z7^2+ 3906*z4^2*z6*z7^2-
    2988*z2*z5*z6*z7^2- 2988*z3*z5*z6*z7^2+ 600*z4*z5*z6*z7^2+ 3588*z2*z3*z7^3+
    3906*z2*z4*z7^3+ 3906*z3*z4*z7^3+ 2355*z4^2*z7^3+ 3588*z2*z5*z7^3+
    3588*z3*z5*z7^3+ 3906*z4*z5*z7^3+ 3588*z2*z6*z7^3+ 3588*z3*z6*z7^3+
    3906*z4*z6*z7^3+ 3588*z5*z6*z7^3+ 318*z2*z7^4+ 318*z3*z7^4+ 2355*z4*z7^4+
    318*z5*z7^4+ 318*z6*z7^4+ 2037*z7^5- 2202*z2*z3*z4- 1776*z2*z4^2-
    1776*z3*z4^2+ 2166*z4^3- 1068*z2*z3*z5- 2202*z2*z4*z5- 2202*z3*z4*z5-
    1776*z4^2*z5- 1068*z2*z3*z6- 2202*z2*z4*z6- 2202*z3*z4*z6- 1776*z4^2*z6-
    1068*z2*z5*z6- 1068*z3*z5*z6- 2202*z4*z5*z6- 2202*z2*z3*z7- 3978*z2*z4*z7-
    3978*z3*z4*z7+ 390*z4^2*z7- 2202*z2*z5*z7- 2202*z3*z5*z7- 3978*z4*z5*z7-
    2202*z2*z6*z7- 2202*z3*z6*z7- 3978*z4*z6*z7- 2202*z5*z6*z7- 1776*z2*z7^2-
    1776*z3*z7^2+ 390*z4*z7^2- 1776*z5*z7^2- 1776*z6*z7^2+ 2166*z7^3+ 3538*z2+
    3538*z3- 1169*z4+ 3538*z5+ 3538*z6- 1169*z7",
    "-8*z2*z3*z4*z5^12+ 6*z2*z3*z5^13+ 6*z2*z4*z5^13+ 6*z3*z4*z5^13- 4*z2*z5^14-
    4*z3*z5^14- 4*z4*z5^14+ 2*z5^15+ 2*z2*z3*z4*z5^11*z6- 2*z2*z3*z5^12*z6-
    2*z2*z4*z5^12*z6- 2*z3*z4*z5^12*z6+ 2*z2*z5^13*z6+ 2*z3*z5^13*z6+
    2*z4*z5^13*z6- 2*z5^14*z6+ 2*z2*z3*z4*z5^10*z6^2- 2*z2*z3*z5^11*z6^2-
    2*z2*z4*z5^11*z6^2- 2*z3*z4*z5^11*z6^2+ 2*z2*z5^12*z6^2+ 2*z3*z5^12*z6^2+
    2*z4*z5^12*z6^2- 2*z5^13*z6^2+ 2*z2*z3*z4*z5^9*z6^3- 2*z2*z3*z5^10*z6^3-
    2*z2*z4*z5^10*z6^3- 2*z3*z4*z5^10*z6^3+ 2*z2*z5^11*z6^3+ 2*z3*z5^11*z6^3+
    2*z4*z5^11*z6^3- 2*z5^12*z6^3+ 2*z2*z3*z4*z5^8*z6^4- 2*z2*z3*z5^9*z6^4-
    2*z2*z4*z5^9*z6^4- 2*z3*z4*z5^9*z6^4+ 2*z2*z5^10*z6^4+ 2*z3*z5^10*z6^4+
    2*z4*z5^10*z6^4- 2*z5^11*z6^4+ 2*z2*z3*z4*z5^7*z6^5- 2*z2*z3*z5^8*z6^5-
    2*z2*z4*z5^8*z6^5- 2*z3*z4*z5^8*z6^5+ 2*z2*z5^9*z6^5+ 2*z3*z5^9*z6^5+
    2*z4*z5^9*z6^5- 2*z5^10*z6^5+ 2*z2*z3*z4*z5^6*z6^6- 2*z2*z3*z5^7*z6^6-
    2*z2*z4*z5^7*z6^6- 2*z3*z4*z5^7*z6^6+ 2*z2*z5^8*z6^6+ 2*z3*z5^8*z6^6+
    2*z4*z5^8*z6^6- 2*z5^9*z6^6+ 2*z2*z3*z4*z5^5*z6^7- 2*z2*z3*z5^6*z6^7-
    2*z2*z4*z5^6*z6^7- 2*z3*z4*z5^6*z6^7+ 2*z2*z5^7*z6^7+ 2*z3*z5^7*z6^7+
    2*z4*z5^7*z6^7- 2*z5^8*z6^7+ 2*z2*z3*z4*z5^4*z6^8- 2*z2*z3*z5^5*z6^8-
    2*z2*z4*z5^5*z6^8- 2*z3*z4*z5^5*z6^8+ 2*z2*z5^6*z6^8+ 2*z3*z5^6*z6^8+
    2*z4*z5^6*z6^8- 2*z5^7*z6^8+ 2*z2*z3*z4*z5^3*z6^9- 2*z2*z3*z5^4*z6^9-
    2*z2*z4*z5^4*z6^9- 2*z3*z4*z5^4*z6^9+ 2*z2*z5^5*z6^9+ 2*z3*z5^5*z6^9+
    2*z4*z5^5*z6^9- 2*z5^6*z6^9+ 2*z2*z3*z4*z5^2*z6^10- 2*z2*z3*z5^3*z6^10-
    2*z2*z4*z5^3*z6^10- 2*z3*z4*z5^3*z6^10+ 2*z2*z5^4*z6^10+ 2*z3*z5^4*z6^10+
    2*z4*z5^4*z6^10- 2*z5^5*z6^10+ 2*z2*z3*z4*z5*z6^11- 2*z2*z3*z5^2*z6^11-
    2*z2*z4*z5^2*z6^11- 2*z3*z4*z5^2*z6^11+ 2*z2*z5^3*z6^11+ 2*z3*z5^3*z6^11+
    2*z4*z5^3*z6^11- 2*z5^4*z6^11- 8*z2*z3*z4*z6^12- 2*z2*z3*z5*z6^12-
    2*z2*z4*z5*z6^12- 2*z3*z4*z5*z6^12+ 2*z2*z5^2*z6^12+ 2*z3*z5^2*z6^12+
    2*z4*z5^2*z6^12- 2*z5^3*z6^12+ 6*z2*z3*z6^13+ 6*z2*z4*z6^13+ 6*z3*z4*z6^13+
    2*z2*z5*z6^13+ 2*z3*z5*z6^13+ 2*z4*z5*z6^13- 2*z5^2*z6^13- 4*z2*z6^14-
    4*z3*z6^14- 4*z4*z6^14- 2*z5*z6^14+ 2*z6^15+ 10*z2*z3*z4*z5^11*z7-
    8*z2*z3*z5^12*z7- 8*z2*z4*z5^12*z7- 8*z3*z4*z5^12*z7+ 6*z2*z5^13*z7+
    6*z3*z5^13*z7+ 6*z4*z5^13*z7- 4*z5^14*z7- 2*z2*z3*z4*z5^10*z6*z7+
    2*z2*z3*z5^11*z6*z7+ 2*z2*z4*z5^11*z6*z7+ 2*z3*z4*z5^11*z6*z7-
    2*z2*z5^12*z6*z7- 2*z3*z5^12*z6*z7- 2*z4*z5^12*z6*z7+ 2*z5^13*z6*z7-
    2*z2*z3*z4*z5^9*z6^2*z7+ 2*z2*z3*z5^10*z6^2*z7+ 2*z2*z4*z5^10*z6^2*z7+
    2*z3*z4*z5^10*z6^2*z7- 2*z2*z5^11*z6^2*z7- 2*z3*z5^11*z6^2*z7-
    2*z4*z5^11*z6^2*z7+ 2*z5^12*z6^2*z7- 2*z2*z3*z4*z5^8*z6^3*z7+
    2*z2*z3*z5^9*z6^3*z7+ 2*z2*z4*z5^9*z6^3*z7+ 2*z3*z4*z5^9*z6^3*z7-
    2*z2*z5^10*z6^3*z7- 2*z3*z5^10*z6^3*z7- 2*z4*z5^10*z6^3*z7+ 2*z5^11*z6^3*z7-
    2*z2*z3*z4*z5^7*z6^4*z7+ 2*z2*z3*z5^8*z6^4*z7+ 2*z2*z4*z5^8*z6^4*z7+
    2*z3*z4*z5^8*z6^4*z7- 2*z2*z5^9*z6^4*z7- 2*z3*z5^9*z6^4*z7-
    2*z4*z5^9*z6^4*z7+ 2*z5^10*z6^4*z7- 2*z2*z3*z4*z5^6*z6^5*z7+
    2*z2*z3*z5^7*z6^5*z7+ 2*z2*z4*z5^7*z6^5*z7+ 2*z3*z4*z5^7*z6^5*z7-
    2*z2*z5^8*z6^5*z7- 2*z3*z5^8*z6^5*z7- 2*z4*z5^8*z6^5*z7+ 2*z5^9*z6^5*z7-
    2*z2*z3*z4*z5^5*z6^6*z7+ 2*z2*z3*z5^6*z6^6*z7+ 2*z2*z4*z5^6*z6^6*z7+
    2*z3*z4*z5^6*z6^6*z7- 2*z2*z5^7*z6^6*z7- 2*z3*z5^7*z6^6*z7-
    2*z4*z5^7*z6^6*z7+ 2*z5^8*z6^6*z7- 2*z2*z3*z4*z5^4*z6^7*z7+
    2*z2*z3*z5^5*z6^7*z7+ 2*z2*z4*z5^5*z6^7*z7+ 2*z3*z4*z5^5*z6^7*z7-
    2*z2*z5^6*z6^7*z7- 2*z3*z5^6*z6^7*z7- 2*z4*z5^6*z6^7*z7+ 2*z5^7*z6^7*z7-
    2*z2*z3*z4*z5^3*z6^8*z7+ 2*z2*z3*z5^4*z6^8*z7+ 2*z2*z4*z5^4*z6^8*z7+
    2*z3*z4*z5^4*z6^8*z7- 2*z2*z5^5*z6^8*z7- 2*z3*z5^5*z6^8*z7-
    2*z4*z5^5*z6^8*z7+ 2*z5^6*z6^8*z7- 2*z2*z3*z4*z5^2*z6^9*z7+
    2*z2*z3*z5^3*z6^9*z7+ 2*z2*z4*z5^3*z6^9*z7+ 2*z3*z4*z5^3*z6^9*z7-
    2*z2*z5^4*z6^9*z7- 2*z3*z5^4*z6^9*z7- 2*z4*z5^4*z6^9*z7+ 2*z5^5*z6^9*z7-
    2*z2*z3*z4*z5*z6^10*z7+ 2*z2*z3*z5^2*z6^10*z7+ 2*z2*z4*z5^2*z6^10*z7+
    2*z3*z4*z5^2*z6^10*z7- 2*z2*z5^3*z6^10*z7- 2*z3*z5^3*z6^10*z7-
    2*z4*z5^3*z6^10*z7+ 2*z5^4*z6^10*z7+ 10*z2*z3*z4*z6^11*z7+
    2*z2*z3*z5*z6^11*z7+ 2*z2*z4*z5*z6^11*z7+ 2*z3*z4*z5*z6^11*z7-
    2*z2*z5^2*z6^11*z7- 2*z3*z5^2*z6^11*z7- 2*z4*z5^2*z6^11*z7+ 2*z5^3*z6^11*z7-
    8*z2*z3*z6^12*z7- 8*z2*z4*z6^12*z7- 8*z3*z4*z6^12*z7- 2*z2*z5*z6^12*z7-
    2*z3*z5*z6^12*z7- 2*z4*z5*z6^12*z7+ 2*z5^2*z6^12*z7+ 6*z2*z6^13*z7+
    6*z3*z6^13*z7+ 6*z4*z6^13*z7+ 2*z5*z6^13*z7- 4*z6^14*z7+ z2*z3*z4*z5^10+
    10*z2*z3*z5^11+ 10*z2*z4*z5^11+ 10*z3*z4*z5^11- 13*z2*z5^12- 13*z3*z5^12-
    13*z4*z5^12+ 10*z5^13- 21*z2*z3*z4*z5^9*z6+ 11*z2*z3*z5^10*z6+
    11*z2*z4*z5^10*z6+ 11*z3*z4*z5^10*z6- 3*z2*z5^11*z6- 3*z3*z5^11*z6-
    3*z4*z5^11*z6- 3*z5^12*z6- 21*z2*z3*z4*z5^8*z6^2+ 11*z2*z3*z5^9*z6^2+
    11*z2*z4*z5^9*z6^2+ 11*z3*z4*z5^9*z6^2- 3*z2*z5^10*z6^2- 3*z3*z5^10*z6^2-
    3*z4*z5^10*z6^2- 3*z5^11*z6^2- 21*z2*z3*z4*z5^7*z6^3+ 11*z2*z3*z5^8*z6^3+
    11*z2*z4*z5^8*z6^3+ 11*z3*z4*z5^8*z6^3- 3*z2*z5^9*z6^3- 3*z3*z5^9*z6^3-
    3*z4*z5^9*z6^3- 3*z5^10*z6^3- 21*z2*z3*z4*z5^6*z6^4+ 11*z2*z3*z5^7*z6^4+
    11*z2*z4*z5^7*z6^4+ 11*z3*z4*z5^7*z6^4- 3*z2*z5^8*z6^4- 3*z3*z5^8*z6^4-
    3*z4*z5^8*z6^4- 3*z5^9*z6^4- 21*z2*z3*z4*z5^5*z6^5+ 11*z2*z3*z5^6*z6^5+
    11*z2*z4*z5^6*z6^5+ 11*z3*z4*z5^6*z6^5- 3*z2*z5^7*z6^5- 3*z3*z5^7*z6^5-
    3*z4*z5^7*z6^5- 3*z5^8*z6^5- 21*z2*z3*z4*z5^4*z6^6+ 11*z2*z3*z5^5*z6^6+
    11*z2*z4*z5^5*z6^6+ 11*z3*z4*z5^5*z6^6- 3*z2*z5^6*z6^6- 3*z3*z5^6*z6^6-
    3*z4*z5^6*z6^6- 3*z5^7*z6^6- 21*z2*z3*z4*z5^3*z6^7+ 11*z2*z3*z5^4*z6^7+
    11*z2*z4*z5^4*z6^7+ 11*z3*z4*z5^4*z6^7- 3*z2*z5^5*z6^7- 3*z3*z5^5*z6^7-
    3*z4*z5^5*z6^7- 3*z5^6*z6^7- 21*z2*z3*z4*z5^2*z6^8+ 11*z2*z3*z5^3*z6^8+
    11*z2*z4*z5^3*z6^8+ 11*z3*z4*z5^3*z6^8- 3*z2*z5^4*z6^8- 3*z3*z5^4*z6^8-
    3*z4*z5^4*z6^8- 3*z5^5*z6^8- 21*z2*z3*z4*z5*z6^9+ 11*z2*z3*z5^2*z6^9+
    11*z2*z4*z5^2*z6^9+ 11*z3*z4*z5^2*z6^9- 3*z2*z5^3*z6^9- 3*z3*z5^3*z6^9-
    3*z4*z5^3*z6^9- 3*z5^4*z6^9+ z2*z3*z4*z6^10+ 11*z2*z3*z5*z6^10+
    11*z2*z4*z5*z6^10+ 11*z3*z4*z5*z6^10- 3*z2*z5^2*z6^10- 3*z3*z5^2*z6^10-
    3*z4*z5^2*z6^10- 3*z5^3*z6^10+ 10*z2*z3*z6^11+ 10*z2*z4*z6^11+
    10*z3*z4*z6^11- 3*z2*z5*z6^11- 3*z3*z5*z6^11- 3*z4*z5*z6^11- 3*z5^2*z6^11-
    13*z2*z6^12- 13*z3*z6^12- 13*z4*z6^12- 3*z5*z6^12+ 10*z6^13-
    22*z2*z3*z4*z5^9*z7+ z2*z3*z5^10*z7+ z2*z4*z5^10*z7+ z3*z4*z5^10*z7+
    10*z2*z5^11*z7+ 10*z3*z5^11*z7+ 10*z4*z5^11*z7- 13*z5^12*z7+
    33*z2*z3*z4*z5^8*z6*z7- 21*z2*z3*z5^9*z6*z7- 21*z2*z4*z5^9*z6*z7-
    21*z3*z4*z5^9*z6*z7+ 11*z2*z5^10*z6*z7+ 11*z3*z5^10*z6*z7+
    11*z4*z5^10*z6*z7- 3*z5^11*z6*z7+ 33*z2*z3*z4*z5^7*z6^2*z7-
    21*z2*z3*z5^8*z6^2*z7- 21*z2*z4*z5^8*z6^2*z7- 21*z3*z4*z5^8*z6^2*z7+
    11*z2*z5^9*z6^2*z7+ 11*z3*z5^9*z6^2*z7+ 11*z4*z5^9*z6^2*z7- 3*z5^10*z6^2*z7+
    33*z2*z3*z4*z5^6*z6^3*z7- 21*z2*z3*z5^7*z6^3*z7- 21*z2*z4*z5^7*z6^3*z7-
    21*z3*z4*z5^7*z6^3*z7+ 11*z2*z5^8*z6^3*z7+ 11*z3*z5^8*z6^3*z7+
    11*z4*z5^8*z6^3*z7- 3*z5^9*z6^3*z7+ 33*z2*z3*z4*z5^5*z6^4*z7-
    21*z2*z3*z5^6*z6^4*z7- 21*z2*z4*z5^6*z6^4*z7- 21*z3*z4*z5^6*z6^4*z7+
    11*z2*z5^7*z6^4*z7+ 11*z3*z5^7*z6^4*z7+ 11*z4*z5^7*z6^4*z7- 3*z5^8*z6^4*z7+
    33*z2*z3*z4*z5^4*z6^5*z7- 21*z2*z3*z5^5*z6^5*z7- 21*z2*z4*z5^5*z6^5*z7-
    21*z3*z4*z5^5*z6^5*z7+ 11*z2*z5^6*z6^5*z7+ 11*z3*z5^6*z6^5*z7+
    11*z4*z5^6*z6^5*z7- 3*z5^7*z6^5*z7+ 33*z2*z3*z4*z5^3*z6^6*z7-
    21*z2*z3*z5^4*z6^6*z7- 21*z2*z4*z5^4*z6^6*z7- 21*z3*z4*z5^4*z6^6*z7+
    11*z2*z5^5*z6^6*z7+ 11*z3*z5^5*z6^6*z7+ 11*z4*z5^5*z6^6*z7- 3*z5^6*z6^6*z7+
    33*z2*z3*z4*z5^2*z6^7*z7- 21*z2*z3*z5^3*z6^7*z7- 21*z2*z4*z5^3*z6^7*z7-
    21*z3*z4*z5^3*z6^7*z7+ 11*z2*z5^4*z6^7*z7+ 11*z3*z5^4*z6^7*z7+
    11*z4*z5^4*z6^7*z7- 3*z5^5*z6^7*z7+ 33*z2*z3*z4*z5*z6^8*z7-
    21*z2*z3*z5^2*z6^8*z7- 21*z2*z4*z5^2*z6^8*z7- 21*z3*z4*z5^2*z6^8*z7+
    11*z2*z5^3*z6^8*z7+ 11*z3*z5^3*z6^8*z7+ 11*z4*z5^3*z6^8*z7- 3*z5^4*z6^8*z7-
    22*z2*z3*z4*z6^9*z7- 21*z2*z3*z5*z6^9*z7- 21*z2*z4*z5*z6^9*z7-
    21*z3*z4*z5*z6^9*z7+ 11*z2*z5^2*z6^9*z7+ 11*z3*z5^2*z6^9*z7+
    11*z4*z5^2*z6^9*z7- 3*z5^3*z6^9*z7+ z2*z3*z6^10*z7+ z2*z4*z6^10*z7+
    z3*z4*z6^10*z7+ 11*z2*z5*z6^10*z7+ 11*z3*z5*z6^10*z7+ 11*z4*z5*z6^10*z7-
    3*z5^2*z6^10*z7+ 10*z2*z6^11*z7+ 10*z3*z6^11*z7+ 10*z4*z6^11*z7-
    3*z5*z6^11*z7- 13*z6^12*z7- 2231*z2*z3*z4*z5^8+ 1121*z2*z3*z5^9+
    1121*z2*z4*z5^9+ 1121*z3*z4*z5^9- 12*z2*z5^10- 12*z3*z5^10- 12*z4*z5^10-
    1107*z5^11+ 1132*z2*z3*z4*z5^7*z6- 1110*z2*z3*z5^8*z6- 1110*z2*z4*z5^8*z6-
    1110*z3*z4*z5^8*z6+ 1109*z2*z5^9*z6+ 1109*z3*z5^9*z6+ 1109*z4*z5^9*z6-
    1119*z5^10*z6+ 1132*z2*z3*z4*z5^6*z6^2- 1110*z2*z3*z5^7*z6^2-
    1110*z2*z4*z5^7*z6^2- 1110*z3*z4*z5^7*z6^2+ 1109*z2*z5^8*z6^2+
    1109*z3*z5^8*z6^2+ 1109*z4*z5^8*z6^2- 1119*z5^9*z6^2+
    1132*z2*z3*z4*z5^5*z6^3- 1110*z2*z3*z5^6*z6^3- 1110*z2*z4*z5^6*z6^3-
    1110*z3*z4*z5^6*z6^3+ 1109*z2*z5^7*z6^3+ 1109*z3*z5^7*z6^3+
    1109*z4*z5^7*z6^3- 1119*z5^8*z6^3+ 1132*z2*z3*z4*z5^4*z6^4-
    1110*z2*z3*z5^5*z6^4- 1110*z2*z4*z5^5*z6^4- 1110*z3*z4*z5^5*z6^4+
    1109*z2*z5^6*z6^4+ 1109*z3*z5^6*z6^4+ 1109*z4*z5^6*z6^4- 1119*z5^7*z6^4+
    1132*z2*z3*z4*z5^3*z6^5- 1110*z2*z3*z5^4*z6^5- 1110*z2*z4*z5^4*z6^5-
    1110*z3*z4*z5^4*z6^5+ 1109*z2*z5^5*z6^5+ 1109*z3*z5^5*z6^5+
    1109*z4*z5^5*z6^5- 1119*z5^6*z6^5+ 1132*z2*z3*z4*z5^2*z6^6-
    1110*z2*z3*z5^3*z6^6- 1110*z2*z4*z5^3*z6^6- 1110*z3*z4*z5^3*z6^6+
    1109*z2*z5^4*z6^6+ 1109*z3*z5^4*z6^6+ 1109*z4*z5^4*z6^6- 1119*z5^5*z6^6+
    1132*z2*z3*z4*z5*z6^7- 1110*z2*z3*z5^2*z6^7- 1110*z2*z4*z5^2*z6^7-
    1110*z3*z4*z5^2*z6^7+ 1109*z2*z5^3*z6^7+ 1109*z3*z5^3*z6^7+
    1109*z4*z5^3*z6^7- 1119*z5^4*z6^7- 2231*z2*z3*z4*z6^8- 1110*z2*z3*z5*z6^8-
    1110*z2*z4*z5*z6^8- 1110*z3*z4*z5*z6^8+ 1109*z2*z5^2*z6^8+
    1109*z3*z5^2*z6^8+ 1109*z4*z5^2*z6^8- 1119*z5^3*z6^8+ 1121*z2*z3*z6^9+
    1121*z2*z4*z6^9+ 1121*z3*z4*z6^9+ 1109*z2*z5*z6^9+ 1109*z3*z5*z6^9+
    1109*z4*z5*z6^9- 1119*z5^2*z6^9- 12*z2*z6^10- 12*z3*z6^10- 12*z4*z6^10-
    1119*z5*z6^10- 1107*z6^11+ 3363*z2*z3*z4*z5^7*z7- 2231*z2*z3*z5^8*z7-
    2231*z2*z4*z5^8*z7- 2231*z3*z4*z5^8*z7+ 1121*z2*z5^9*z7+ 1121*z3*z5^9*z7+
    1121*z4*z5^9*z7- 12*z5^10*z7- 1187*z2*z3*z4*z5^6*z6*z7+
    1132*z2*z3*z5^7*z6*z7+ 1132*z2*z4*z5^7*z6*z7+ 1132*z3*z4*z5^7*z6*z7-
    1110*z2*z5^8*z6*z7- 1110*z3*z5^8*z6*z7- 1110*z4*z5^8*z6*z7+ 1109*z5^9*z6*z7-
    1187*z2*z3*z4*z5^5*z6^2*z7+ 1132*z2*z3*z5^6*z6^2*z7+
    1132*z2*z4*z5^6*z6^2*z7+ 1132*z3*z4*z5^6*z6^2*z7- 1110*z2*z5^7*z6^2*z7-
    1110*z3*z5^7*z6^2*z7- 1110*z4*z5^7*z6^2*z7+ 1109*z5^8*z6^2*z7-
    1187*z2*z3*z4*z5^4*z6^3*z7+ 1132*z2*z3*z5^5*z6^3*z7+
    1132*z2*z4*z5^5*z6^3*z7+ 1132*z3*z4*z5^5*z6^3*z7- 1110*z2*z5^6*z6^3*z7-
    1110*z3*z5^6*z6^3*z7- 1110*z4*z5^6*z6^3*z7+ 1109*z5^7*z6^3*z7-
    1187*z2*z3*z4*z5^3*z6^4*z7+ 1132*z2*z3*z5^4*z6^4*z7+
    1132*z2*z4*z5^4*z6^4*z7+ 1132*z3*z4*z5^4*z6^4*z7- 1110*z2*z5^5*z6^4*z7-
    1110*z3*z5^5*z6^4*z7- 1110*z4*z5^5*z6^4*z7+ 1109*z5^6*z6^4*z7-
    1187*z2*z3*z4*z5^2*z6^5*z7+ 1132*z2*z3*z5^3*z6^5*z7+
    1132*z2*z4*z5^3*z6^5*z7+ 1132*z3*z4*z5^3*z6^5*z7- 1110*z2*z5^4*z6^5*z7-
    1110*z3*z5^4*z6^5*z7- 1110*z4*z5^4*z6^5*z7+ 1109*z5^5*z6^5*z7-
    1187*z2*z3*z4*z5*z6^6*z7+ 1132*z2*z3*z5^2*z6^6*z7+ 1132*z2*z4*z5^2*z6^6*z7+
    1132*z3*z4*z5^2*z6^6*z7- 1110*z2*z5^3*z6^6*z7- 1110*z3*z5^3*z6^6*z7-
    1110*z4*z5^3*z6^6*z7+ 1109*z5^4*z6^6*z7+ 3363*z2*z3*z4*z6^7*z7+
    1132*z2*z3*z5*z6^7*z7+ 1132*z2*z4*z5*z6^7*z7+ 1132*z3*z4*z5*z6^7*z7-
    1110*z2*z5^2*z6^7*z7- 1110*z3*z5^2*z6^7*z7- 1110*z4*z5^2*z6^7*z7+
    1109*z5^3*z6^7*z7- 2231*z2*z3*z6^8*z7- 2231*z2*z4*z6^8*z7-
    2231*z3*z4*z6^8*z7- 1110*z2*z5*z6^8*z7- 1110*z3*z5*z6^8*z7-
    1110*z4*z5*z6^8*z7+ 1109*z5^2*z6^8*z7+ 1121*z2*z6^9*z7+ 1121*z3*z6^9*z7+
    1121*z4*z6^9*z7+ 1109*z5*z6^9*z7- 12*z6^10*z7- 1121*z2*z3*z4*z5^6+
    3363*z2*z3*z5^7+ 3363*z2*z4*z5^7+ 3363*z3*z4*z5^7- 3374*z2*z5^8-
    3374*z3*z5^8- 3374*z4*z5^8+ 2264*z5^9+ 3396*z2*z3*z4*z5^5*z6+
    2242*z2*z3*z5^6*z6+ 2242*z2*z4*z5^6*z6+ 2242*z3*z4*z5^6*z6- 11*z2*z5^7*z6-
    11*z3*z5^7*z6- 11*z4*z5^7*z6- 1110*z5^8*z6+ 3396*z2*z3*z4*z5^4*z6^2+
    2242*z2*z3*z5^5*z6^2+ 2242*z2*z4*z5^5*z6^2+ 2242*z3*z4*z5^5*z6^2-
    11*z2*z5^6*z6^2- 11*z3*z5^6*z6^2- 11*z4*z5^6*z6^2- 1110*z5^7*z6^2+
    3396*z2*z3*z4*z5^3*z6^3+ 2242*z2*z3*z5^4*z6^3+ 2242*z2*z4*z5^4*z6^3+
    2242*z3*z4*z5^4*z6^3- 11*z2*z5^5*z6^3- 11*z3*z5^5*z6^3- 11*z4*z5^5*z6^3-
    1110*z5^6*z6^3+ 3396*z2*z3*z4*z5^2*z6^4+ 2242*z2*z3*z5^3*z6^4+
    2242*z2*z4*z5^3*z6^4+ 2242*z3*z4*z5^3*z6^4- 11*z2*z5^4*z6^4-
    11*z3*z5^4*z6^4- 11*z4*z5^4*z6^4- 1110*z5^5*z6^4+ 3396*z2*z3*z4*z5*z6^5+
    2242*z2*z3*z5^2*z6^5+ 2242*z2*z4*z5^2*z6^5+ 2242*z3*z4*z5^2*z6^5-
    11*z2*z5^3*z6^5- 11*z3*z5^3*z6^5- 11*z4*z5^3*z6^5- 1110*z5^4*z6^5-
    1121*z2*z3*z4*z6^6+ 2242*z2*z3*z5*z6^6+ 2242*z2*z4*z5*z6^6+
    2242*z3*z4*z5*z6^6- 11*z2*z5^2*z6^6- 11*z3*z5^2*z6^6- 11*z4*z5^2*z6^6-
    1110*z5^3*z6^6+ 3363*z2*z3*z6^7+ 3363*z2*z4*z6^7+ 3363*z3*z4*z6^7-
    11*z2*z5*z6^7- 11*z3*z5*z6^7- 11*z4*z5*z6^7- 1110*z5^2*z6^7- 3374*z2*z6^8-
    3374*z3*z6^8- 3374*z4*z6^8- 1110*z5*z6^8+ 2264*z6^9- 4484*z2*z3*z4*z5^5*z7-
    1121*z2*z3*z5^6*z7- 1121*z2*z4*z5^6*z7- 1121*z3*z4*z5^6*z7+ 3363*z2*z5^7*z7+
    3363*z3*z5^7*z7+ 3363*z4*z5^7*z7- 3374*z5^8*z7+ 1154*z2*z3*z4*z5^4*z6*z7+
    3396*z2*z3*z5^5*z6*z7+ 3396*z2*z4*z5^5*z6*z7+ 3396*z3*z4*z5^5*z6*z7+
    2242*z2*z5^6*z6*z7+ 2242*z3*z5^6*z6*z7+ 2242*z4*z5^6*z6*z7- 11*z5^7*z6*z7+
    1154*z2*z3*z4*z5^3*z6^2*z7+ 3396*z2*z3*z5^4*z6^2*z7+
    3396*z2*z4*z5^4*z6^2*z7+ 3396*z3*z4*z5^4*z6^2*z7+ 2242*z2*z5^5*z6^2*z7+
    2242*z3*z5^5*z6^2*z7+ 2242*z4*z5^5*z6^2*z7- 11*z5^6*z6^2*z7+
    1154*z2*z3*z4*z5^2*z6^3*z7+ 3396*z2*z3*z5^3*z6^3*z7+
    3396*z2*z4*z5^3*z6^3*z7+ 3396*z3*z4*z5^3*z6^3*z7+ 2242*z2*z5^4*z6^3*z7+
    2242*z3*z5^4*z6^3*z7+ 2242*z4*z5^4*z6^3*z7- 11*z5^5*z6^3*z7+
    1154*z2*z3*z4*z5*z6^4*z7+ 3396*z2*z3*z5^2*z6^4*z7+ 3396*z2*z4*z5^2*z6^4*z7+
    3396*z3*z4*z5^2*z6^4*z7+ 2242*z2*z5^3*z6^4*z7+ 2242*z3*z5^3*z6^4*z7+
    2242*z4*z5^3*z6^4*z7- 11*z5^4*z6^4*z7- 4484*z2*z3*z4*z6^5*z7+
    3396*z2*z3*z5*z6^5*z7+ 3396*z2*z4*z5*z6^5*z7+ 3396*z3*z4*z5*z6^5*z7+
    2242*z2*z5^2*z6^5*z7+ 2242*z3*z5^2*z6^5*z7+ 2242*z4*z5^2*z6^5*z7-
    11*z5^3*z6^5*z7- 1121*z2*z3*z6^6*z7- 1121*z2*z4*z6^6*z7- 1121*z3*z4*z6^6*z7+
    2242*z2*z5*z6^6*z7+ 2242*z3*z5*z6^6*z7+ 2242*z4*z5*z6^6*z7- 11*z5^2*z6^6*z7+
    3363*z2*z6^7*z7+ 3363*z3*z6^7*z7+ 3363*z4*z6^7*z7- 11*z5*z6^7*z7-
    3374*z6^8*z7+ 4495*z2*z3*z4*z5^4+ 2740*z2*z3*z5^5+ 2740*z2*z4*z5^5+
    2740*z3*z4*z5^5+ 147*z2*z5^6+ 147*z3*z5^6+ 147*z4*z5^6+ 2604*z5^7-
    2751*z2*z3*z4*z5^3*z6- 1766*z2*z3*z5^4*z6- 1766*z2*z4*z5^4*z6-
    1766*z3*z4*z5^4*z6+ 2887*z2*z5^5*z6+ 2887*z3*z5^5*z6+ 2887*z4*z5^5*z6+
    2751*z5^6*z6- 2751*z2*z3*z4*z5^2*z6^2- 1766*z2*z3*z5^3*z6^2-
    1766*z2*z4*z5^3*z6^2- 1766*z3*z4*z5^3*z6^2+ 2887*z2*z5^4*z6^2+
    2887*z3*z5^4*z6^2+ 2887*z4*z5^4*z6^2+ 2751*z5^5*z6^2- 2751*z2*z3*z4*z5*z6^3-
    1766*z2*z3*z5^2*z6^3- 1766*z2*z4*z5^2*z6^3- 1766*z3*z4*z5^2*z6^3+
    2887*z2*z5^3*z6^3+ 2887*z3*z5^3*z6^3+ 2887*z4*z5^3*z6^3+ 2751*z5^4*z6^3+
    4495*z2*z3*z4*z6^4- 1766*z2*z3*z5*z6^4- 1766*z2*z4*z5*z6^4-
    1766*z3*z4*z5*z6^4+ 2887*z2*z5^2*z6^4+ 2887*z3*z5^2*z6^4+ 2887*z4*z5^2*z6^4+
    2751*z5^3*z6^4+ 2740*z2*z3*z6^5+ 2740*z2*z4*z6^5+ 2740*z3*z4*z6^5+
    2887*z2*z5*z6^5+ 2887*z3*z5*z6^5+ 2887*z4*z5*z6^5+ 2751*z5^2*z6^5+
    147*z2*z6^6+ 147*z3*z6^6+ 147*z4*z6^6+ 2751*z5*z6^6+ 2604*z6^7+
    1755*z2*z3*z4*z5^3*z7+ 4495*z2*z3*z5^4*z7+ 4495*z2*z4*z5^4*z7+
    4495*z3*z4*z5^4*z7+ 2740*z2*z5^5*z7+ 2740*z3*z5^5*z7+ 2740*z4*z5^5*z7+
    147*z5^6*z7- 2887*z2*z3*z4*z5^2*z6*z7- 2751*z2*z3*z5^3*z6*z7-
    2751*z2*z4*z5^3*z6*z7- 2751*z3*z4*z5^3*z6*z7- 1766*z2*z5^4*z6*z7-
    1766*z3*z5^4*z6*z7- 1766*z4*z5^4*z6*z7+ 2887*z5^5*z6*z7-
    2887*z2*z3*z4*z5*z6^2*z7- 2751*z2*z3*z5^2*z6^2*z7- 2751*z2*z4*z5^2*z6^2*z7-
    2751*z3*z4*z5^2*z6^2*z7- 1766*z2*z5^3*z6^2*z7- 1766*z3*z5^3*z6^2*z7-
    1766*z4*z5^3*z6^2*z7+ 2887*z5^4*z6^2*z7+ 1755*z2*z3*z4*z6^3*z7-
    2751*z2*z3*z5*z6^3*z7- 2751*z2*z4*z5*z6^3*z7- 2751*z3*z4*z5*z6^3*z7-
    1766*z2*z5^2*z6^3*z7- 1766*z3*z5^2*z6^3*z7- 1766*z4*z5^2*z6^3*z7+
    2887*z5^3*z6^3*z7+ 4495*z2*z3*z6^4*z7+ 4495*z2*z4*z6^4*z7+
    4495*z3*z4*z6^4*z7- 1766*z2*z5*z6^4*z7- 1766*z3*z5*z6^4*z7-
    1766*z4*z5*z6^4*z7+ 2887*z5^2*z6^4*z7+ 2740*z2*z6^5*z7+ 2740*z3*z6^5*z7+
    2740*z4*z6^5*z7+ 2887*z5*z6^5*z7+ 147*z6^6*z7- 2988*z2*z3*z4*z5^2+
    3588*z2*z3*z5^3+ 3588*z2*z4*z5^3+ 3588*z3*z4*z5^3+ 318*z2*z5^4+ 318*z3*z5^4+
    318*z4*z5^4+ 2037*z5^5- 2355*z2*z3*z4*z5*z6+ 600*z2*z3*z5^2*z6+
    600*z2*z4*z5^2*z6+ 600*z3*z4*z5^2*z6+ 3906*z2*z5^3*z6+ 3906*z3*z5^3*z6+
    3906*z4*z5^3*z6+ 2355*z5^4*z6- 2988*z2*z3*z4*z6^2+ 600*z2*z3*z5*z6^2+
    600*z2*z4*z5*z6^2+ 600*z3*z4*z5*z6^2+ 3906*z2*z5^2*z6^2+ 3906*z3*z5^2*z6^2+
    3906*z4*z5^2*z6^2+ 2355*z5^3*z6^2+ 3588*z2*z3*z6^3+ 3588*z2*z4*z6^3+
    3588*z3*z4*z6^3+ 3906*z2*z5*z6^3+ 3906*z3*z5*z6^3+ 3906*z4*z5*z6^3+
    2355*z5^2*z6^3+ 318*z2*z6^4+ 318*z3*z6^4+ 318*z4*z6^4+ 2355*z5*z6^4+
    2037*z6^5+ 633*z2*z3*z4*z5*z7- 2988*z2*z3*z5^2*z7- 2988*z2*z4*z5^2*z7-
    2988*z3*z4*z5^2*z7+ 3588*z2*z5^3*z7+ 3588*z3*z5^3*z7+ 3588*z4*z5^3*z7+
    318*z5^4*z7+ 633*z2*z3*z4*z6*z7- 2355*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7-
    2355*z3*z4*z5*z6*z7+ 600*z2*z5^2*z6*z7+ 600*z3*z5^2*z6*z7+
    600*z4*z5^2*z6*z7+ 3906*z5^3*z6*z7- 2988*z2*z3*z6^2*z7- 2988*z2*z4*z6^2*z7-
    2988*z3*z4*z6^2*z7+ 600*z2*z5*z6^2*z7+ 600*z3*z5*z6^2*z7+ 600*z4*z5*z6^2*z7+
    3906*z5^2*z6^2*z7+ 3588*z2*z6^3*z7+ 3588*z3*z6^3*z7+ 3588*z4*z6^3*z7+
    3906*z5*z6^3*z7+ 318*z6^4*z7- 1068*z2*z3*z4- 2202*z2*z3*z5- 2202*z2*z4*z5-
    2202*z3*z4*z5- 1776*z2*z5^2- 1776*z3*z5^2- 1776*z4*z5^2+ 2166*z5^3-
    2202*z2*z3*z6- 2202*z2*z4*z6- 2202*z3*z4*z6- 3978*z2*z5*z6- 3978*z3*z5*z6-
    3978*z4*z5*z6+ 390*z5^2*z6- 1776*z2*z6^2- 1776*z3*z6^2- 1776*z4*z6^2+
    390*z5*z6^2+ 2166*z6^3- 1068*z2*z3*z7- 1068*z2*z4*z7- 1068*z3*z4*z7-
    2202*z2*z5*z7- 2202*z3*z5*z7- 2202*z4*z5*z7- 1776*z5^2*z7- 2202*z2*z6*z7-
    2202*z3*z6*z7- 2202*z4*z6*z7- 3978*z5*z6*z7- 1776*z6^2*z7+ 3538*z2+ 3538*z3+
    3538*z4- 1169*z5- 1169*z6+ 3538*z7",
    "- 8*z2*z3*z4*z5^12+ 6*z2*z3*z5^13+ 6*z2*z4*z5^13+ 6*z3*z4*z5^13-
    4*z2*z5^14- 4*z3*z5^14- 4*z4*z5^14+ 2*z5^15+ 10*z2*z3*z4*z5^11*z6-
    8*z2*z3*z5^12*z6- 8*z2*z4*z5^12*z6- 8*z3*z4*z5^12*z6+ 6*z2*z5^13*z6+
    6*z3*z5^13*z6+ 6*z4*z5^13*z6- 4*z5^14*z6+ 2*z2*z3*z4*z5^11*z7-
    2*z2*z3*z5^12*z7- 2*z2*z4*z5^12*z7- 2*z3*z4*z5^12*z7+ 2*z2*z5^13*z7+
    2*z3*z5^13*z7+ 2*z4*z5^13*z7- 2*z5^14*z7- 2*z2*z3*z4*z5^10*z6*z7+
    2*z2*z3*z5^11*z6*z7+ 2*z2*z4*z5^11*z6*z7+ 2*z3*z4*z5^11*z6*z7-
    2*z2*z5^12*z6*z7- 2*z3*z5^12*z6*z7- 2*z4*z5^12*z6*z7+ 2*z5^13*z6*z7+
    2*z2*z3*z4*z5^10*z7^2- 2*z2*z3*z5^11*z7^2- 2*z2*z4*z5^11*z7^2-
    2*z3*z4*z5^11*z7^2+ 2*z2*z5^12*z7^2+ 2*z3*z5^12*z7^2+ 2*z4*z5^12*z7^2-
    2*z5^13*z7^2- 2*z2*z3*z4*z5^9*z6*z7^2+ 2*z2*z3*z5^10*z6*z7^2+
    2*z2*z4*z5^10*z6*z7^2+ 2*z3*z4*z5^10*z6*z7^2- 2*z2*z5^11*z6*z7^2-
    2*z3*z5^11*z6*z7^2- 2*z4*z5^11*z6*z7^2+ 2*z5^12*z6*z7^2+
    2*z2*z3*z4*z5^9*z7^3- 2*z2*z3*z5^10*z7^3- 2*z2*z4*z5^10*z7^3-
    2*z3*z4*z5^10*z7^3+ 2*z2*z5^11*z7^3+ 2*z3*z5^11*z7^3+ 2*z4*z5^11*z7^3-
    2*z5^12*z7^3- 2*z2*z3*z4*z5^8*z6*z7^3+ 2*z2*z3*z5^9*z6*z7^3+
    2*z2*z4*z5^9*z6*z7^3+ 2*z3*z4*z5^9*z6*z7^3- 2*z2*z5^10*z6*z7^3-
    2*z3*z5^10*z6*z7^3- 2*z4*z5^10*z6*z7^3+ 2*z5^11*z6*z7^3+
    2*z2*z3*z4*z5^8*z7^4- 2*z2*z3*z5^9*z7^4- 2*z2*z4*z5^9*z7^4-
    2*z3*z4*z5^9*z7^4+ 2*z2*z5^10*z7^4+ 2*z3*z5^10*z7^4+ 2*z4*z5^10*z7^4-
    2*z5^11*z7^4- 2*z2*z3*z4*z5^7*z6*z7^4+ 2*z2*z3*z5^8*z6*z7^4+
    2*z2*z4*z5^8*z6*z7^4+ 2*z3*z4*z5^8*z6*z7^4- 2*z2*z5^9*z6*z7^4-
    2*z3*z5^9*z6*z7^4- 2*z4*z5^9*z6*z7^4+ 2*z5^10*z6*z7^4+ 2*z2*z3*z4*z5^7*z7^5-
    2*z2*z3*z5^8*z7^5- 2*z2*z4*z5^8*z7^5- 2*z3*z4*z5^8*z7^5+ 2*z2*z5^9*z7^5+
    2*z3*z5^9*z7^5+ 2*z4*z5^9*z7^5- 2*z5^10*z7^5- 2*z2*z3*z4*z5^6*z6*z7^5+
    2*z2*z3*z5^7*z6*z7^5+ 2*z2*z4*z5^7*z6*z7^5+ 2*z3*z4*z5^7*z6*z7^5-
    2*z2*z5^8*z6*z7^5- 2*z3*z5^8*z6*z7^5- 2*z4*z5^8*z6*z7^5+ 2*z5^9*z6*z7^5+
    2*z2*z3*z4*z5^6*z7^6- 2*z2*z3*z5^7*z7^6- 2*z2*z4*z5^7*z7^6-
    2*z3*z4*z5^7*z7^6+ 2*z2*z5^8*z7^6+ 2*z3*z5^8*z7^6+ 2*z4*z5^8*z7^6-
    2*z5^9*z7^6- 2*z2*z3*z4*z5^5*z6*z7^6+ 2*z2*z3*z5^6*z6*z7^6+
    2*z2*z4*z5^6*z6*z7^6+ 2*z3*z4*z5^6*z6*z7^6- 2*z2*z5^7*z6*z7^6-
    2*z3*z5^7*z6*z7^6- 2*z4*z5^7*z6*z7^6+ 2*z5^8*z6*z7^6+ 2*z2*z3*z4*z5^5*z7^7-
    2*z2*z3*z5^6*z7^7- 2*z2*z4*z5^6*z7^7- 2*z3*z4*z5^6*z7^7+ 2*z2*z5^7*z7^7+
    2*z3*z5^7*z7^7+ 2*z4*z5^7*z7^7- 2*z5^8*z7^7- 2*z2*z3*z4*z5^4*z6*z7^7+
    2*z2*z3*z5^5*z6*z7^7+ 2*z2*z4*z5^5*z6*z7^7+ 2*z3*z4*z5^5*z6*z7^7-
    2*z2*z5^6*z6*z7^7- 2*z3*z5^6*z6*z7^7- 2*z4*z5^6*z6*z7^7+ 2*z5^7*z6*z7^7+
    2*z2*z3*z4*z5^4*z7^8- 2*z2*z3*z5^5*z7^8- 2*z2*z4*z5^5*z7^8-
    2*z3*z4*z5^5*z7^8+ 2*z2*z5^6*z7^8+ 2*z3*z5^6*z7^8+ 2*z4*z5^6*z7^8-
    2*z5^7*z7^8- 2*z2*z3*z4*z5^3*z6*z7^8+ 2*z2*z3*z5^4*z6*z7^8+
    2*z2*z4*z5^4*z6*z7^8+ 2*z3*z4*z5^4*z6*z7^8- 2*z2*z5^5*z6*z7^8-
    2*z3*z5^5*z6*z7^8- 2*z4*z5^5*z6*z7^8+ 2*z5^6*z6*z7^8+ 2*z2*z3*z4*z5^3*z7^9-
    2*z2*z3*z5^4*z7^9- 2*z2*z4*z5^4*z7^9- 2*z3*z4*z5^4*z7^9+ 2*z2*z5^5*z7^9+
    2*z3*z5^5*z7^9+ 2*z4*z5^5*z7^9- 2*z5^6*z7^9- 2*z2*z3*z4*z5^2*z6*z7^9+
    2*z2*z3*z5^3*z6*z7^9+ 2*z2*z4*z5^3*z6*z7^9+ 2*z3*z4*z5^3*z6*z7^9-
    2*z2*z5^4*z6*z7^9- 2*z3*z5^4*z6*z7^9- 2*z4*z5^4*z6*z7^9+ 2*z5^5*z6*z7^9+
    2*z2*z3*z4*z5^2*z7^10- 2*z2*z3*z5^3*z7^10- 2*z2*z4*z5^3*z7^10-
    2*z3*z4*z5^3*z7^10+ 2*z2*z5^4*z7^10+ 2*z3*z5^4*z7^10+ 2*z4*z5^4*z7^10-
    2*z5^5*z7^10- 2*z2*z3*z4*z5*z6*z7^10+ 2*z2*z3*z5^2*z6*z7^10+
    2*z2*z4*z5^2*z6*z7^10+ 2*z3*z4*z5^2*z6*z7^10- 2*z2*z5^3*z6*z7^10-
    2*z3*z5^3*z6*z7^10- 2*z4*z5^3*z6*z7^10+ 2*z5^4*z6*z7^10+
    2*z2*z3*z4*z5*z7^11- 2*z2*z3*z5^2*z7^11- 2*z2*z4*z5^2*z7^11-
    2*z3*z4*z5^2*z7^11+ 2*z2*z5^3*z7^11+ 2*z3*z5^3*z7^11+ 2*z4*z5^3*z7^11-
    2*z5^4*z7^11+ 10*z2*z3*z4*z6*z7^11+ 2*z2*z3*z5*z6*z7^11+
    2*z2*z4*z5*z6*z7^11+ 2*z3*z4*z5*z6*z7^11- 2*z2*z5^2*z6*z7^11-
    2*z3*z5^2*z6*z7^11- 2*z4*z5^2*z6*z7^11+ 2*z5^3*z6*z7^11- 8*z2*z3*z4*z7^12-
    2*z2*z3*z5*z7^12- 2*z2*z4*z5*z7^12- 2*z3*z4*z5*z7^12+ 2*z2*z5^2*z7^12+
    2*z3*z5^2*z7^12+ 2*z4*z5^2*z7^12- 2*z5^3*z7^12- 8*z2*z3*z6*z7^12-
    8*z2*z4*z6*z7^12- 8*z3*z4*z6*z7^12- 2*z2*z5*z6*z7^12- 2*z3*z5*z6*z7^12-
    2*z4*z5*z6*z7^12+ 2*z5^2*z6*z7^12+ 6*z2*z3*z7^13+ 6*z2*z4*z7^13+
    6*z3*z4*z7^13+ 2*z2*z5*z7^13+ 2*z3*z5*z7^13+ 2*z4*z5*z7^13- 2*z5^2*z7^13+
    6*z2*z6*z7^13+ 6*z3*z6*z7^13+ 6*z4*z6*z7^13+ 2*z5*z6*z7^13- 4*z2*z7^14-
    4*z3*z7^14- 4*z4*z7^14- 2*z5*z7^14- 4*z6*z7^14+ 2*z7^15+ z2*z3*z4*z5^10+
    10*z2*z3*z5^11+ 10*z2*z4*z5^11+ 10*z3*z4*z5^11- 13*z2*z5^12- 13*z3*z5^12-
    13*z4*z5^12+ 10*z5^13- 22*z2*z3*z4*z5^9*z6+ z2*z3*z5^10*z6+ z2*z4*z5^10*z6+
    z3*z4*z5^10*z6+ 10*z2*z5^11*z6+ 10*z3*z5^11*z6+ 10*z4*z5^11*z6- 13*z5^12*z6-
    21*z2*z3*z4*z5^9*z7+ 11*z2*z3*z5^10*z7+ 11*z2*z4*z5^10*z7+
    11*z3*z4*z5^10*z7- 3*z2*z5^11*z7- 3*z3*z5^11*z7- 3*z4*z5^11*z7- 3*z5^12*z7+
    33*z2*z3*z4*z5^8*z6*z7- 21*z2*z3*z5^9*z6*z7- 21*z2*z4*z5^9*z6*z7-
    21*z3*z4*z5^9*z6*z7+ 11*z2*z5^10*z6*z7+ 11*z3*z5^10*z6*z7+
    11*z4*z5^10*z6*z7- 3*z5^11*z6*z7- 21*z2*z3*z4*z5^8*z7^2+ 11*z2*z3*z5^9*z7^2+
    11*z2*z4*z5^9*z7^2+ 11*z3*z4*z5^9*z7^2- 3*z2*z5^10*z7^2- 3*z3*z5^10*z7^2-
    3*z4*z5^10*z7^2- 3*z5^11*z7^2+ 33*z2*z3*z4*z5^7*z6*z7^2-
    21*z2*z3*z5^8*z6*z7^2- 21*z2*z4*z5^8*z6*z7^2- 21*z3*z4*z5^8*z6*z7^2+
    11*z2*z5^9*z6*z7^2+ 11*z3*z5^9*z6*z7^2+ 11*z4*z5^9*z6*z7^2- 3*z5^10*z6*z7^2-
    21*z2*z3*z4*z5^7*z7^3+ 11*z2*z3*z5^8*z7^3+ 11*z2*z4*z5^8*z7^3+
    11*z3*z4*z5^8*z7^3- 3*z2*z5^9*z7^3- 3*z3*z5^9*z7^3- 3*z4*z5^9*z7^3-
    3*z5^10*z7^3+ 33*z2*z3*z4*z5^6*z6*z7^3- 21*z2*z3*z5^7*z6*z7^3-
    21*z2*z4*z5^7*z6*z7^3- 21*z3*z4*z5^7*z6*z7^3+ 11*z2*z5^8*z6*z7^3+
    11*z3*z5^8*z6*z7^3+ 11*z4*z5^8*z6*z7^3- 3*z5^9*z6*z7^3-
    21*z2*z3*z4*z5^6*z7^4+ 11*z2*z3*z5^7*z7^4+ 11*z2*z4*z5^7*z7^4+
    11*z3*z4*z5^7*z7^4- 3*z2*z5^8*z7^4- 3*z3*z5^8*z7^4- 3*z4*z5^8*z7^4-
    3*z5^9*z7^4+ 33*z2*z3*z4*z5^5*z6*z7^4- 21*z2*z3*z5^6*z6*z7^4-
    21*z2*z4*z5^6*z6*z7^4- 21*z3*z4*z5^6*z6*z7^4+ 11*z2*z5^7*z6*z7^4+
    11*z3*z5^7*z6*z7^4+ 11*z4*z5^7*z6*z7^4- 3*z5^8*z6*z7^4-
    21*z2*z3*z4*z5^5*z7^5+ 11*z2*z3*z5^6*z7^5+ 11*z2*z4*z5^6*z7^5+
    11*z3*z4*z5^6*z7^5- 3*z2*z5^7*z7^5- 3*z3*z5^7*z7^5- 3*z4*z5^7*z7^5-
    3*z5^8*z7^5+ 33*z2*z3*z4*z5^4*z6*z7^5- 21*z2*z3*z5^5*z6*z7^5-
    21*z2*z4*z5^5*z6*z7^5- 21*z3*z4*z5^5*z6*z7^5+ 11*z2*z5^6*z6*z7^5+
    11*z3*z5^6*z6*z7^5+ 11*z4*z5^6*z6*z7^5- 3*z5^7*z6*z7^5-
    21*z2*z3*z4*z5^4*z7^6+ 11*z2*z3*z5^5*z7^6+ 11*z2*z4*z5^5*z7^6+
    11*z3*z4*z5^5*z7^6- 3*z2*z5^6*z7^6- 3*z3*z5^6*z7^6- 3*z4*z5^6*z7^6-
    3*z5^7*z7^6+ 33*z2*z3*z4*z5^3*z6*z7^6- 21*z2*z3*z5^4*z6*z7^6-
    21*z2*z4*z5^4*z6*z7^6- 21*z3*z4*z5^4*z6*z7^6+ 11*z2*z5^5*z6*z7^6+
    11*z3*z5^5*z6*z7^6+ 11*z4*z5^5*z6*z7^6- 3*z5^6*z6*z7^6-
    21*z2*z3*z4*z5^3*z7^7+ 11*z2*z3*z5^4*z7^7+ 11*z2*z4*z5^4*z7^7+
    11*z3*z4*z5^4*z7^7- 3*z2*z5^5*z7^7- 3*z3*z5^5*z7^7- 3*z4*z5^5*z7^7-
    3*z5^6*z7^7+ 33*z2*z3*z4*z5^2*z6*z7^7- 21*z2*z3*z5^3*z6*z7^7-
    21*z2*z4*z5^3*z6*z7^7- 21*z3*z4*z5^3*z6*z7^7+ 11*z2*z5^4*z6*z7^7+
    11*z3*z5^4*z6*z7^7+ 11*z4*z5^4*z6*z7^7- 3*z5^5*z6*z7^7-
    21*z2*z3*z4*z5^2*z7^8+ 11*z2*z3*z5^3*z7^8+ 11*z2*z4*z5^3*z7^8+
    11*z3*z4*z5^3*z7^8- 3*z2*z5^4*z7^8- 3*z3*z5^4*z7^8- 3*z4*z5^4*z7^8-
    3*z5^5*z7^8+ 33*z2*z3*z4*z5*z6*z7^8- 21*z2*z3*z5^2*z6*z7^8-
    21*z2*z4*z5^2*z6*z7^8- 21*z3*z4*z5^2*z6*z7^8+ 11*z2*z5^3*z6*z7^8+
    11*z3*z5^3*z6*z7^8+ 11*z4*z5^3*z6*z7^8- 3*z5^4*z6*z7^8- 21*z2*z3*z4*z5*z7^9+
    11*z2*z3*z5^2*z7^9+ 11*z2*z4*z5^2*z7^9+ 11*z3*z4*z5^2*z7^9- 3*z2*z5^3*z7^9-
    3*z3*z5^3*z7^9- 3*z4*z5^3*z7^9- 3*z5^4*z7^9- 22*z2*z3*z4*z6*z7^9-
    21*z2*z3*z5*z6*z7^9- 21*z2*z4*z5*z6*z7^9- 21*z3*z4*z5*z6*z7^9+
    11*z2*z5^2*z6*z7^9+ 11*z3*z5^2*z6*z7^9+ 11*z4*z5^2*z6*z7^9- 3*z5^3*z6*z7^9+
    z2*z3*z4*z7^10+ 11*z2*z3*z5*z7^10+ 11*z2*z4*z5*z7^10+ 11*z3*z4*z5*z7^10-
    3*z2*z5^2*z7^10- 3*z3*z5^2*z7^10- 3*z4*z5^2*z7^10- 3*z5^3*z7^10+
    z2*z3*z6*z7^10+ z2*z4*z6*z7^10+ z3*z4*z6*z7^10+ 11*z2*z5*z6*z7^10+
    11*z3*z5*z6*z7^10+ 11*z4*z5*z6*z7^10- 3*z5^2*z6*z7^10+ 10*z2*z3*z7^11+
    10*z2*z4*z7^11+ 10*z3*z4*z7^11- 3*z2*z5*z7^11- 3*z3*z5*z7^11- 3*z4*z5*z7^11-
    3*z5^2*z7^11+ 10*z2*z6*z7^11+ 10*z3*z6*z7^11+ 10*z4*z6*z7^11- 3*z5*z6*z7^11-
    13*z2*z7^12- 13*z3*z7^12- 13*z4*z7^12- 3*z5*z7^12- 13*z6*z7^12+ 10*z7^13-
    2231*z2*z3*z4*z5^8+ 1121*z2*z3*z5^9+ 1121*z2*z4*z5^9+ 1121*z3*z4*z5^9-
    12*z2*z5^10- 12*z3*z5^10- 12*z4*z5^10- 1107*z5^11+ 3363*z2*z3*z4*z5^7*z6-
    2231*z2*z3*z5^8*z6- 2231*z2*z4*z5^8*z6- 2231*z3*z4*z5^8*z6+ 1121*z2*z5^9*z6+
    1121*z3*z5^9*z6+ 1121*z4*z5^9*z6- 12*z5^10*z6+ 1132*z2*z3*z4*z5^7*z7-
    1110*z2*z3*z5^8*z7- 1110*z2*z4*z5^8*z7- 1110*z3*z4*z5^8*z7+ 1109*z2*z5^9*z7+
    1109*z3*z5^9*z7+ 1109*z4*z5^9*z7- 1119*z5^10*z7- 1187*z2*z3*z4*z5^6*z6*z7+
    1132*z2*z3*z5^7*z6*z7+ 1132*z2*z4*z5^7*z6*z7+ 1132*z3*z4*z5^7*z6*z7-
    1110*z2*z5^8*z6*z7- 1110*z3*z5^8*z6*z7- 1110*z4*z5^8*z6*z7+ 1109*z5^9*z6*z7+
    1132*z2*z3*z4*z5^6*z7^2- 1110*z2*z3*z5^7*z7^2- 1110*z2*z4*z5^7*z7^2-
    1110*z3*z4*z5^7*z7^2+ 1109*z2*z5^8*z7^2+ 1109*z3*z5^8*z7^2+
    1109*z4*z5^8*z7^2- 1119*z5^9*z7^2- 1187*z2*z3*z4*z5^5*z6*z7^2+
    1132*z2*z3*z5^6*z6*z7^2+ 1132*z2*z4*z5^6*z6*z7^2+ 1132*z3*z4*z5^6*z6*z7^2-
    1110*z2*z5^7*z6*z7^2- 1110*z3*z5^7*z6*z7^2- 1110*z4*z5^7*z6*z7^2+
    1109*z5^8*z6*z7^2+ 1132*z2*z3*z4*z5^5*z7^3- 1110*z2*z3*z5^6*z7^3-
    1110*z2*z4*z5^6*z7^3- 1110*z3*z4*z5^6*z7^3+ 1109*z2*z5^7*z7^3+
    1109*z3*z5^7*z7^3+ 1109*z4*z5^7*z7^3- 1119*z5^8*z7^3-
    1187*z2*z3*z4*z5^4*z6*z7^3+ 1132*z2*z3*z5^5*z6*z7^3+
    1132*z2*z4*z5^5*z6*z7^3+ 1132*z3*z4*z5^5*z6*z7^3- 1110*z2*z5^6*z6*z7^3-
    1110*z3*z5^6*z6*z7^3- 1110*z4*z5^6*z6*z7^3+ 1109*z5^7*z6*z7^3+
    1132*z2*z3*z4*z5^4*z7^4- 1110*z2*z3*z5^5*z7^4- 1110*z2*z4*z5^5*z7^4-
    1110*z3*z4*z5^5*z7^4+ 1109*z2*z5^6*z7^4+ 1109*z3*z5^6*z7^4+
    1109*z4*z5^6*z7^4- 1119*z5^7*z7^4- 1187*z2*z3*z4*z5^3*z6*z7^4+
    1132*z2*z3*z5^4*z6*z7^4+ 1132*z2*z4*z5^4*z6*z7^4+ 1132*z3*z4*z5^4*z6*z7^4-
    1110*z2*z5^5*z6*z7^4- 1110*z3*z5^5*z6*z7^4- 1110*z4*z5^5*z6*z7^4+
    1109*z5^6*z6*z7^4+ 1132*z2*z3*z4*z5^3*z7^5- 1110*z2*z3*z5^4*z7^5-
    1110*z2*z4*z5^4*z7^5- 1110*z3*z4*z5^4*z7^5+ 1109*z2*z5^5*z7^5+
    1109*z3*z5^5*z7^5+ 1109*z4*z5^5*z7^5- 1119*z5^6*z7^5-
    1187*z2*z3*z4*z5^2*z6*z7^5+ 1132*z2*z3*z5^3*z6*z7^5+
    1132*z2*z4*z5^3*z6*z7^5+ 1132*z3*z4*z5^3*z6*z7^5- 1110*z2*z5^4*z6*z7^5-
    1110*z3*z5^4*z6*z7^5- 1110*z4*z5^4*z6*z7^5+ 1109*z5^5*z6*z7^5+
    1132*z2*z3*z4*z5^2*z7^6- 1110*z2*z3*z5^3*z7^6- 1110*z2*z4*z5^3*z7^6-
    1110*z3*z4*z5^3*z7^6+ 1109*z2*z5^4*z7^6+ 1109*z3*z5^4*z7^6+
    1109*z4*z5^4*z7^6- 1119*z5^5*z7^6- 1187*z2*z3*z4*z5*z6*z7^6+
    1132*z2*z3*z5^2*z6*z7^6+ 1132*z2*z4*z5^2*z6*z7^6+ 1132*z3*z4*z5^2*z6*z7^6-
    1110*z2*z5^3*z6*z7^6- 1110*z3*z5^3*z6*z7^6- 1110*z4*z5^3*z6*z7^6+
    1109*z5^4*z6*z7^6+ 1132*z2*z3*z4*z5*z7^7- 1110*z2*z3*z5^2*z7^7-
    1110*z2*z4*z5^2*z7^7- 1110*z3*z4*z5^2*z7^7+ 1109*z2*z5^3*z7^7+
    1109*z3*z5^3*z7^7+ 1109*z4*z5^3*z7^7- 1119*z5^4*z7^7+ 3363*z2*z3*z4*z6*z7^7+
    1132*z2*z3*z5*z6*z7^7+ 1132*z2*z4*z5*z6*z7^7+ 1132*z3*z4*z5*z6*z7^7-
    1110*z2*z5^2*z6*z7^7- 1110*z3*z5^2*z6*z7^7- 1110*z4*z5^2*z6*z7^7+
    1109*z5^3*z6*z7^7- 2231*z2*z3*z4*z7^8- 1110*z2*z3*z5*z7^8-
    1110*z2*z4*z5*z7^8- 1110*z3*z4*z5*z7^8+ 1109*z2*z5^2*z7^8+
    1109*z3*z5^2*z7^8+ 1109*z4*z5^2*z7^8- 1119*z5^3*z7^8- 2231*z2*z3*z6*z7^8-
    2231*z2*z4*z6*z7^8- 2231*z3*z4*z6*z7^8- 1110*z2*z5*z6*z7^8-
    1110*z3*z5*z6*z7^8- 1110*z4*z5*z6*z7^8+ 1109*z5^2*z6*z7^8+ 1121*z2*z3*z7^9+
    1121*z2*z4*z7^9+ 1121*z3*z4*z7^9+ 1109*z2*z5*z7^9+ 1109*z3*z5*z7^9+
    1109*z4*z5*z7^9- 1119*z5^2*z7^9+ 1121*z2*z6*z7^9+ 1121*z3*z6*z7^9+
    1121*z4*z6*z7^9+ 1109*z5*z6*z7^9- 12*z2*z7^10- 12*z3*z7^10- 12*z4*z7^10-
    1119*z5*z7^10- 12*z6*z7^10- 1107*z7^11- 1121*z2*z3*z4*z5^6+ 3363*z2*z3*z5^7+
    3363*z2*z4*z5^7+ 3363*z3*z4*z5^7- 3374*z2*z5^8- 3374*z3*z5^8- 3374*z4*z5^8+
    2264*z5^9- 4484*z2*z3*z4*z5^5*z6- 1121*z2*z3*z5^6*z6- 1121*z2*z4*z5^6*z6-
    1121*z3*z4*z5^6*z6+ 3363*z2*z5^7*z6+ 3363*z3*z5^7*z6+ 3363*z4*z5^7*z6-
    3374*z5^8*z6+ 3396*z2*z3*z4*z5^5*z7+ 2242*z2*z3*z5^6*z7+ 2242*z2*z4*z5^6*z7+
    2242*z3*z4*z5^6*z7- 11*z2*z5^7*z7- 11*z3*z5^7*z7- 11*z4*z5^7*z7-
    1110*z5^8*z7+ 1154*z2*z3*z4*z5^4*z6*z7+ 3396*z2*z3*z5^5*z6*z7+
    3396*z2*z4*z5^5*z6*z7+ 3396*z3*z4*z5^5*z6*z7+ 2242*z2*z5^6*z6*z7+
    2242*z3*z5^6*z6*z7+ 2242*z4*z5^6*z6*z7- 11*z5^7*z6*z7+
    3396*z2*z3*z4*z5^4*z7^2+ 2242*z2*z3*z5^5*z7^2+ 2242*z2*z4*z5^5*z7^2+
    2242*z3*z4*z5^5*z7^2- 11*z2*z5^6*z7^2- 11*z3*z5^6*z7^2- 11*z4*z5^6*z7^2-
    1110*z5^7*z7^2+ 1154*z2*z3*z4*z5^3*z6*z7^2+ 3396*z2*z3*z5^4*z6*z7^2+
    3396*z2*z4*z5^4*z6*z7^2+ 3396*z3*z4*z5^4*z6*z7^2+ 2242*z2*z5^5*z6*z7^2+
    2242*z3*z5^5*z6*z7^2+ 2242*z4*z5^5*z6*z7^2- 11*z5^6*z6*z7^2+
    3396*z2*z3*z4*z5^3*z7^3+ 2242*z2*z3*z5^4*z7^3+ 2242*z2*z4*z5^4*z7^3+
    2242*z3*z4*z5^4*z7^3- 11*z2*z5^5*z7^3- 11*z3*z5^5*z7^3- 11*z4*z5^5*z7^3-
    1110*z5^6*z7^3+ 1154*z2*z3*z4*z5^2*z6*z7^3+ 3396*z2*z3*z5^3*z6*z7^3+
    3396*z2*z4*z5^3*z6*z7^3+ 3396*z3*z4*z5^3*z6*z7^3+ 2242*z2*z5^4*z6*z7^3+
    2242*z3*z5^4*z6*z7^3+ 2242*z4*z5^4*z6*z7^3- 11*z5^5*z6*z7^3+
    3396*z2*z3*z4*z5^2*z7^4+ 2242*z2*z3*z5^3*z7^4+ 2242*z2*z4*z5^3*z7^4+
    2242*z3*z4*z5^3*z7^4- 11*z2*z5^4*z7^4- 11*z3*z5^4*z7^4- 11*z4*z5^4*z7^4-
    1110*z5^5*z7^4+ 1154*z2*z3*z4*z5*z6*z7^4+ 3396*z2*z3*z5^2*z6*z7^4+
    3396*z2*z4*z5^2*z6*z7^4+ 3396*z3*z4*z5^2*z6*z7^4+ 2242*z2*z5^3*z6*z7^4+
    2242*z3*z5^3*z6*z7^4+ 2242*z4*z5^3*z6*z7^4- 11*z5^4*z6*z7^4+
    3396*z2*z3*z4*z5*z7^5+ 2242*z2*z3*z5^2*z7^5+ 2242*z2*z4*z5^2*z7^5+
    2242*z3*z4*z5^2*z7^5- 11*z2*z5^3*z7^5- 11*z3*z5^3*z7^5- 11*z4*z5^3*z7^5-
    1110*z5^4*z7^5- 4484*z2*z3*z4*z6*z7^5+ 3396*z2*z3*z5*z6*z7^5+
    3396*z2*z4*z5*z6*z7^5+ 3396*z3*z4*z5*z6*z7^5+ 2242*z2*z5^2*z6*z7^5+
    2242*z3*z5^2*z6*z7^5+ 2242*z4*z5^2*z6*z7^5- 11*z5^3*z6*z7^5-
    1121*z2*z3*z4*z7^6+ 2242*z2*z3*z5*z7^6+ 2242*z2*z4*z5*z7^6+
    2242*z3*z4*z5*z7^6- 11*z2*z5^2*z7^6- 11*z3*z5^2*z7^6- 11*z4*z5^2*z7^6-
    1110*z5^3*z7^6- 1121*z2*z3*z6*z7^6- 1121*z2*z4*z6*z7^6- 1121*z3*z4*z6*z7^6+
    2242*z2*z5*z6*z7^6+ 2242*z3*z5*z6*z7^6+ 2242*z4*z5*z6*z7^6- 11*z5^2*z6*z7^6+
    3363*z2*z3*z7^7+ 3363*z2*z4*z7^7+ 3363*z3*z4*z7^7- 11*z2*z5*z7^7-
    11*z3*z5*z7^7- 11*z4*z5*z7^7- 1110*z5^2*z7^7+ 3363*z2*z6*z7^7+
    3363*z3*z6*z7^7+ 3363*z4*z6*z7^7- 11*z5*z6*z7^7- 3374*z2*z7^8- 3374*z3*z7^8-
    3374*z4*z7^8- 1110*z5*z7^8- 3374*z6*z7^8+ 2264*z7^9+ 4495*z2*z3*z4*z5^4+
    2740*z2*z3*z5^5+ 2740*z2*z4*z5^5+ 2740*z3*z4*z5^5+ 147*z2*z5^6+ 147*z3*z5^6+
    147*z4*z5^6+ 2604*z5^7+ 1755*z2*z3*z4*z5^3*z6+ 4495*z2*z3*z5^4*z6+
    4495*z2*z4*z5^4*z6+ 4495*z3*z4*z5^4*z6+ 2740*z2*z5^5*z6+ 2740*z3*z5^5*z6+
    2740*z4*z5^5*z6+ 147*z5^6*z6- 2751*z2*z3*z4*z5^3*z7- 1766*z2*z3*z5^4*z7-
    1766*z2*z4*z5^4*z7- 1766*z3*z4*z5^4*z7+ 2887*z2*z5^5*z7+ 2887*z3*z5^5*z7+
    2887*z4*z5^5*z7+ 2751*z5^6*z7- 2887*z2*z3*z4*z5^2*z6*z7-
    2751*z2*z3*z5^3*z6*z7- 2751*z2*z4*z5^3*z6*z7- 2751*z3*z4*z5^3*z6*z7-
    1766*z2*z5^4*z6*z7- 1766*z3*z5^4*z6*z7- 1766*z4*z5^4*z6*z7+ 2887*z5^5*z6*z7-
    2751*z2*z3*z4*z5^2*z7^2- 1766*z2*z3*z5^3*z7^2- 1766*z2*z4*z5^3*z7^2-
    1766*z3*z4*z5^3*z7^2+ 2887*z2*z5^4*z7^2+ 2887*z3*z5^4*z7^2+
    2887*z4*z5^4*z7^2+ 2751*z5^5*z7^2- 2887*z2*z3*z4*z5*z6*z7^2-
    2751*z2*z3*z5^2*z6*z7^2- 2751*z2*z4*z5^2*z6*z7^2- 2751*z3*z4*z5^2*z6*z7^2-
    1766*z2*z5^3*z6*z7^2- 1766*z3*z5^3*z6*z7^2- 1766*z4*z5^3*z6*z7^2+
    2887*z5^4*z6*z7^2- 2751*z2*z3*z4*z5*z7^3- 1766*z2*z3*z5^2*z7^3-
    1766*z2*z4*z5^2*z7^3- 1766*z3*z4*z5^2*z7^3+ 2887*z2*z5^3*z7^3+
    2887*z3*z5^3*z7^3+ 2887*z4*z5^3*z7^3+ 2751*z5^4*z7^3+ 1755*z2*z3*z4*z6*z7^3-
    2751*z2*z3*z5*z6*z7^3- 2751*z2*z4*z5*z6*z7^3- 2751*z3*z4*z5*z6*z7^3-
    1766*z2*z5^2*z6*z7^3- 1766*z3*z5^2*z6*z7^3- 1766*z4*z5^2*z6*z7^3+
    2887*z5^3*z6*z7^3+ 4495*z2*z3*z4*z7^4- 1766*z2*z3*z5*z7^4-
    1766*z2*z4*z5*z7^4- 1766*z3*z4*z5*z7^4+ 2887*z2*z5^2*z7^4+
    2887*z3*z5^2*z7^4+ 2887*z4*z5^2*z7^4+ 2751*z5^3*z7^4+ 4495*z2*z3*z6*z7^4+
    4495*z2*z4*z6*z7^4+ 4495*z3*z4*z6*z7^4- 1766*z2*z5*z6*z7^4-
    1766*z3*z5*z6*z7^4- 1766*z4*z5*z6*z7^4+ 2887*z5^2*z6*z7^4+ 2740*z2*z3*z7^5+
    2740*z2*z4*z7^5+ 2740*z3*z4*z7^5+ 2887*z2*z5*z7^5+ 2887*z3*z5*z7^5+
    2887*z4*z5*z7^5+ 2751*z5^2*z7^5+ 2740*z2*z6*z7^5+ 2740*z3*z6*z7^5+
    2740*z4*z6*z7^5+ 2887*z5*z6*z7^5+ 147*z2*z7^6+ 147*z3*z7^6+ 147*z4*z7^6+
    2751*z5*z7^6+ 147*z6*z7^6+ 2604*z7^7- 2988*z2*z3*z4*z5^2+ 3588*z2*z3*z5^3+
    3588*z2*z4*z5^3+ 3588*z3*z4*z5^3+ 318*z2*z5^4+ 318*z3*z5^4+ 318*z4*z5^4+
    2037*z5^5+ 633*z2*z3*z4*z5*z6- 2988*z2*z3*z5^2*z6- 2988*z2*z4*z5^2*z6-
    2988*z3*z4*z5^2*z6+ 3588*z2*z5^3*z6+ 3588*z3*z5^3*z6+ 3588*z4*z5^3*z6+
    318*z5^4*z6- 2355*z2*z3*z4*z5*z7+ 600*z2*z3*z5^2*z7+ 600*z2*z4*z5^2*z7+
    600*z3*z4*z5^2*z7+ 3906*z2*z5^3*z7+ 3906*z3*z5^3*z7+ 3906*z4*z5^3*z7+
    2355*z5^4*z7+ 633*z2*z3*z4*z6*z7- 2355*z2*z3*z5*z6*z7- 2355*z2*z4*z5*z6*z7-
    2355*z3*z4*z5*z6*z7+ 600*z2*z5^2*z6*z7+ 600*z3*z5^2*z6*z7+
    600*z4*z5^2*z6*z7+ 3906*z5^3*z6*z7- 2988*z2*z3*z4*z7^2+ 600*z2*z3*z5*z7^2+
    600*z2*z4*z5*z7^2+ 600*z3*z4*z5*z7^2+ 3906*z2*z5^2*z7^2+ 3906*z3*z5^2*z7^2+
    3906*z4*z5^2*z7^2+ 2355*z5^3*z7^2- 2988*z2*z3*z6*z7^2- 2988*z2*z4*z6*z7^2-
    2988*z3*z4*z6*z7^2+ 600*z2*z5*z6*z7^2+ 600*z3*z5*z6*z7^2+ 600*z4*z5*z6*z7^2+
    3906*z5^2*z6*z7^2+ 3588*z2*z3*z7^3+ 3588*z2*z4*z7^3+ 3588*z3*z4*z7^3+
    3906*z2*z5*z7^3+ 3906*z3*z5*z7^3+ 3906*z4*z5*z7^3+ 2355*z5^2*z7^3+
    3588*z2*z6*z7^3+ 3588*z3*z6*z7^3+ 3588*z4*z6*z7^3+ 3906*z5*z6*z7^3+
    318*z2*z7^4+ 318*z3*z7^4+ 318*z4*z7^4+ 2355*z5*z7^4+ 318*z6*z7^4+ 2037*z7^5-
    1068*z2*z3*z4- 2202*z2*z3*z5- 2202*z2*z4*z5- 2202*z3*z4*z5- 1776*z2*z5^2-
    1776*z3*z5^2- 1776*z4*z5^2+ 2166*z5^3- 1068*z2*z3*z6- 1068*z2*z4*z6-
    1068*z3*z4*z6- 2202*z2*z5*z6- 2202*z3*z5*z6- 2202*z4*z5*z6- 1776*z5^2*z6-
    2202*z2*z3*z7- 2202*z2*z4*z7- 2202*z3*z4*z7- 3978*z2*z5*z7- 3978*z3*z5*z7-
    3978*z4*z5*z7+ 390*z5^2*z7- 2202*z2*z6*z7- 2202*z3*z6*z7- 2202*z4*z6*z7-
    3978*z5*z6*z7- 1776*z2*z7^2- 1776*z3*z7^2- 1776*z4*z7^2+ 390*z5*z7^2-
    1776*z6*z7^2+ 2166*z7^3+ 3538*z2+ 3538*z3+ 3538*z4- 1169*z5+ 3538*z6-
    1169*z7",
    "10*z2*z3*z4*z5*z6^11- 8*z2*z3*z4*z6^12- 8*z2*z3*z5*z6^12- 8*z2*z4*z5*z6^12-
    8*z3*z4*z5*z6^12+ 6*z2*z3*z6^13+ 6*z2*z4*z6^13+ 6*z3*z4*z6^13+
    6*z2*z5*z6^13+ 6*z3*z5*z6^13+ 6*z4*z5*z6^13- 4*z2*z6^14- 4*z3*z6^14-
    4*z4*z6^14- 4*z5*z6^14+ 2*z6^15- 2*z2*z3*z4*z5*z6^10*z7+
    2*z2*z3*z4*z6^11*z7+ 2*z2*z3*z5*z6^11*z7+ 2*z2*z4*z5*z6^11*z7+
    2*z3*z4*z5*z6^11*z7- 2*z2*z3*z6^12*z7- 2*z2*z4*z6^12*z7- 2*z3*z4*z6^12*z7-
    2*z2*z5*z6^12*z7- 2*z3*z5*z6^12*z7- 2*z4*z5*z6^12*z7+ 2*z2*z6^13*z7+
    2*z3*z6^13*z7+ 2*z4*z6^13*z7+ 2*z5*z6^13*z7- 2*z6^14*z7-
    2*z2*z3*z4*z5*z6^9*z7^2+ 2*z2*z3*z4*z6^10*z7^2+ 2*z2*z3*z5*z6^10*z7^2+
    2*z2*z4*z5*z6^10*z7^2+ 2*z3*z4*z5*z6^10*z7^2- 2*z2*z3*z6^11*z7^2-
    2*z2*z4*z6^11*z7^2- 2*z3*z4*z6^11*z7^2- 2*z2*z5*z6^11*z7^2-
    2*z3*z5*z6^11*z7^2- 2*z4*z5*z6^11*z7^2+ 2*z2*z6^12*z7^2+ 2*z3*z6^12*z7^2+
    2*z4*z6^12*z7^2+ 2*z5*z6^12*z7^2- 2*z6^13*z7^2- 2*z2*z3*z4*z5*z6^8*z7^3+
    2*z2*z3*z4*z6^9*z7^3+ 2*z2*z3*z5*z6^9*z7^3+ 2*z2*z4*z5*z6^9*z7^3+
    2*z3*z4*z5*z6^9*z7^3- 2*z2*z3*z6^10*z7^3- 2*z2*z4*z6^10*z7^3-
    2*z3*z4*z6^10*z7^3- 2*z2*z5*z6^10*z7^3- 2*z3*z5*z6^10*z7^3-
    2*z4*z5*z6^10*z7^3+ 2*z2*z6^11*z7^3+ 2*z3*z6^11*z7^3+ 2*z4*z6^11*z7^3+
    2*z5*z6^11*z7^3- 2*z6^12*z7^3- 2*z2*z3*z4*z5*z6^7*z7^4+
    2*z2*z3*z4*z6^8*z7^4+ 2*z2*z3*z5*z6^8*z7^4+ 2*z2*z4*z5*z6^8*z7^4+
    2*z3*z4*z5*z6^8*z7^4- 2*z2*z3*z6^9*z7^4- 2*z2*z4*z6^9*z7^4-
    2*z3*z4*z6^9*z7^4- 2*z2*z5*z6^9*z7^4- 2*z3*z5*z6^9*z7^4- 2*z4*z5*z6^9*z7^4+
    2*z2*z6^10*z7^4+ 2*z3*z6^10*z7^4+ 2*z4*z6^10*z7^4+ 2*z5*z6^10*z7^4-
    2*z6^11*z7^4- 2*z2*z3*z4*z5*z6^6*z7^5+ 2*z2*z3*z4*z6^7*z7^5+
    2*z2*z3*z5*z6^7*z7^5+ 2*z2*z4*z5*z6^7*z7^5+ 2*z3*z4*z5*z6^7*z7^5-
    2*z2*z3*z6^8*z7^5- 2*z2*z4*z6^8*z7^5- 2*z3*z4*z6^8*z7^5- 2*z2*z5*z6^8*z7^5-
    2*z3*z5*z6^8*z7^5- 2*z4*z5*z6^8*z7^5+ 2*z2*z6^9*z7^5+ 2*z3*z6^9*z7^5+
    2*z4*z6^9*z7^5+ 2*z5*z6^9*z7^5- 2*z6^10*z7^5- 2*z2*z3*z4*z5*z6^5*z7^6+
    2*z2*z3*z4*z6^6*z7^6+ 2*z2*z3*z5*z6^6*z7^6+ 2*z2*z4*z5*z6^6*z7^6+
    2*z3*z4*z5*z6^6*z7^6- 2*z2*z3*z6^7*z7^6- 2*z2*z4*z6^7*z7^6-
    2*z3*z4*z6^7*z7^6- 2*z2*z5*z6^7*z7^6- 2*z3*z5*z6^7*z7^6- 2*z4*z5*z6^7*z7^6+
    2*z2*z6^8*z7^6+ 2*z3*z6^8*z7^6+ 2*z4*z6^8*z7^6+ 2*z5*z6^8*z7^6- 2*z6^9*z7^6-
    2*z2*z3*z4*z5*z6^4*z7^7+ 2*z2*z3*z4*z6^5*z7^7+ 2*z2*z3*z5*z6^5*z7^7+
    2*z2*z4*z5*z6^5*z7^7+ 2*z3*z4*z5*z6^5*z7^7- 2*z2*z3*z6^6*z7^7-
    2*z2*z4*z6^6*z7^7- 2*z3*z4*z6^6*z7^7- 2*z2*z5*z6^6*z7^7- 2*z3*z5*z6^6*z7^7-
    2*z4*z5*z6^6*z7^7+ 2*z2*z6^7*z7^7+ 2*z3*z6^7*z7^7+ 2*z4*z6^7*z7^7+
    2*z5*z6^7*z7^7- 2*z6^8*z7^7- 2*z2*z3*z4*z5*z6^3*z7^8+ 2*z2*z3*z4*z6^4*z7^8+
    2*z2*z3*z5*z6^4*z7^8+ 2*z2*z4*z5*z6^4*z7^8+ 2*z3*z4*z5*z6^4*z7^8-
    2*z2*z3*z6^5*z7^8- 2*z2*z4*z6^5*z7^8- 2*z3*z4*z6^5*z7^8- 2*z2*z5*z6^5*z7^8-
    2*z3*z5*z6^5*z7^8- 2*z4*z5*z6^5*z7^8+ 2*z2*z6^6*z7^8+ 2*z3*z6^6*z7^8+
    2*z4*z6^6*z7^8+ 2*z5*z6^6*z7^8- 2*z6^7*z7^8- 2*z2*z3*z4*z5*z6^2*z7^9+
    2*z2*z3*z4*z6^3*z7^9+ 2*z2*z3*z5*z6^3*z7^9+ 2*z2*z4*z5*z6^3*z7^9+
    2*z3*z4*z5*z6^3*z7^9- 2*z2*z3*z6^4*z7^9- 2*z2*z4*z6^4*z7^9-
    2*z3*z4*z6^4*z7^9- 2*z2*z5*z6^4*z7^9- 2*z3*z5*z6^4*z7^9- 2*z4*z5*z6^4*z7^9+
    2*z2*z6^5*z7^9+ 2*z3*z6^5*z7^9+ 2*z4*z6^5*z7^9+ 2*z5*z6^5*z7^9- 2*z6^6*z7^9-
    2*z2*z3*z4*z5*z6*z7^10+ 2*z2*z3*z4*z6^2*z7^10+ 2*z2*z3*z5*z6^2*z7^10+
    2*z2*z4*z5*z6^2*z7^10+ 2*z3*z4*z5*z6^2*z7^10- 2*z2*z3*z6^3*z7^10-
    2*z2*z4*z6^3*z7^10- 2*z3*z4*z6^3*z7^10- 2*z2*z5*z6^3*z7^10-
    2*z3*z5*z6^3*z7^10- 2*z4*z5*z6^3*z7^10+ 2*z2*z6^4*z7^10+ 2*z3*z6^4*z7^10+
    2*z4*z6^4*z7^10+ 2*z5*z6^4*z7^10- 2*z6^5*z7^10+ 10*z2*z3*z4*z5*z7^11+
    2*z2*z3*z4*z6*z7^11+ 2*z2*z3*z5*z6*z7^11+ 2*z2*z4*z5*z6*z7^11+
    2*z3*z4*z5*z6*z7^11- 2*z2*z3*z6^2*z7^11- 2*z2*z4*z6^2*z7^11-
    2*z3*z4*z6^2*z7^11- 2*z2*z5*z6^2*z7^11- 2*z3*z5*z6^2*z7^11-
    2*z4*z5*z6^2*z7^11+ 2*z2*z6^3*z7^11+ 2*z3*z6^3*z7^11+ 2*z4*z6^3*z7^11+
    2*z5*z6^3*z7^11- 2*z6^4*z7^11- 8*z2*z3*z4*z7^12- 8*z2*z3*z5*z7^12-
    8*z2*z4*z5*z7^12- 8*z3*z4*z5*z7^12- 2*z2*z3*z6*z7^12- 2*z2*z4*z6*z7^12-
    2*z3*z4*z6*z7^12- 2*z2*z5*z6*z7^12- 2*z3*z5*z6*z7^12- 2*z4*z5*z6*z7^12+
    2*z2*z6^2*z7^12+ 2*z3*z6^2*z7^12+ 2*z4*z6^2*z7^12+ 2*z5*z6^2*z7^12-
    2*z6^3*z7^12+ 6*z2*z3*z7^13+ 6*z2*z4*z7^13+ 6*z3*z4*z7^13+ 6*z2*z5*z7^13+
    6*z3*z5*z7^13+ 6*z4*z5*z7^13+ 2*z2*z6*z7^13+ 2*z3*z6*z7^13+ 2*z4*z6*z7^13+
    2*z5*z6*z7^13- 2*z6^2*z7^13- 4*z2*z7^14- 4*z3*z7^14- 4*z4*z7^14- 4*z5*z7^14-
    2*z6*z7^14+ 2*z7^15- 22*z2*z3*z4*z5*z6^9+ z2*z3*z4*z6^10+ z2*z3*z5*z6^10+
    z2*z4*z5*z6^10+ z3*z4*z5*z6^10+ 10*z2*z3*z6^11+ 10*z2*z4*z6^11+
    10*z3*z4*z6^11+ 10*z2*z5*z6^11+ 10*z3*z5*z6^11+ 10*z4*z5*z6^11- 13*z2*z6^12-
    13*z3*z6^12- 13*z4*z6^12- 13*z5*z6^12+ 10*z6^13+ 33*z2*z3*z4*z5*z6^8*z7-
    21*z2*z3*z4*z6^9*z7- 21*z2*z3*z5*z6^9*z7- 21*z2*z4*z5*z6^9*z7-
    21*z3*z4*z5*z6^9*z7+ 11*z2*z3*z6^10*z7+ 11*z2*z4*z6^10*z7+
    11*z3*z4*z6^10*z7+ 11*z2*z5*z6^10*z7+ 11*z3*z5*z6^10*z7+ 11*z4*z5*z6^10*z7-
    3*z2*z6^11*z7- 3*z3*z6^11*z7- 3*z4*z6^11*z7- 3*z5*z6^11*z7- 3*z6^12*z7+
    33*z2*z3*z4*z5*z6^7*z7^2- 21*z2*z3*z4*z6^8*z7^2- 21*z2*z3*z5*z6^8*z7^2-
    21*z2*z4*z5*z6^8*z7^2- 21*z3*z4*z5*z6^8*z7^2+ 11*z2*z3*z6^9*z7^2+
    11*z2*z4*z6^9*z7^2+ 11*z3*z4*z6^9*z7^2+ 11*z2*z5*z6^9*z7^2+
    11*z3*z5*z6^9*z7^2+ 11*z4*z5*z6^9*z7^2- 3*z2*z6^10*z7^2- 3*z3*z6^10*z7^2-
    3*z4*z6^10*z7^2- 3*z5*z6^10*z7^2- 3*z6^11*z7^2+ 33*z2*z3*z4*z5*z6^6*z7^3-
    21*z2*z3*z4*z6^7*z7^3- 21*z2*z3*z5*z6^7*z7^3- 21*z2*z4*z5*z6^7*z7^3-
    21*z3*z4*z5*z6^7*z7^3+ 11*z2*z3*z6^8*z7^3+ 11*z2*z4*z6^8*z7^3+
    11*z3*z4*z6^8*z7^3+ 11*z2*z5*z6^8*z7^3+ 11*z3*z5*z6^8*z7^3+
    11*z4*z5*z6^8*z7^3- 3*z2*z6^9*z7^3- 3*z3*z6^9*z7^3- 3*z4*z6^9*z7^3-
    3*z5*z6^9*z7^3- 3*z6^10*z7^3+ 33*z2*z3*z4*z5*z6^5*z7^4-
    21*z2*z3*z4*z6^6*z7^4- 21*z2*z3*z5*z6^6*z7^4- 21*z2*z4*z5*z6^6*z7^4-
    21*z3*z4*z5*z6^6*z7^4+ 11*z2*z3*z6^7*z7^4+ 11*z2*z4*z6^7*z7^4+
    11*z3*z4*z6^7*z7^4+ 11*z2*z5*z6^7*z7^4+ 11*z3*z5*z6^7*z7^4+
    11*z4*z5*z6^7*z7^4- 3*z2*z6^8*z7^4- 3*z3*z6^8*z7^4- 3*z4*z6^8*z7^4-
    3*z5*z6^8*z7^4- 3*z6^9*z7^4+ 33*z2*z3*z4*z5*z6^4*z7^5-
    21*z2*z3*z4*z6^5*z7^5- 21*z2*z3*z5*z6^5*z7^5- 21*z2*z4*z5*z6^5*z7^5-
    21*z3*z4*z5*z6^5*z7^5+ 11*z2*z3*z6^6*z7^5+ 11*z2*z4*z6^6*z7^5+
    11*z3*z4*z6^6*z7^5+ 11*z2*z5*z6^6*z7^5+ 11*z3*z5*z6^6*z7^5+
    11*z4*z5*z6^6*z7^5- 3*z2*z6^7*z7^5- 3*z3*z6^7*z7^5- 3*z4*z6^7*z7^5-
    3*z5*z6^7*z7^5- 3*z6^8*z7^5+ 33*z2*z3*z4*z5*z6^3*z7^6-
    21*z2*z3*z4*z6^4*z7^6- 21*z2*z3*z5*z6^4*z7^6- 21*z2*z4*z5*z6^4*z7^6-
    21*z3*z4*z5*z6^4*z7^6+ 11*z2*z3*z6^5*z7^6+ 11*z2*z4*z6^5*z7^6+
    11*z3*z4*z6^5*z7^6+ 11*z2*z5*z6^5*z7^6+ 11*z3*z5*z6^5*z7^6+
    11*z4*z5*z6^5*z7^6- 3*z2*z6^6*z7^6- 3*z3*z6^6*z7^6- 3*z4*z6^6*z7^6-
    3*z5*z6^6*z7^6- 3*z6^7*z7^6+ 33*z2*z3*z4*z5*z6^2*z7^7-
    21*z2*z3*z4*z6^3*z7^7- 21*z2*z3*z5*z6^3*z7^7- 21*z2*z4*z5*z6^3*z7^7-
    21*z3*z4*z5*z6^3*z7^7+ 11*z2*z3*z6^4*z7^7+ 11*z2*z4*z6^4*z7^7+
    11*z3*z4*z6^4*z7^7+ 11*z2*z5*z6^4*z7^7+ 11*z3*z5*z6^4*z7^7+
    11*z4*z5*z6^4*z7^7- 3*z2*z6^5*z7^7- 3*z3*z6^5*z7^7- 3*z4*z6^5*z7^7-
    3*z5*z6^5*z7^7- 3*z6^6*z7^7+ 33*z2*z3*z4*z5*z6*z7^8- 21*z2*z3*z4*z6^2*z7^8-
    21*z2*z3*z5*z6^2*z7^8- 21*z2*z4*z5*z6^2*z7^8- 21*z3*z4*z5*z6^2*z7^8+
    11*z2*z3*z6^3*z7^8+ 11*z2*z4*z6^3*z7^8+ 11*z3*z4*z6^3*z7^8+
    11*z2*z5*z6^3*z7^8+ 11*z3*z5*z6^3*z7^8+ 11*z4*z5*z6^3*z7^8- 3*z2*z6^4*z7^8-
    3*z3*z6^4*z7^8- 3*z4*z6^4*z7^8- 3*z5*z6^4*z7^8- 3*z6^5*z7^8-
    22*z2*z3*z4*z5*z7^9- 21*z2*z3*z4*z6*z7^9- 21*z2*z3*z5*z6*z7^9-
    21*z2*z4*z5*z6*z7^9- 21*z3*z4*z5*z6*z7^9+ 11*z2*z3*z6^2*z7^9+
    11*z2*z4*z6^2*z7^9+ 11*z3*z4*z6^2*z7^9+ 11*z2*z5*z6^2*z7^9+
    11*z3*z5*z6^2*z7^9+ 11*z4*z5*z6^2*z7^9- 3*z2*z6^3*z7^9- 3*z3*z6^3*z7^9-
    3*z4*z6^3*z7^9- 3*z5*z6^3*z7^9- 3*z6^4*z7^9+ z2*z3*z4*z7^10+ z2*z3*z5*z7^10+
    z2*z4*z5*z7^10+ z3*z4*z5*z7^10+ 11*z2*z3*z6*z7^10+ 11*z2*z4*z6*z7^10+
    11*z3*z4*z6*z7^10+ 11*z2*z5*z6*z7^10+ 11*z3*z5*z6*z7^10+ 11*z4*z5*z6*z7^10-
    3*z2*z6^2*z7^10- 3*z3*z6^2*z7^10- 3*z4*z6^2*z7^10- 3*z5*z6^2*z7^10-
    3*z6^3*z7^10+ 10*z2*z3*z7^11+ 10*z2*z4*z7^11+ 10*z3*z4*z7^11+
    10*z2*z5*z7^11+ 10*z3*z5*z7^11+ 10*z4*z5*z7^11- 3*z2*z6*z7^11-
    3*z3*z6*z7^11- 3*z4*z6*z7^11- 3*z5*z6*z7^11- 3*z6^2*z7^11- 13*z2*z7^12-
    13*z3*z7^12- 13*z4*z7^12- 13*z5*z7^12- 3*z6*z7^12+ 10*z7^13+
    3363*z2*z3*z4*z5*z6^7- 2231*z2*z3*z4*z6^8- 2231*z2*z3*z5*z6^8-
    2231*z2*z4*z5*z6^8- 2231*z3*z4*z5*z6^8+ 1121*z2*z3*z6^9+ 1121*z2*z4*z6^9+
    1121*z3*z4*z6^9+ 1121*z2*z5*z6^9+ 1121*z3*z5*z6^9+ 1121*z4*z5*z6^9-
    12*z2*z6^10- 12*z3*z6^10- 12*z4*z6^10- 12*z5*z6^10- 1107*z6^11-
    1187*z2*z3*z4*z5*z6^6*z7+ 1132*z2*z3*z4*z6^7*z7+ 1132*z2*z3*z5*z6^7*z7+
    1132*z2*z4*z5*z6^7*z7+ 1132*z3*z4*z5*z6^7*z7- 1110*z2*z3*z6^8*z7-
    1110*z2*z4*z6^8*z7- 1110*z3*z4*z6^8*z7- 1110*z2*z5*z6^8*z7-
    1110*z3*z5*z6^8*z7- 1110*z4*z5*z6^8*z7+ 1109*z2*z6^9*z7+ 1109*z3*z6^9*z7+
    1109*z4*z6^9*z7+ 1109*z5*z6^9*z7- 1119*z6^10*z7- 1187*z2*z3*z4*z5*z6^5*z7^2+
    1132*z2*z3*z4*z6^6*z7^2+ 1132*z2*z3*z5*z6^6*z7^2+ 1132*z2*z4*z5*z6^6*z7^2+
    1132*z3*z4*z5*z6^6*z7^2- 1110*z2*z3*z6^7*z7^2- 1110*z2*z4*z6^7*z7^2-
    1110*z3*z4*z6^7*z7^2- 1110*z2*z5*z6^7*z7^2- 1110*z3*z5*z6^7*z7^2-
    1110*z4*z5*z6^7*z7^2+ 1109*z2*z6^8*z7^2+ 1109*z3*z6^8*z7^2+
    1109*z4*z6^8*z7^2+ 1109*z5*z6^8*z7^2- 1119*z6^9*z7^2-
    1187*z2*z3*z4*z5*z6^4*z7^3+ 1132*z2*z3*z4*z6^5*z7^3+
    1132*z2*z3*z5*z6^5*z7^3+ 1132*z2*z4*z5*z6^5*z7^3+ 1132*z3*z4*z5*z6^5*z7^3-
    1110*z2*z3*z6^6*z7^3- 1110*z2*z4*z6^6*z7^3- 1110*z3*z4*z6^6*z7^3-
    1110*z2*z5*z6^6*z7^3- 1110*z3*z5*z6^6*z7^3- 1110*z4*z5*z6^6*z7^3+
    1109*z2*z6^7*z7^3+ 1109*z3*z6^7*z7^3+ 1109*z4*z6^7*z7^3+ 1109*z5*z6^7*z7^3-
    1119*z6^8*z7^3- 1187*z2*z3*z4*z5*z6^3*z7^4+ 1132*z2*z3*z4*z6^4*z7^4+
    1132*z2*z3*z5*z6^4*z7^4+ 1132*z2*z4*z5*z6^4*z7^4+ 1132*z3*z4*z5*z6^4*z7^4-
    1110*z2*z3*z6^5*z7^4- 1110*z2*z4*z6^5*z7^4- 1110*z3*z4*z6^5*z7^4-
    1110*z2*z5*z6^5*z7^4- 1110*z3*z5*z6^5*z7^4- 1110*z4*z5*z6^5*z7^4+
    1109*z2*z6^6*z7^4+ 1109*z3*z6^6*z7^4+ 1109*z4*z6^6*z7^4+ 1109*z5*z6^6*z7^4-
    1119*z6^7*z7^4- 1187*z2*z3*z4*z5*z6^2*z7^5+ 1132*z2*z3*z4*z6^3*z7^5+
    1132*z2*z3*z5*z6^3*z7^5+ 1132*z2*z4*z5*z6^3*z7^5+ 1132*z3*z4*z5*z6^3*z7^5-
    1110*z2*z3*z6^4*z7^5- 1110*z2*z4*z6^4*z7^5- 1110*z3*z4*z6^4*z7^5-
    1110*z2*z5*z6^4*z7^5- 1110*z3*z5*z6^4*z7^5- 1110*z4*z5*z6^4*z7^5+
    1109*z2*z6^5*z7^5+ 1109*z3*z6^5*z7^5+ 1109*z4*z6^5*z7^5+ 1109*z5*z6^5*z7^5-
    1119*z6^6*z7^5- 1187*z2*z3*z4*z5*z6*z7^6+ 1132*z2*z3*z4*z6^2*z7^6+
    1132*z2*z3*z5*z6^2*z7^6+ 1132*z2*z4*z5*z6^2*z7^6+ 1132*z3*z4*z5*z6^2*z7^6-
    1110*z2*z3*z6^3*z7^6- 1110*z2*z4*z6^3*z7^6- 1110*z3*z4*z6^3*z7^6-
    1110*z2*z5*z6^3*z7^6- 1110*z3*z5*z6^3*z7^6- 1110*z4*z5*z6^3*z7^6+
    1109*z2*z6^4*z7^6+ 1109*z3*z6^4*z7^6+ 1109*z4*z6^4*z7^6+ 1109*z5*z6^4*z7^6-
    1119*z6^5*z7^6+ 3363*z2*z3*z4*z5*z7^7+ 1132*z2*z3*z4*z6*z7^7+
    1132*z2*z3*z5*z6*z7^7+ 1132*z2*z4*z5*z6*z7^7+ 1132*z3*z4*z5*z6*z7^7-
    1110*z2*z3*z6^2*z7^7- 1110*z2*z4*z6^2*z7^7- 1110*z3*z4*z6^2*z7^7-
    1110*z2*z5*z6^2*z7^7- 1110*z3*z5*z6^2*z7^7- 1110*z4*z5*z6^2*z7^7+
    1109*z2*z6^3*z7^7+ 1109*z3*z6^3*z7^7+ 1109*z4*z6^3*z7^7+ 1109*z5*z6^3*z7^7-
    1119*z6^4*z7^7- 2231*z2*z3*z4*z7^8- 2231*z2*z3*z5*z7^8- 2231*z2*z4*z5*z7^8-
    2231*z3*z4*z5*z7^8- 1110*z2*z3*z6*z7^8- 1110*z2*z4*z6*z7^8-
    1110*z3*z4*z6*z7^8- 1110*z2*z5*z6*z7^8- 1110*z3*z5*z6*z7^8-
    1110*z4*z5*z6*z7^8+ 1109*z2*z6^2*z7^8+ 1109*z3*z6^2*z7^8+ 1109*z4*z6^2*z7^8+
    1109*z5*z6^2*z7^8- 1119*z6^3*z7^8+ 1121*z2*z3*z7^9+ 1121*z2*z4*z7^9+
    1121*z3*z4*z7^9+ 1121*z2*z5*z7^9+ 1121*z3*z5*z7^9+ 1121*z4*z5*z7^9+
    1109*z2*z6*z7^9+ 1109*z3*z6*z7^9+ 1109*z4*z6*z7^9+ 1109*z5*z6*z7^9-
    1119*z6^2*z7^9- 12*z2*z7^10- 12*z3*z7^10- 12*z4*z7^10- 12*z5*z7^10-
    1119*z6*z7^10- 1107*z7^11- 4484*z2*z3*z4*z5*z6^5- 1121*z2*z3*z4*z6^6-
    1121*z2*z3*z5*z6^6- 1121*z2*z4*z5*z6^6- 1121*z3*z4*z5*z6^6+ 3363*z2*z3*z6^7+
    3363*z2*z4*z6^7+ 3363*z3*z4*z6^7+ 3363*z2*z5*z6^7+ 3363*z3*z5*z6^7+
    3363*z4*z5*z6^7- 3374*z2*z6^8- 3374*z3*z6^8- 3374*z4*z6^8- 3374*z5*z6^8+
    2264*z6^9+ 1154*z2*z3*z4*z5*z6^4*z7+ 3396*z2*z3*z4*z6^5*z7+
    3396*z2*z3*z5*z6^5*z7+ 3396*z2*z4*z5*z6^5*z7+ 3396*z3*z4*z5*z6^5*z7+
    2242*z2*z3*z6^6*z7+ 2242*z2*z4*z6^6*z7+ 2242*z3*z4*z6^6*z7+
    2242*z2*z5*z6^6*z7+ 2242*z3*z5*z6^6*z7+ 2242*z4*z5*z6^6*z7- 11*z2*z6^7*z7-
    11*z3*z6^7*z7- 11*z4*z6^7*z7- 11*z5*z6^7*z7- 1110*z6^8*z7+
    1154*z2*z3*z4*z5*z6^3*z7^2+ 3396*z2*z3*z4*z6^4*z7^2+
    3396*z2*z3*z5*z6^4*z7^2+ 3396*z2*z4*z5*z6^4*z7^2+ 3396*z3*z4*z5*z6^4*z7^2+
    2242*z2*z3*z6^5*z7^2+ 2242*z2*z4*z6^5*z7^2+ 2242*z3*z4*z6^5*z7^2+
    2242*z2*z5*z6^5*z7^2+ 2242*z3*z5*z6^5*z7^2+ 2242*z4*z5*z6^5*z7^2-
    11*z2*z6^6*z7^2- 11*z3*z6^6*z7^2- 11*z4*z6^6*z7^2- 11*z5*z6^6*z7^2-
    1110*z6^7*z7^2+ 1154*z2*z3*z4*z5*z6^2*z7^3+ 3396*z2*z3*z4*z6^3*z7^3+
    3396*z2*z3*z5*z6^3*z7^3+ 3396*z2*z4*z5*z6^3*z7^3+ 3396*z3*z4*z5*z6^3*z7^3+
    2242*z2*z3*z6^4*z7^3+ 2242*z2*z4*z6^4*z7^3+ 2242*z3*z4*z6^4*z7^3+
    2242*z2*z5*z6^4*z7^3+ 2242*z3*z5*z6^4*z7^3+ 2242*z4*z5*z6^4*z7^3-
    11*z2*z6^5*z7^3- 11*z3*z6^5*z7^3- 11*z4*z6^5*z7^3- 11*z5*z6^5*z7^3-
    1110*z6^6*z7^3+ 1154*z2*z3*z4*z5*z6*z7^4+ 3396*z2*z3*z4*z6^2*z7^4+
    3396*z2*z3*z5*z6^2*z7^4+ 3396*z2*z4*z5*z6^2*z7^4+ 3396*z3*z4*z5*z6^2*z7^4+
    2242*z2*z3*z6^3*z7^4+ 2242*z2*z4*z6^3*z7^4+ 2242*z3*z4*z6^3*z7^4+
    2242*z2*z5*z6^3*z7^4+ 2242*z3*z5*z6^3*z7^4+ 2242*z4*z5*z6^3*z7^4-
    11*z2*z6^4*z7^4- 11*z3*z6^4*z7^4- 11*z4*z6^4*z7^4- 11*z5*z6^4*z7^4-
    1110*z6^5*z7^4- 4484*z2*z3*z4*z5*z7^5+ 3396*z2*z3*z4*z6*z7^5+
    3396*z2*z3*z5*z6*z7^5+ 3396*z2*z4*z5*z6*z7^5+ 3396*z3*z4*z5*z6*z7^5+
    2242*z2*z3*z6^2*z7^5+ 2242*z2*z4*z6^2*z7^5+ 2242*z3*z4*z6^2*z7^5+
    2242*z2*z5*z6^2*z7^5+ 2242*z3*z5*z6^2*z7^5+ 2242*z4*z5*z6^2*z7^5-
    11*z2*z6^3*z7^5- 11*z3*z6^3*z7^5- 11*z4*z6^3*z7^5- 11*z5*z6^3*z7^5-
    1110*z6^4*z7^5- 1121*z2*z3*z4*z7^6- 1121*z2*z3*z5*z7^6- 1121*z2*z4*z5*z7^6-
    1121*z3*z4*z5*z7^6+ 2242*z2*z3*z6*z7^6+ 2242*z2*z4*z6*z7^6+
    2242*z3*z4*z6*z7^6+ 2242*z2*z5*z6*z7^6+ 2242*z3*z5*z6*z7^6+
    2242*z4*z5*z6*z7^6- 11*z2*z6^2*z7^6- 11*z3*z6^2*z7^6- 11*z4*z6^2*z7^6-
    11*z5*z6^2*z7^6- 1110*z6^3*z7^6+ 3363*z2*z3*z7^7+ 3363*z2*z4*z7^7+
    3363*z3*z4*z7^7+ 3363*z2*z5*z7^7+ 3363*z3*z5*z7^7+ 3363*z4*z5*z7^7-
    11*z2*z6*z7^7- 11*z3*z6*z7^7- 11*z4*z6*z7^7- 11*z5*z6*z7^7- 1110*z6^2*z7^7-
    3374*z2*z7^8- 3374*z3*z7^8- 3374*z4*z7^8- 3374*z5*z7^8- 1110*z6*z7^8+
    2264*z7^9+ 1755*z2*z3*z4*z5*z6^3+ 4495*z2*z3*z4*z6^4+ 4495*z2*z3*z5*z6^4+
    4495*z2*z4*z5*z6^4+ 4495*z3*z4*z5*z6^4+ 2740*z2*z3*z6^5+ 2740*z2*z4*z6^5+
    2740*z3*z4*z6^5+ 2740*z2*z5*z6^5+ 2740*z3*z5*z6^5+ 2740*z4*z5*z6^5+
    147*z2*z6^6+ 147*z3*z6^6+ 147*z4*z6^6+ 147*z5*z6^6+ 2604*z6^7-
    2887*z2*z3*z4*z5*z6^2*z7- 2751*z2*z3*z4*z6^3*z7- 2751*z2*z3*z5*z6^3*z7-
    2751*z2*z4*z5*z6^3*z7- 2751*z3*z4*z5*z6^3*z7- 1766*z2*z3*z6^4*z7-
    1766*z2*z4*z6^4*z7- 1766*z3*z4*z6^4*z7- 1766*z2*z5*z6^4*z7-
    1766*z3*z5*z6^4*z7- 1766*z4*z5*z6^4*z7+ 2887*z2*z6^5*z7+ 2887*z3*z6^5*z7+
    2887*z4*z6^5*z7+ 2887*z5*z6^5*z7+ 2751*z6^6*z7- 2887*z2*z3*z4*z5*z6*z7^2-
    2751*z2*z3*z4*z6^2*z7^2- 2751*z2*z3*z5*z6^2*z7^2- 2751*z2*z4*z5*z6^2*z7^2-
    2751*z3*z4*z5*z6^2*z7^2- 1766*z2*z3*z6^3*z7^2- 1766*z2*z4*z6^3*z7^2-
    1766*z3*z4*z6^3*z7^2- 1766*z2*z5*z6^3*z7^2- 1766*z3*z5*z6^3*z7^2-
    1766*z4*z5*z6^3*z7^2+ 2887*z2*z6^4*z7^2+ 2887*z3*z6^4*z7^2+
    2887*z4*z6^4*z7^2+ 2887*z5*z6^4*z7^2+ 2751*z6^5*z7^2+ 1755*z2*z3*z4*z5*z7^3-
    2751*z2*z3*z4*z6*z7^3- 2751*z2*z3*z5*z6*z7^3- 2751*z2*z4*z5*z6*z7^3-
    2751*z3*z4*z5*z6*z7^3- 1766*z2*z3*z6^2*z7^3- 1766*z2*z4*z6^2*z7^3-
    1766*z3*z4*z6^2*z7^3- 1766*z2*z5*z6^2*z7^3- 1766*z3*z5*z6^2*z7^3-
    1766*z4*z5*z6^2*z7^3+ 2887*z2*z6^3*z7^3+ 2887*z3*z6^3*z7^3+
    2887*z4*z6^3*z7^3+ 2887*z5*z6^3*z7^3+ 2751*z6^4*z7^3+ 4495*z2*z3*z4*z7^4+
    4495*z2*z3*z5*z7^4+ 4495*z2*z4*z5*z7^4+ 4495*z3*z4*z5*z7^4-
    1766*z2*z3*z6*z7^4- 1766*z2*z4*z6*z7^4- 1766*z3*z4*z6*z7^4-
    1766*z2*z5*z6*z7^4- 1766*z3*z5*z6*z7^4- 1766*z4*z5*z6*z7^4+
    2887*z2*z6^2*z7^4+ 2887*z3*z6^2*z7^4+ 2887*z4*z6^2*z7^4+ 2887*z5*z6^2*z7^4+
    2751*z6^3*z7^4+ 2740*z2*z3*z7^5+ 2740*z2*z4*z7^5+ 2740*z3*z4*z7^5+
    2740*z2*z5*z7^5+ 2740*z3*z5*z7^5+ 2740*z4*z5*z7^5+ 2887*z2*z6*z7^5+
    2887*z3*z6*z7^5+ 2887*z4*z6*z7^5+ 2887*z5*z6*z7^5+ 2751*z6^2*z7^5+
    147*z2*z7^6+ 147*z3*z7^6+ 147*z4*z7^6+ 147*z5*z7^6+ 2751*z6*z7^6+ 2604*z7^7+
    633*z2*z3*z4*z5*z6- 2988*z2*z3*z4*z6^2- 2988*z2*z3*z5*z6^2-
    2988*z2*z4*z5*z6^2- 2988*z3*z4*z5*z6^2+ 3588*z2*z3*z6^3+ 3588*z2*z4*z6^3+
    3588*z3*z4*z6^3+ 3588*z2*z5*z6^3+ 3588*z3*z5*z6^3+ 3588*z4*z5*z6^3+
    318*z2*z6^4+ 318*z3*z6^4+ 318*z4*z6^4+ 318*z5*z6^4+ 2037*z6^5+
    633*z2*z3*z4*z5*z7- 2355*z2*z3*z4*z6*z7- 2355*z2*z3*z5*z6*z7-
    2355*z2*z4*z5*z6*z7- 2355*z3*z4*z5*z6*z7+ 600*z2*z3*z6^2*z7+
    600*z2*z4*z6^2*z7+ 600*z3*z4*z6^2*z7+ 600*z2*z5*z6^2*z7+ 600*z3*z5*z6^2*z7+
    600*z4*z5*z6^2*z7+ 3906*z2*z6^3*z7+ 3906*z3*z6^3*z7+ 3906*z4*z6^3*z7+
    3906*z5*z6^3*z7+ 2355*z6^4*z7- 2988*z2*z3*z4*z7^2- 2988*z2*z3*z5*z7^2-
    2988*z2*z4*z5*z7^2- 2988*z3*z4*z5*z7^2+ 600*z2*z3*z6*z7^2+
    600*z2*z4*z6*z7^2+ 600*z3*z4*z6*z7^2+ 600*z2*z5*z6*z7^2+ 600*z3*z5*z6*z7^2+
    600*z4*z5*z6*z7^2+ 3906*z2*z6^2*z7^2+ 3906*z3*z6^2*z7^2+ 3906*z4*z6^2*z7^2+
    3906*z5*z6^2*z7^2+ 2355*z6^3*z7^2+ 3588*z2*z3*z7^3+ 3588*z2*z4*z7^3+
    3588*z3*z4*z7^3+ 3588*z2*z5*z7^3+ 3588*z3*z5*z7^3+ 3588*z4*z5*z7^3+
    3906*z2*z6*z7^3+ 3906*z3*z6*z7^3+ 3906*z4*z6*z7^3+ 3906*z5*z6*z7^3+
    2355*z6^2*z7^3+ 318*z2*z7^4+ 318*z3*z7^4+ 318*z4*z7^4+ 318*z5*z7^4+
    2355*z6*z7^4+ 2037*z7^5- 1068*z2*z3*z4- 1068*z2*z3*z5- 1068*z2*z4*z5-
    1068*z3*z4*z5- 2202*z2*z3*z6- 2202*z2*z4*z6- 2202*z3*z4*z6- 2202*z2*z5*z6-
    2202*z3*z5*z6- 2202*z4*z5*z6- 1776*z2*z6^2- 1776*z3*z6^2- 1776*z4*z6^2-
    1776*z5*z6^2+ 2166*z6^3- 2202*z2*z3*z7- 2202*z2*z4*z7- 2202*z3*z4*z7-
    2202*z2*z5*z7- 2202*z3*z5*z7- 2202*z4*z5*z7- 3978*z2*z6*z7- 3978*z3*z6*z7-
    3978*z4*z6*z7- 3978*z5*z6*z7+ 390*z6^2*z7- 1776*z2*z7^2- 1776*z3*z7^2-
    1776*z4*z7^2- 1776*z5*z7^2+ 390*z6*z7^2+ 2166*z7^3+ 3538*z2+ 3538*z3+
    3538*z4+ 3538*z5- 1169*z6- 1169*z7",
    "z1*z2^2*z3^2*z4^2*z5^2*z6^2*z7^2- 2250*z1*z2^2*z3^2*z4^2*z5^2*z6^2-
    2250*z1*z2^2*z3^2*z4^2*z5^2*z7^2- 2250*z1*z2^2*z3^2*z4^2*z6^2*z7^2-
    2250*z1*z2^2*z3^2*z5^2*z6^2*z7^2- 2250*z1*z2^2*z4^2*z5^2*z6^2*z7^2-
    2250*z1*z3^2*z4^2*z5^2*z6^2*z7^2+ 3938*z1*z2^2*z3^2*z4^2*z5^2+
    3938*z1*z2^2*z3^2*z4^2*z6^2+ 3938*z1*z2^2*z3^2*z5^2*z6^2+
    3938*z1*z2^2*z4^2*z5^2*z6^2+ 3938*z1*z3^2*z4^2*z5^2*z6^2+
    3938*z1*z2^2*z3^2*z4^2*z7^2+ 3938*z1*z2^2*z3^2*z5^2*z7^2+
    3938*z1*z2^2*z4^2*z5^2*z7^2+ 3938*z1*z3^2*z4^2*z5^2*z7^2+
    3938*z1*z2^2*z3^2*z6^2*z7^2+ 3938*z1*z2^2*z4^2*z6^2*z7^2+
    3938*z1*z3^2*z4^2*z6^2*z7^2+ 3938*z1*z2^2*z5^2*z6^2*z7^2+
    3938*z1*z3^2*z5^2*z6^2*z7^2+ 3938*z1*z4^2*z5^2*z6^2*z7^2-
    3516*z1*z2^2*z3^2*z4^2- 3516*z1*z2^2*z3^2*z5^2- 3516*z1*z2^2*z4^2*z5^2-
    3516*z1*z3^2*z4^2*z5^2- 3516*z1*z2^2*z3^2*z6^2- 3516*z1*z2^2*z4^2*z6^2-
    3516*z1*z3^2*z4^2*z6^2- 3516*z1*z2^2*z5^2*z6^2- 3516*z1*z3^2*z5^2*z6^2-
    3516*z1*z4^2*z5^2*z6^2- 3516*z1*z2^2*z3^2*z7^2- 3516*z1*z2^2*z4^2*z7^2-
    3516*z1*z3^2*z4^2*z7^2- 3516*z1*z2^2*z5^2*z7^2- 3516*z1*z3^2*z5^2*z7^2-
    3516*z1*z4^2*z5^2*z7^2- 3516*z1*z2^2*z6^2*z7^2- 3516*z1*z3^2*z6^2*z7^2-
    3516*z1*z4^2*z6^2*z7^2- 3516*z1*z5^2*z6^2*z7^2- 879*z1*z2^2*z3^2-
    879*z1*z2^2*z4^2- 879*z1*z3^2*z4^2- 879*z1*z2^2*z5^2- 879*z1*z3^2*z5^2-
    879*z1*z4^2*z5^2- 879*z1*z2^2*z6^2- 879*z1*z3^2*z6^2- 879*z1*z4^2*z6^2-
    879*z1*z5^2*z6^2- 879*z1*z2^2*z7^2- 879*z1*z3^2*z7^2- 879*z1*z4^2*z7^2-
    879*z1*z5^2*z7^2- 879*z1*z6^2*z7^2- 2470*z1*z2^2- 2470*z1*z3^2-
    2470*z1*z4^2- 2470*z1*z5^2- 2470*z1*z6^2- 2470*z1*z7^2+ 3883*z1- 1",
    "- z2- z3- z4- z5- z6-z7+ z8",
    "- z2*z3- z2*z4- z3*z4- z2*z5- z3*z5- z4*z5- z2*z6- z3*z6- z4*z6- z5*z6-
    z2*z7- z3*z7- z4*z7- z5*z7- z6*z7+ z9",
    "- z2*z3*z4- z2*z3*z5- z2*z4*z5- z3*z4*z5- z2*z3*z6- z2*z4*z6- z3*z4*z6-
    z2*z5*z6- z3*z5*z6- z4*z5*z6- z2*z3*z7- z2*z4*z7- z3*z4*z7- z2*z5*z7-
    z3*z5*z7- z4*z5*z7- z2*z6*z7- z3*z6*z7- z4*z6*z7- z5*z6*z7+ z10",
    "- z2*z3*z4*z5- z2*z3*z4*z6- z2*z3*z5*z6- z2*z4*z5*z6- z3*z4*z5*z6-
    z2*z3*z4*z7- z2*z3*z5*z7- z2*z4*z5*z7- z3*z4*z5*z7- z2*z3*z6*z7-
    z2*z4*z6*z7- z3*z4*z6*z7- z2*z5*z6*z7- z3*z5*z6*z7- z4*z5*z6*z7+ z11",
    "- z2*z3*z4*z5*z6- z2*z3*z4*z5*z7- z2*z3*z4*z6*z7- z2*z3*z5*z6*z7-
    z2*z4*z5*z6*z7- z3*z4*z5*z6*z7+ z12",
    "- z2*z3*z4*z5*z6*z7+ z13"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end
