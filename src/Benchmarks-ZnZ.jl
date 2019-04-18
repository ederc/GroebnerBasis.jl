function cyclicnz_3(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function cyclicnz_4(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function cyclicnz_5(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function cyclicnz_6(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function cyclicnz_7(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function cyclicnz_8(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function katsuranz_5(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function katsuranz_6(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function katsuranz_7(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function katsuranz_8(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function katsuranz_9(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function katsuranz_10(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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
