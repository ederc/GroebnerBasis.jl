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

function bayesnz_148(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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
function jasonnz_210(
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
    "x1^2*x3^4+x1*x2*x3^2*x5^2+x1*x2*x3*x4*x5*x7+x1*x2*x3*x4*x6*x8+x1*x2*x4^2*x6^2+x2^2*x4^4",
    "x2^6",
    "x1^6"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function mayrnz_42(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

function reimernz_5(
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
  vars = ["x","y","z","t","u"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "2*x^2-2*y^2+2*z^2-2*t^2+2*u^2-1",
  "2*x^3-2*y^3+2*z^3-2*t^3+2*u^3-1",
  "2*x^4-2*y^4+2*z^4-2*t^4+2*u^4-1",
  "2*x^5-2*y^5+2*z^5-2*t^5+2*u^5-1",
  "2*x^6-2*y^6+2*z^6-2*t^6+2*u^6-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function reimernz_6(
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
  vars = ["x1","x2","x3","x4","x5", "x6"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "2*x1^2-2*x2^2+2*x3^2-2*x4^2+2*x5^2-2*x6^2-1",
  "2*x1^3-2*x2^3+2*x3^3-2*x4^3+2*x5^3-2*x6^3-1",
  "2*x1^4-2*x2^4+2*x3^4-2*x4^4+2*x5^4-2*x6^4-1",
  "2*x1^5-2*x2^5+2*x3^5-2*x4^5+2*x5^5-2*x6^5-1",
  "2*x1^6-2*x2^6+2*x3^6-2*x4^6+2*x5^6-2*x6^6-1",
  "2*x1^7-2*x2^7+2*x3^7-2*x4^7+2*x5^7-2*x6^7-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function noonnz_7(
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
  vars = ["x1","x2","x3","x4","x5", "x6", "x7"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "10*x1*x2^2+10*x1*x3^2+10*x1*x4^2+10*x1*x5^2+10*x1*x6^2+10*x1*x7^2-11*x1+10",
  "10*x1^2*x2+10*x2*x3^2+10*x2*x4^2+10*x2*x5^2+10*x2*x6^2+10*x2*x7^2-11*x2+10",
  "10*x1^2*x3+10*x2^2*x3+10*x3*x4^2+10*x3*x5^2+10*x3*x6^2+10*x3*x7^2-11*x3+10",
  "10*x1^2*x4+10*x2^2*x4+10*x3^2*x4+10*x4*x5^2+10*x4*x6^2+10*x4*x7^2-11*x4+10",
  "10*x1^2*x5+10*x2^2*x5+10*x3^2*x5+10*x4^2*x5+10*x5*x6^2+10*x5*x7^2-11*x5+10",
  "10*x1^2*x6+10*x2^2*x6+10*x3^2*x6+10*x4^2*x6+10*x5^2*x6+10*x6*x7^2-11*x6+10",
  "10*x1^2*x7+10*x2^2*x7+10*x3^2*x7+10*x4^2*x7+10*x5^2*x7+10*x6^2*x7-11*x7+10"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function noonnz_8(
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
  vars = ["x1","x2","x3","x4","x5", "x6", "x7","x8"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "10*x1*x2^2+10*x1*x3^2+10*x1*x4^2+10*x1*x5^2+10*x1*x6^2+10*x1*x7^2+10*x1*x8^2-11*x1+10",
  "10*x1^2*x2+10*x2*x3^2+10*x2*x4^2+10*x2*x5^2+10*x2*x6^2+10*x2*x7^2+10*x2*x8^2-11*x2+10",
  "10*x1^2*x3+10*x2^2*x3+10*x3*x4^2+10*x3*x5^2+10*x3*x6^2+10*x3*x7^2+10*x3*x8^2-11*x3+10",
  "10*x1^2*x4+10*x2^2*x4+10*x3^2*x4+10*x4*x5^2+10*x4*x6^2+10*x4*x7^2+10*x4*x8^2-11*x4+10",
  "10*x1^2*x5+10*x2^2*x5+10*x3^2*x5+10*x4^2*x5+10*x5*x6^2+10*x5*x7^2+10*x5*x8^2-11*x5+10",
  "10*x1^2*x6+10*x2^2*x6+10*x3^2*x6+10*x4^2*x6+10*x5^2*x6+10*x6*x7^2+10*x6*x8^2-11*x6+10",
  "10*x1^2*x7+10*x2^2*x7+10*x3^2*x7+10*x4^2*x7+10*x5^2*x7+10*x6^2*x7+10*x7*x8^2-11*x7+10",
  "10*x1^2*x8+10*x2^2*x8+10*x3^2*x8+10*x4^2*x8+10*x5^2*x8+10*x6^2*x8+10*x7^2*x8-11*x8+10"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function f633nz(
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
  vars = ["U6","U5","U4","U3","U2","u6","u5","u4","u3","u2"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "2*u6+2*u5+2*u4+2*u3+2*u2+1",
   "2*U6+2*U5+2*U4+2*U3+2*U2+1",
   "1-4*u2*U3-4*u2*U4-4*u2*U5-4*u2*U6+4*u3*U2-4*u3*U4-4*u3*U5-4*u3*U6+4*u4*U2+4*u4*U3-4*u4*U5-4*u4*U6+4*u5*U2+4*u5*U3+4*u5*U4-4*u5*U6+4*u6*U2+4*u6*U3+4*u6*U4+4*u6*U5+2*u2+2*u3+2*u4+2*u5+2*u6",
   "1-4*U2*u3-4*U2*u4-4*U2*u5-4*U2*u6+4*U3*u2-4*U3*u4-4*U3*u5-4*U3*u6+4*U4*u2+4*U4*u3-4*U4*u5-4*U4*u6+4*U5*u2+4*U5*u3+4*U5*u4-4*U5*u6+4*U6*u2+4*U6*u3+4*U6*u4+4*U6*u5+2*U2+2*U3+2*U4+2*U5+2*U6",
   "U2*u2-1",
   "U3*u3-1",
   "U4*u4-1",
   "U5*u5-1",
   "U6*u6-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function f744nz(
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
  vars = ["U7","U6","U5","U4","U3","U2","u7","u6","u5","u4","u3","u2"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "2*u7+2*u6+2*u5+2*u4+2*u3+2*u2+1",
  "2*U7+2*U6+2*U5+2*U4+2*U3+2*U2+1",
  "8*U6*u7+8*U5*u7+8*U4*u7+8*U3*u7+8*U2*u7+8*U6*u6+8*U5*u6+8*U4*u6+8*U3*u6+8*U2*u6+8*U5*u5+8*U4*u5+8*U3*u5+8*U2*u5+8*U4*u4+8*U3*u4+8*U2*u4+8*U3*u3+8*U2*u3+8*U2*u2-17",
  "8*U7*u6+8*U6*u6+8*U7*u5+8*U6*u5+8*U5*u5+8*U7*u4+8*U6*u4+8*U5*u4+8*U4*u4+8*U7*u3+8*U6*u3+8*U5*u3+8*U4*u3+8*U3*u3+8*U7*u2+8*U6*u2+8*U5*u2+8*U4*u2+8*U3*u2+8*U2*u2-17",
  "16*U5*U3*u4+16*U5*U2*u4+16*U5*U2*u3+16*U4*U2*u3+8*U5*u4+8*U5*u3+8*U4*u3+8*U5*u2+8*U4*u2+8*U3*u2+18*U5+18*U4+18*U3+18*U2+11",
  "16*U4*u5*u3+16*U4*u5*u2+16*U3*u5*u2+16*U3*u4*u2+8*U4*u5+8*U3*u5+8*U2*u5+8*U3*u4+8*U2*u4+8*U2*u3+18*u5+18*u4+18*u3+18*u2+11",
  "U2*u2-1",
  "U3*u3-1",
  "U4*u4-1",
  "U5*u5-1",
  "U6*u6-1",
  "U7*u7-1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function f855nz(
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
  vars = ["U8","U7","U6","U5","U4","U3","U2","u8","u7","u6","u5","u4","u3","u2"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
"2*u8+2*u7+2*u6+2*u5+2*u4+2*u3+2*u2+1",
"2*U8+2*U7+2*U6+2*U5+2*U4+2*U3+2*U2+1",
"U2*u2-1",
"U3*u3-1",
"U4*u4-1",
"U5*u5-1",
"U6*u6-1",
"U7*u7-1",
"U8*u8-1",
"-4*U7*u8-4*U6*u8-4*U5*u8-4*U4*u8-4*U3*u8-4*U2*u8+4*U8*u7-4*U6*u7-4*U5*u7-4*U4*u7-4*U3*u7-4*U2*u7+4*U8*u6+4*U7*u6-4*U5*u6-4*U4*u6-4*U3*u6-4*U2*u6+4*U8*u5+4*U7*u5+4*U6*u5-4*U4*u5-4*U3*u5-4*U2*u5+4*U8*u4+4*U7*u4+4*U6*u4+4*U5*u4-4*U3*u4-4*U2*u4+4*U8*u3+4*U7*u3+4*U6*u3+4*U5*u3+4*U4*u3-4*U2*u3+4*U8*u2+4*U7*u2+4*U6*u2+4*U5*u2+4*U4*u2+4*U3*u2+2*U8+2*U7+2*U6+2*U5+2*U4+2*U3+2*U2+1",
"4*U7*u8+4*U6*u8+4*U5*u8+4*U4*u8+4*U3*u8+4*U2*u8-4*U8*u7+4*U6*u7+4*U5*u7+4*U4*u7+4*U3*u7+4*U2*u7-4*U8*u6-4*U7*u6+4*U5*u6+4*U4*u6+4*U3*u6+4*U2*u6-4*U8*u5-4*U7*u5-4*U6*u5+4*U4*u5+4*U3*u5+4*U2*u5-4*U8*u4-4*U7*u4-4*U6*u4-4*U5*u4+4*U3*u4+4*U2*u4-4*U8*u3-4*U7*u3-4*U6*u3-4*U5*u3-4*U4*u3+4*U2*u3-4*U8*u2-4*U7*u2-4*U6*u2-4*U5*u2-4*U4*u2-4*U3*u2+2*u8+2*u7+2*u6+2*u5+2*u4+2*u3+2*u2+1",
"16*U6*U4*u5+16*U6*U3*u5+16*U6*U2*u5+16*U6*U3*u4+16*U5*U3*u4+16*U6*U2*u4+16*U5*U2*u4+16*U6*U2*u3+16*U5*U2*u3+16*U4*U2*u3+8*U6*u5+8*U6*u4+8*U5*u4+8*U6*u3+8*U5*u3+8*U4*u3+8*U6*u2+8*U5*u2+8*U4*u2+8*U3*u2+26*U6+26*U5+26*U4+26*U3+26*U2+15",
"16*U5*u6*u4+16*U5*u6*u3+16*U4*u6*u3+16*U4*u5*u3+16*U5*u6*u2+16*U4*u6*u2+16*U3*u6*u2+16*U4*u5*u2+16*U3*u5*u2+16*U3*u4*u2+8*U5*u6+8*U4*u6+8*U3*u6+8*U2*u6+8*U4*u5+8*U3*u5+8*U2*u5+8*U3*u4+8*U2*u4+8*U2*u3+26*u6+26*u5+26*u4+26*u3+26*u2+15",
"-2*U7*U5*u8*u6-2*U7*U4*u8*u6-2*U7*U3*u8*u6-2*U7*U2*u8*u6-2*U7*U4*u8*u5-2*U6*U4*u8*u5-2*U7*U3*u8*u5-2*U6*U3*u8*u5-2*U7*U2*u8*u5-2*U6*U2*u8*u5+2*U8*U6*u7*u5-2*U6*U4*u7*u5-2*U6*U3*u7*u5-2*U6*U2*u7*u5-2*U7*U3*u8*u4-2*U6*U3*u8*u4-2*U5*U3*u8*u4-2*U7*U2*u8*u4-2*U6*U2*u8*u4-2*U5*U2*u8*u4+2*U8*U6*u7*u4+2*U8*U5*u7*u4-2*U6*U3*u7*u4-2*U5*U3*u7*u4-2*U6*U2*u7*u4-2*U5*U2*u7*u4+2*U8*U5*u6*u4+2*U7*U5*u6*u4-2*U5*U3*u6*u4-2*U5*U2*u6*u4-2*U7*U2*u8*u3-2*U6*U2*u8*u3-2*U5*U2*u8*u3-2*U4*U2*u8*u3+2*U8*U6*u7*u3+2*U8*U5*u7*u3+2*U8*U4*u7*u3-2*U6*U2*u7*u3-2*U5*U2*u7*u3-2*U4*U2*u7*u3+2*U8*U5*u6*u3+2*U7*U5*u6*u3+2*U8*U4*u6*u3+2*U7*U4*u6*u3-2*U5*U2*u6*u3-2*U4*U2*u6*u3+2*U8*U4*u5*u3+2*U7*U4*u5*u3+2*U6*U4*u5*u3-2*U4*U2*u5*u3+2*U8*U6*u7*u2+2*U8*U5*u7*u2+2*U8*U4*u7*u2+2*U8*U3*u7*u2+2*U8*U5*u6*u2+2*U7*U5*u6*u2+2*U8*U4*u6*u2+2*U7*U4*u6*u2+2*U8*U3*u6*u2+2*U7*U3*u6*u2+2*U8*U4*u5*u2+2*U7*U4*u5*u2+2*U6*U4*u5*u2+2*U8*U3*u5*u2+2*U7*U3*u5*u2+2*U6*U3*u5*u2+2*U8*U3*u4*u2+2*U7*U3*u4*u2+2*U6*U3*u4*u2+2*U5*U3*u4*u2+U8*U6*u7+U8*U5*u7+U8*U4*u7+U8*U3*u7+U8*U2*u7+U8*U5*u6+U7*U5*u6+U8*U4*u6+U7*U4*u6+U8*U3*u6+U7*U3*u6+U8*U2*u6+U7*U2*u6-U7*u8*u6+U8*U4*u5+U7*U4*u5+U6*U4*u5+U8*U3*u5+U7*U3*u5+U6*U3*u5+U8*U2*u5+U7*U2*u5+U6*U2*u5-U7*u8*u5-U6*u8*u5-U6*u7*u5+U8*U3*u4+U7*U3*u4+U6*U3*u4+U5*U3*u4+U8*U2*u4+U7*U2*u4+U6*U2*u4+U5*U2*u4-U7*u8*u4-U6*u8*u4-U5*u8*u4-U6*u7*u4-U5*u7*u4-U5*u6*u4+U8*U2*u3+U7*U2*u3+U6*U2*u3+U5*U2*u3+U4*U2*u3-U7*u8*u3-U6*u8*u3-U5*u8*u3-U4*u8*u3-U6*u7*u3-U5*u7*u3-U4*u7*u3-U5*u6*u3-U4*u6*u3-U4*u5*u3-U7*u8*u2-U6*u8*u2-U5*u8*u2-U4*u8*u2-U3*u8*u2-U6*u7*u2-U5*u7*u2-U4*u7*u2-U3*u7*u2-U5*u6*u2-U4*u6*u2-U3*u6*u2-U4*u5*u2-U3*u5*u2-U3*u4*u2",
"2*U7*U5*u8*u6+2*U7*U4*u8*u6+2*U7*U3*u8*u6+2*U7*U2*u8*u6+2*U7*U4*u8*u5+2*U6*U4*u8*u5+2*U7*U3*u8*u5+2*U6*U3*u8*u5+2*U7*U2*u8*u5+2*U6*U2*u8*u5-2*U8*U6*u7*u5+2*U6*U4*u7*u5+2*U6*U3*u7*u5+2*U6*U2*u7*u5+2*U7*U3*u8*u4+2*U6*U3*u8*u4+2*U5*U3*u8*u4+2*U7*U2*u8*u4+2*U6*U2*u8*u4+2*U5*U2*u8*u4-2*U8*U6*u7*u4-2*U8*U5*u7*u4+2*U6*U3*u7*u4+2*U5*U3*u7*u4+2*U6*U2*u7*u4+2*U5*U2*u7*u4-2*U8*U5*u6*u4-2*U7*U5*u6*u4+2*U5*U3*u6*u4+2*U5*U2*u6*u4+2*U7*U2*u8*u3+2*U6*U2*u8*u3+2*U5*U2*u8*u3+2*U4*U2*u8*u3-2*U8*U6*u7*u3-2*U8*U5*u7*u3-2*U8*U4*u7*u3+2*U6*U2*u7*u3+2*U5*U2*u7*u3+2*U4*U2*u7*u3-2*U8*U5*u6*u3-2*U7*U5*u6*u3-2*U8*U4*u6*u3-2*U7*U4*u6*u3+2*U5*U2*u6*u3+2*U4*U2*u6*u3-2*U8*U4*u5*u3-2*U7*U4*u5*u3-2*U6*U4*u5*u3+2*U4*U2*u5*u3-2*U8*U6*u7*u2-2*U8*U5*u7*u2-2*U8*U4*u7*u2-2*U8*U3*u7*u2-2*U8*U5*u6*u2-2*U7*U5*u6*u2-2*U8*U4*u6*u2-2*U7*U4*u6*u2-2*U8*U3*u6*u2-2*U7*U3*u6*u2-2*U8*U4*u5*u2-2*U7*U4*u5*u2-2*U6*U4*u5*u2-2*U8*U3*u5*u2-2*U7*U3*u5*u2-2*U6*U3*u5*u2-2*U8*U3*u4*u2-2*U7*U3*u4*u2-2*U6*U3*u4*u2-2*U5*U3*u4*u2-U8*U6*u7-U8*U5*u7-U8*U4*u7-U8*U3*u7-U8*U2*u7-U8*U5*u6-U7*U5*u6-U8*U4*u6-U7*U4*u6-U8*U3*u6-U7*U3*u6-U8*U2*u6-U7*U2*u6+U7*u8*u6-U8*U4*u5-U7*U4*u5-U6*U4*u5-U8*U3*u5-U7*U3*u5-U6*U3*u5-U8*U2*u5-U7*U2*u5-U6*U2*u5+U7*u8*u5+U6*u8*u5+U6*u7*u5-U8*U3*u4-U7*U3*u4-U6*U3*u4-U5*U3*u4-U8*U2*u4-U7*U2*u4-U6*U2*u4-U5*U2*u4+U7*u8*u4+U6*u8*u4+U5*u8*u4+U6*u7*u4+U5*u7*u4+U5*u6*u4-U8*U2*u3-U7*U2*u3-U6*U2*u3-U5*U2*u3-U4*U2*u3+U7*u8*u3+U6*u8*u3+U5*u8*u3+U4*u8*u3+U6*u7*u3+U5*u7*u3+U4*u7*u3+U5*u6*u3+U4*u6*u3+U4*u5*u3+U7*u8*u2+U6*u8*u2+U5*u8*u2+U4*u8*u2+U3*u8*u2+U6*u7*u2+U5*u7*u2+U4*u7*u2+U3*u7*u2+U5*u6*u2+U4*u6*u2+U3*u6*u2+U4*u5*u2+U3*u5*u2+U3*u4*u2"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function econz_10(
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
  vars = ["x0","x1","x2","x3","x4","x5","x6","x7","x8","x9"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
"x0*x1*x9+x1*x2*x9+x2*x3*x9+x3*x4*x9+x4*x5*x9+x5*x6*x9+x6*x7*x9+x7*x8*x9+x0*x9-1",
"x0*x2*x9+x1*x3*x9+x2*x4*x9+x3*x5*x9+x4*x6*x9+x5*x7*x9+x6*x8*x9+x1*x9-2",
"x0*x3*x9+x1*x4*x9+x2*x5*x9+x3*x6*x9+x4*x7*x9+x5*x8*x9+x2*x9-3",
"x0*x4*x9+x1*x5*x9+x2*x6*x9+x3*x7*x9+x4*x8*x9+x3*x9-4",
"x0*x5*x9+x1*x6*x9+x2*x7*x9+x3*x8*x9+x4*x9-5",
"x0*x6*x9+x1*x7*x9+x2*x8*x9+x5*x9-6",
"x0*x7*x9+x1*x8*x9+x6*x9-7",
"x0*x8*x9+x7*x9-8",
"x8*x9-9",
"x0+x1+x2+x3+x4+x5+x6+x7+x8+1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function econz_11(
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
  vars = ["x0","x1","x2","x3","x4","x5","x6","x7","x8","x9","x10"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "x0*x1*x10+x1*x2*x10+x2*x3*x10+x3*x4*x10+x4*x5*x10+x5*x6*x10+x6*x7*x10+x7*x8*x10+x8*x9*x10+x0*x10-1",
  "x0*x2*x10+x1*x3*x10+x2*x4*x10+x3*x5*x10+x4*x6*x10+x5*x7*x10+x6*x8*x10+x7*x9*x10+x1*x10-2",
  "x0*x3*x10+x1*x4*x10+x2*x5*x10+x3*x6*x10+x4*x7*x10+x5*x8*x10+x6*x9*x10+x2*x10-3",
  "x0*x4*x10+x1*x5*x10+x2*x6*x10+x3*x7*x10+x4*x8*x10+x5*x9*x10+x3*x10-4",
  "x0*x5*x10+x1*x6*x10+x2*x7*x10+x3*x8*x10+x4*x9*x10+x4*x10-5",
  "x0*x6*x10+x1*x7*x10+x2*x8*x10+x3*x9*x10+x5*x10-6",
  "x0*x7*x10+x1*x8*x10+x2*x9*x10+x6*x10-7",
  "x0*x8*x10+x1*x9*x10+x7*x10-8",
  "x0*x9*x10+x8*x10-9",
  "x9*x10-10",
  "x0+x1+x2+x3+x4+x5+x6+x7+x8+x9+1"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function lichtblaunz(
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
  vars = ["t","x","y"]
  if char == 0
    R, X = Singular.PolynomialRing(Singular.QQ, vars, ordering = ord)
  else
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
  end
  global X
  # parses X[i] to xi
  [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
  ps =
  "x-110*t^2+495*t^3-1320*t^4+2772*t^5-5082*t^6+7590*t^7-8085*t^8+5555*t^9-2189*t^10+374*t^11",
  "y-22*t+110*t^2-330*t^3+1848*t^5-3696*t^6+3300*t^7-1650*t^8+550*t^9-88*t^10-22*t^11"

  id = Singular.Ideal(R, [eval(Meta.parse("$p")) for p in ps])
  R, id
end

function yangnz_1(
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
    R, X = Singular.PolynomialRing(Singular.N_ZnRing(char), vars, ordering = ord)
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

################################################################################
#
#  Benchmarks converted from magma
#
################################################################################

const PolynomialRing = Singular.PolynomialRing

function bayes148(R)
  Rx = Singular.@PolynomialRing R "x" 32
  gens = [-x23*x32+x24*x31, -x22*x32+x24*x30, -x22*x31+x23*x30, -x21*x32+x24*x29, -x21*x31+x23*x29, -x21*x30+x22*x29, -x12*x32+x16*x28,  -x19*x28+x20*x27,
  -x11*x31+x15*x27, -x18*x28+x20*x26, -x18*x27+x19*x26, -x10*x30+x14*x26, -x17*x28+x20*x25, -x17*x27+x19*x25, -x17*x26+x18*x25, -x9*x29+x13*x25, x20*x8-x24*x4,
  -x17*x20-x17*x24-2*x17*x28-x17*x32+x18*x19+x18*x23+2*x18*x27+x18*x31+x19*x22+x19*x30-x20*x21-x20*x29-x21*x24-x21*x28-2*x21*x32+x22*x23+x22*x27+2*x22*x31+x23*x26-x24*x25-x25*x28-x25*x32+x26*x27+x26*x31+x27*x30-x28*x29-x29*x32+x30*x31,
  x19*x7-x23*x3, x18*x6-x2*x22, -x1*x21+x17*x5]
  I = Singular.Ideal(Rx, gens)
  return I
end

function butcher83(R)
  Rx, (A, a32, B, b1, b2, b3, c2, c3) = Singular.PolynomialRing(R, ["P", "A", "a32", "B", "b1", "b2", "b3", "c2", "c3"]);
  gens = [
     A-B+b1+b2+b3,2*A*B-2*B^2+2*b2*c2+2*b3*c3-B-1,
    -3*A*B^2+3*B^3+3*b2*c2^2+3*b3*c3^2+3*B^2-A+4*B,
    -6*A*B^2+6*B^3+6*a32*b3*c2-3*A*B+6*B^2-A+4*B,
    4*A*B^3-4*B^4+4*b3*c3^3-6*B^3+4*A*B-10*B^2+332*b2*c2-B-1,
    8*A*B^3-8*B^4+8*a32*b3*c2*c3+4*A*B^2-12*B^3+4*A*B-14*B^2-3*B-1,
    12*A*B^3-12*B^4+12*a32*b3*c2^2+12*A*B^2-18*B^3+8*A*B-14*B^2-B-1,
    -24*A*B^3+24*B^4-24*A*B^2+36*B^3-8*A*B+26*B^2+7*B+1
   ]
  return Singular.Ideal(Rx, gens)
end

function cyc6(R)
  Rx = Singular.@PolynomialRing R "x" 6
  gens = [
  x1+x2+x3+x4+x5+x6,
  x1*x2+x2*x3+x3*x4+x4*x5+x1*x6+x5*x6,
  x1*x2*x3+x2*x3*x4+x3*x4*x5+x1*x2*x6+x1*x5*x6+x4*x5*x6,
  x1*x2*x3*x4+x2*x3*x4*x5+x1*x2*x3*x6+x1*x2*x5*x6+x1*x4*x5*x6+x3*x4*x5*x6,
  x1*x2*x3*x4*x5+x1*x2*x3*x4*x6+x1*x2*x3*x5*x6+x1*x2*x4*x5*x6+x1*x3*x4*x5*x6+x2*x3*x4*x5*x6,
  x1*x2*x3*x4*x5*x6-1
  ]
  return Singular.Ideal(Rx, gens)
end

function cyc7(R)
  Rx = Singular.@PolynomialRing R "x" 7
  gens = [
  x1+x2+x3+x4+x5+x6+x7,
  x1*x2+x2*x3+x3*x4+x4*x5+x5*x6+x1*x7+x6*x7,
  x1*x2*x3+x2*x3*x4+x3*x4*x5+x4*x5*x6+x1*x2*x7+x1*x6*x7+x5*x6*x7,
  x1*x2*x3*x4+x2*x3*x4*x5+x3*x4*x5*x6+x1*x2*x3*x7+x1*x2*x6*x7+x1*x5*x6*x7+x4*x5*x6*x7,
  x1*x2*x3*x4*x5+x2*x3*x4*x5*x6+x1*x2*x3*x4*x7+x1*x2*x3*x6*x7+x1*x2*x5*x6*x7+x1*x4*x5*x6*x7+x3*x4*x5*x6*x7,
  x1*x2*x3*x4*x5*x6+x1*x2*x3*x4*x5*x7+x1*x2*x3*x4*x6*x7+x1*x2*x3*x5*x6*x7+x1*x2*x4*x5*x6*x7+x1*x3*x4*x5*x6*x7+x2*x3*x4*x5*x6*x7,
  x1*x2*x3*x4*x5*x6*x7-1
  ]
  return Singular.Ideal(Rx, gens)
end

function eco10(R)
  Rx, (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9) = PolynomialRing(R, ["x$i" for i in 0:9]);
  gens =  [
  x0*x1*x9+x1*x2*x9+x2*x3*x9+x3*x4*x9+x4*x5*x9+x5*x6*x9+x6*x7*x9+x7*x8*x9+x0*x9-1,
  x0*x2*x9+x1*x3*x9+x2*x4*x9+x3*x5*x9+x4*x6*x9+x5*x7*x9+x6*x8*x9+x1*x9-2,
  x0*x3*x9+x1*x4*x9+x2*x5*x9+x3*x6*x9+x4*x7*x9+x5*x8*x9+x2*x9-3,
  x0*x4*x9+x1*x5*x9+x2*x6*x9+x3*x7*x9+x4*x8*x9+x3*x9-4,
  x0*x5*x9+x1*x6*x9+x2*x7*x9+x3*x8*x9+x4*x9-5,
  x0*x6*x9+x1*x7*x9+x2*x8*x9+x5*x9-6,
  x0*x7*x9+x1*x8*x9+x6*x9-7,
  x0*x8*x9+x7*x9-8,
  x8*x9-9,
  x0+x1+x2+x3+x4+x5+x6+x7+x8+1
  ]
  return Singular.Ideal(Rx, gens)
end

function eco9(R)
  Rx, (x0,x1,x2,x3,x4,x5,x6,x7,x8) = PolynomialRing(R, ["x$i" for i in 0:8]);
  gens = [
  x0*x1*x8+x1*x2*x8+x2*x3*x8+x3*x4*x8+x4*x5*x8+x5*x6*x8+x6*x7*x8+x0*x8-1,
  x0*x2*x8+x1*x3*x8+x2*x4*x8+x3*x5*x8+x4*x6*x8+x5*x7*x8+x1*x8-2,
  x0*x3*x8+x1*x4*x8+x2*x5*x8+x3*x6*x8+x4*x7*x8+x2*x8-3,
  x0*x4*x8+x1*x5*x8+x2*x6*x8+x3*x7*x8+x3*x8-4,
  x0*x5*x8+x1*x6*x8+x2*x7*x8+x4*x8-5,
  x0*x6*x8+x1*x7*x8+x5*x8-6,
  x0*x7*x8+x6*x8-7,
  x7*x8-8,
  x0+x1+x2+x3+x4+x5+x6+x7+1
  ]
  return Singular.Ideal(Rx, gens)
end

function f633(R)
  Rx, (U6,U5,U4,U3,U2,u6,u5,u4,u3,u2) = PolynomialRing(R, vcat(["U$i" for i in 6:-1:2], ["u$i" for i in 6:-1:2]));
  gens = [
  2*u6 + 2*u5 + 2*u4 + 2*u3 + 2*u2 + 1,
  2*U6 + 2*U5 + 2*U4 + 2*U3 + 2*U2 + 1,
  1-4*u2*U3-4*u2*U4-4*u2*U5-4*u2*U6+4*u3*U2-4*u3*U4-4*u3*U5-4*u3*U6+4*u4*U2+4*u4*U3-4*u4*U5-4*u4*U6+4*u5*U2+4*u5*U3+4*u5*U4-4*u5*U6+4*u6*U2+4*u6*U3+4*u6*U4+4*u6*U5+2*u2+2*u3+2*u4+2*u5+2*u6,
  1-4*U2*u3-4*U2*u4-4*U2*u5-4*U2*u6+4*U3*u2-4*U3*u4-4*U3*u5-4*U3*u6+4*U4*u2+4*U4*u3-4*U4*u5-4*U4*u6+4*U5*u2+4*U5*u3+4*U5*u4-4*U5*u6+4*U6*u2+4*U6*u3+4*U6*u4+4*U6*u5+2*U2+2*U3+2*U4+2*U5+2*U6,
  U2*u2 - 1,
  U3*u3 - 1,
  U4*u4 - 1,
  U5*u5 - 1,
  U6*u6 - 1
  ]
  return Singular.Ideal(Rx, gens)
end

function f744(R)
  Rx, (U7,U6,U5,U4,U3,U2,u7,u6,u5,u4,u3,u2) = PolynomialRing(R, vcat(["U$i" for i in 7:-1:2], ["u$i" for i in 7:-1:2]));
  gens = [
  2*u7 + 2*u6 + 2*u5 + 2*u4 + 2*u3 + 2*u2 + 1,
  2*U7 + 2*U6 + 2*U5 + 2*U4 + 2*U3 + 2*U2 + 1,
  8*U6*u7 + 8*U5*u7 + 8*U4*u7 + 8*U3*u7 + 8*U2*u7 + 8*U6*u6 + 8*U5*u6 +
  8*U4*u6 + 8*U3*u6 + 8*U2*u6 + 8*U5*u5 + 8*U4*u5 + 8*U3*u5 + 8*U2*u5 +
  8*U4*u4 + 8*U3*u4 + 8*U2*u4 + 8*U3*u3 + 8*U2*u3 + 8*U2*u2 - 17,
  8*U7*u6 + 8*U6*u6 + 8*U7*u5 + 8*U6*u5 + 8*U5*u5 + 8*U7*u4 + 8*U6*u4 +
  8*U5*u4 + 8*U4*u4 + 8*U7*u3 + 8*U6*u3 + 8*U5*u3 + 8*U4*u3 + 8*U3*u3 +
  8*U7*u2 + 8*U6*u2 + 8*U5*u2 + 8*U4*u2 + 8*U3*u2 + 8*U2*u2 - 17,
  16*U5*U3*u4 + 16*U5*U2*u4 + 16*U5*U2*u3 + 16*U4*U2*u3 + 8*U5*u4 +
  8*U5*u3 + 8*U4*u3 + 8*U5*u2 + 8*U4*u2 + 8*U3*u2 + 18*U5 + 18*U4 +
  18*U3 + 18*U2 + 11,
  16*U4*u5*u3 + 16*U4*u5*u2 + 16*U3*u5*u2 + 16*U3*u4*u2 + 8*U4*u5 +
  8*U3*u5 + 8*U2*u5 + 8*U3*u4 + 8*U2*u4 + 8*U2*u3 + 18*u5 + 18*u4 +
  18*u3 + 18*u2 + 11,
  U2*u2 - 1,
  U3*u3 - 1,
  U4*u4 - 1,
  U5*u5 - 1,
  U6*u6 - 1,
  U7*u7 - 1
  ]
  return Singular.Ideal(Rx, gens)
end

function gametwo7(Q)
  Rx = Singular.@PolynomialRing R "x" 7
  gens = [
  3821*p2*p3*p4*p5*p6*p7-7730*p2*p3*p4*p5*p6-164*p2*p3*p4*p5*p7-2536*p2*p3*p4*p6*p7-4321*p2*p3*p5*p6*p7-2161*p2*p4*p5*p6*p7-2188*p3*p4*p5*p6*p7-486*p2*p3*p4*p5+3491*p2*p3*p4*p6+4247*p2*p3*p5*p6+3528*p2*p4*p5*p6+2616*p3*p4*p5*p6-101*p2*p3*p4*p7+1765*p2*p3*p5*p7+258*p2*p4*p5*p7-378*p3*p4*p5*p7+1246*p2*p3*p6*p7+2320*p2*p4*p6*p7+1776*p3*p4*p6*p7+1715*p2*p5*p6*p7+728*p3*p5*p6*p7+842*p4*p5*p6*p7+69*p2*p3*p4-1660*p2*p3*p5+1863*p2*p4*p5+1520*p3*p4*p5-245*p2*p3*p6-804*p2*p4*p6-2552*p3*p4*p6-3152*p2*p5*p6+40*p3*p5*p6-1213*p4*p5*p6+270*p2*p3*p7-851*p2*p4*p7+327*p3*p4*p7-1151*p2*p5*p7+1035*p3*p5*p7-161*p4*p5*p7-230*p2*p6*p7-294*p3*p6*p7-973*p4*p6*p7-264*p5*p6*p7+874*p2*p3-2212*p2*p4+168*p3*p4+511*p2*p5-918*p3*p5-2017*p4*p5-76*p2*p6+465*p3*p6+1629*p4*p6+856*p5*p6-54*p2*p7-1355*p3*p7+227*p4*p7+77*p5*p7-220*p6*p7-696*p2+458*p3+486*p4+661*p5-650*p6+671*p7-439,
  -6157*p1*p3*p4*p5*p6*p7+13318*p1*p3*p4*p5*p6+5928*p1*p3*p4*p5*p7+1904*p1*p3*p4*p6*p7+2109*p1*p3*p5*p6*p7+8475*p1*p4*p5*p6*p7+2878*p3*p4*p5*p6*p7-8339*p1*p3*p4*p5-2800*p1*p3*p4*p6-9649*p1*p3*p5*p6-10964*p1*p4*p5*p6-4481*p3*p4*p5*p6+251*p1*p3*p4*p7-4245*p1*p3*p5*p7-7707*p1*p4*p5*p7-2448*p3*p4*p5*p7+1057*p1*p3*p6*p7-3605*p1*p4*p6*p7+546*p3*p4*p6*p7-3633*p1*p5*p6*p7-699*p3*p5*p6*p7-4126*p4*p5*p6*p7-730*p1*p3*p4+5519*p1*p3*p5+8168*p1*p4*p5+4366*p3*p4*p5+2847*p1*p3*p6+2058*p1*p4*p6-1416*p3*p4*p6+8004*p1*p5*p6+4740*p3*p5*p6+5361*p4*p5*p6-677*p1*p3*p7+1755*p1*p4*p7-760*p3*p4*p7+3384*p1*p5*p7+2038*p3*p5*p7+4119*p4*p5*p7+812*p1*p6*p7+11*p3*p6*p7+2022*p4*p6*p7+2642*p5*p6*p7+1276*p1*p3-1723*p1*p4+121*p3*p4-6456*p1*p5-3710*p3*p5-4525*p4*p5-2187*p1*p6-1559*p3*p6-848*p4*p6-4041*p5*p6-83*p1*p7-12*p3*p7-1180*p4*p7-2747*p5*p7-1970*p6*p7+2575*p1-161*p3+2149*p4+4294*p5+1687*p6+958*p7-1950,
  182*p1*p2*p4*p5*p6*p7-2824*p1*p2*p4*p5*p6-3513*p1*p2*p4*p5*p7-3386*p1*p2*p4*p6*p7-2330*p1*p2*p5*p6*p7-2838*p1*p4*p5*p6*p7+1294*p2*p4*p5*p6*p7+4764*p1*p2*p4*p5+1647*p1*p2*p4*p6+4221*p1*p2*p5*p6+814*p1*p4*p5*p6+2738*p2*p4*p5*p6+4057*p1*p2*p4*p7+2403*p1*p2*p5*p7+2552*p1*p4*p5*p7+471*p2*p4*p5*p7+448*p1*p2*p6*p7+2336*p1*p4*p6*p7+1617*p2*p4*p6*p7+2220*p1*p5*p6*p7-1543*p2*p5*p6*p7+402*p4*p5*p6*p7-5184*p1*p2*p4-3983*p1*p2*p5+44*p1*p4*p5-1327*p2*p4*p5-581*p1*p2*p6-389*p1*p4*p6-2722*p2*p4*p6+443*p1*p5*p6-2893*p2*p5*p6-154*p4*p5*p6-1277*p1*p2*p7-2018*p1*p4*p7-509*p2*p4*p7-1254*p1*p5*p7+602*p2*p5*p7-464*p4*p5*p7-647*p1*p6*p7+922*p2*p6*p7-1463*p4*p6*p7+729*p5*p6*p7+2665*p1*p2+591*p1*p4+981*p2*p4-444*p1*p5+1818*p2*p5-1985*p4*p5-1818*p1*p6+197*p2*p6+1038*p4*p6+340*p5*p6+399*p1*p7-835*p2*p7+787*p4*p7-753*p5*p7-221*p6*p7+481*p1+260*p2+1713*p4+1219*p5+794*p6+762*p7-1231,
  2923*p1*p2*p3*p5*p6*p7-4328*p1*p2*p3*p5*p6-3674*p1*p2*p3*p5*p7-3291*p1*p2*p3*p6*p7-4955*p1*p2*p5*p6*p7-8*p1*p3*p5*p6*p7-135*p2*p3*p5*p6*p7+7784*p1*p2*p3*p5+3471*p1*p2*p3*p6+1544*p1*p2*p5*p6+1607*p1*p3*p5*p6+1710*p2*p3*p5*p6+2434*p1*p2*p3*p7+1408*p1*p2*p5*p7-215*p1*p3*p5*p7+507*p2*p3*p5*p7+2208*p1*p2*p6*p7+1920*p1*p3*p6*p7-389*p2*p3*p6*p7+1304*p1*p5*p6*p7+2480*p2*p5*p6*p7+102*p3*p5*p6*p7-2683*p1*p2*p3-3508*p1*p2*p5-3505*p1*p3*p5-2400*p2*p3*p5-2236*p1*p2*p6-1727*p1*p3*p6-1354*p2*p3*p6-1022*p1*p5*p6-2099*p2*p5*p6-918*p3*p5*p6-495*p1*p2*p7-109*p1*p3*p7+474*p2*p3*p7+268*p1*p5*p7+1084*p2*p5*p7-190*p3*p5*p7-666*p1*p6*p7-497*p2*p6*p7+615*p3*p6*p7-912*p5*p6*p7+473*p1*p2+742*p1*p3+186*p2*p3+1021*p1*p5+2556*p2*p5+2312*p3*p5+1075*p1*p6+920*p2*p6+164*p3*p6+80*p5*p6-199*p1*p7-1270*p2*p7-1050*p3*p7-724*p5*p7+136*p6*p7+740*p1-474*p2+37*p3-1056*p5+303*p6+833*p7+736,
  4990*p1*p2*p3*p4*p6*p7-3067*p1*p2*p3*p4*p6-1661*p1*p2*p3*p4*p7-4064*p1*p2*p3*p6*p7-223*p1*p2*p4*p6*p7-5229*p1*p3*p4*p6*p7-4636*p2*p3*p4*p6*p7+5720*p1*p2*p3*p4+4872*p1*p2*p3*p6+1643*p1*p2*p4*p6+4536*p1*p3*p4*p6+2451*p2*p3*p4*p6+1264*p1*p2*p3*p7+70*p1*p2*p4*p7+2213*p1*p3*p4*p7+1734*p2*p3*p4*p7+1698*p1*p2*p6*p7+3799*p1*p3*p6*p7+1622*p2*p3*p6*p7+901*p1*p4*p6*p7-496*p2*p4*p6*p7+3782*p3*p4*p6*p7-5591*p1*p2*p3-1303*p1*p2*p4-6383*p1*p3*p4-2332*p2*p3*p4-3179*p1*p2*p6-6257*p1*p3*p6-3654*p2*p3*p6-1830*p1*p4*p6-1473*p2*p4*p6-3278*p3*p4*p6-1462*p1*p2*p7-1495*p1*p3*p7-468*p2*p3*p7-400*p1*p4*p7+431*p2*p4*p7-1907*p3*p4*p7-1547*p1*p6*p7-214*p2*p6*p7-1423*p3*p6*p7-1625*p4*p6*p7+5708*p1*p2+3809*p1*p3+2053*p2*p3+2824*p1*p4+1122*p2*p4+3653*p3*p4+3658*p1*p6+3001*p2*p6+3890*p3*p6+2371*p4*p6+602*p1*p7+185*p2*p7+899*p3*p7+963*p4*p7+560*p6*p7-4557*p1-3536*p2-1635*p3-2552*p4-2595*p6-207*p7+2740,
  -1407*p1*p2*p3*p4*p5*p7+4444*p1*p2*p3*p4*p5+2350*p1*p2*p3*p4*p7+5424*p1*p2*p3*p5*p7-2524*p1*p2*p4*p5*p7-985*p1*p3*p4*p5*p7-431*p2*p3*p4*p5*p7-2662*p1*p2*p3*p4-5342*p1*p2*p3*p5-39*p1*p2*p4*p5-2525*p1*p3*p4*p5-2650*p2*p3*p4*p5-3553*p1*p2*p3*p7-71*p1*p2*p4*p7-3268*p1*p3*p4*p7-1140*p2*p3*p4*p7-702*p1*p2*p5*p7-924*p1*p3*p5*p7-2198*p2*p3*p5*p7+4087*p1*p4*p5*p7+2709*p2*p4*p5*p7+587*p3*p4*p5*p7+968*p1*p2*p3-150*p1*p2*p4+909*p1*p3*p4+4587*p2*p3*p4+929*p1*p2*p5+1804*p1*p3*p5+2226*p2*p3*p5-916*p1*p4*p5+906*p2*p4*p5+2735*p3*p4*p5+1894*p1*p2*p7+2998*p1*p3*p7+1611*p2*p3*p7+304*p1*p4*p7-1601*p2*p4*p7+2066*p3*p4*p7-1971*p1*p5*p7-480*p2*p5*p7-500*p3*p5*p7-2617*p4*p5*p7-532*p1*p2+2016*p1*p3-2574*p2*p3+529*p1*p4-1251*p2*p4-2082*p3*p4+280*p1*p5-852*p2*p5-476*p3*p5-340*p4*p5-924*p1*p7+253*p2*p7-1090*p3*p7+170*p4*p7+1204*p5*p7-869*p1+1394*p2-264*p3+719*p4+219*p5-128*p7+506,
  -901*p1*p2*p3*p4*p5*p6+1805*p1*p2*p3*p4*p5-1103*p1*p2*p3*p4*p6-1746*p1*p2*p3*p5*p6-1968*p1*p2*p4*p5*p6+3957*p1*p3*p4*p5*p6+1293*p2*p3*p4*p5*p6-523*p1*p2*p3*p4-2498*p1*p2*p3*p5+693*p1*p2*p4*p5-2805*p1*p3*p4*p5-722*p2*p3*p4*p5-770*p1*p2*p3*p6+1088*p1*p2*p4*p6-232*p1*p3*p4*p6+2657*p2*p3*p4*p6+3281*p1*p2*p5*p6-1066*p1*p3*p5*p6+240*p2*p3*p5*p6-1174*p1*p4*p5*p6+1304*p2*p4*p5*p6-2070*p3*p4*p5*p6+2571*p1*p2*p3+115*p1*p2*p4+3899*p1*p3*p4-4641*p2*p3*p4-752*p1*p2*p5+1531*p1*p3*p5+1178*p2*p3*p5+11*p1*p4*p5-1144*p2*p4*p5-1701*p3*p4*p5+592*p1*p2*p6+1140*p1*p3*p6+130*p2*p3*p6+304*p1*p4*p6-2273*p2*p4*p6-1224*p3*p4*p6-2*p1*p5*p6-1090*p2*p5*p6+585*p3*p5*p6+670*p4*p5*p6-1867*p1*p2-4780*p1*p3+1079*p2*p3-2435*p1*p4+2901*p2*p4+2073*p3*p4+499*p1*p5+908*p2*p5+323*p3*p5+1631*p4*p5-966*p1*p6-315*p2*p6-481*p3*p6+759*p4*p6-595*p5*p6+3233*p1-1978*p2+729*p3-1184*p4-40*p5+446*p6+282
  ]
  return Singular.Ideal(Rx, gens)
end

function jason210(R)
  Rx, (a,b,c,d,e,f,g,h) = PolynomialRing(R, string.(collect('a':'h')))
  gens = [
  a^2*c^4+b^2*d^4+a*b*c^2*e^2+a*b*d^2*f^2+a*b*c*d*e*g+a*b*c*d*f*h,
    b^6,
    a^6
  ]
  return Singular.Ideal(Rx, gens)
end

function kat6(R)
  Rx = Singular.@PolynomialRing R "x" 6
  gens = [
  x1+2*x2+2*x3+2*x4+2*x5+2*x6-1,
    x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2-x1,
    2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6-x2,
    x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6-x3,
    2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6-x4,
    x3^2+2*x2*x4+2*x1*x5+2*x2*x6-x5
  ]
  return Singular.Ideal(Rx, gens)
end

function kat7(R)
  Rx = Singular.@PolynomialRing R "x" 7
  gens = [
  x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7-1,
  x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2-x1,
  2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7-x2,
  x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7-x3,
  2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7-x4,
  x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7-x5,
  2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7-x6
  ]
  return Singular.Ideal(Rx, gens)
end

function kat8(R)
  Rx = Singular.@PolynomialRing R "x" 8
  gens = [
  x1+2*x2+2*x3+2*x4+2*x5+2*x6+2*x7+2*x8-1,
  x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2+2*x6^2+2*x7^2+2*x8^2-x1,
  2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5+2*x5*x6+2*x6*x7+2*x7*x8-x2,
  x2^2+2*x1*x3+2*x2*x4+2*x3*x5+2*x4*x6+2*x5*x7+2*x6*x8-x3,
  2*x2*x3+2*x1*x4+2*x2*x5+2*x3*x6+2*x4*x7+2*x5*x8-x4,
  x3^2+2*x2*x4+2*x1*x5+2*x2*x6+2*x3*x7+2*x4*x8-x5,
  2*x3*x4+2*x2*x5+2*x1*x6+2*x2*x7+2*x3*x8-x6,
  x4^2+2*x3*x5+2*x2*x6+2*x1*x7+2*x2*x8-x7
  ]
  return Singular.Ideal(Rx, gens)
end

function lichtblaul2(R)
  Rx, (x,y,z,w) = PolynomialRing(R, ["x", "y", "z", "w"]);
  gens = [
  7*x^2*y^2 + 8*x*y^2*w + 3*x^2*z*w^2 + 22,
  11*y^2*z^2*w + 4*x^2*w + x*y*z + 2*w^4 - 31,
  5*x*y^2*z + x^2*w^2 + 2*z^2*w + 5*z*w,
  x^3*y + 33*y^2*z - 8*x*w^3 - 9
  ]
  return Singular.Ideal(Rx, gens)
end

function lichtblau(R)
  Rx, (t,x,y) = PolynomialRing(Q, ["t", "x", "y"])
  gens = [
  374*t^11-2189*t^10+5555*t^9-8085*t^8+7590*t^7-5082*t^6+2772*t^5-1320*t^4+495*t^3-110*t^2+x,
  -22*t^11-88*t^10+550*t^9-1650*t^8+3300*t^7-3696*t^6+1848*t^5-330*t^3+110*t^2-22*t+y
  ]
  return Singular.Ideal(Rx, gens)
end

function mayr42(R)
  Rx = Singular.@PolynomialRing R "x" 51
  gens = [
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
  ]
  return Singular.Ideal(Rx, gens)
end

function noon7h(R)
  Rx, (x1,x2,x3,x4,x5,x6,x7,h) = PolynomialRing(R, vcat(["x$i" for i in 1:7], ["h"]));
  gens = [
  10*x1*x2^2+10*x1*x3^2+10*x1*x4^2+10*x1*x5^2+10*x1*x6^2+10*x1*x7^2-11*x1*h^2+10*h^3,
  10*x1^2*x2+10*x2*x3^2+10*x2*x4^2+10*x2*x5^2+10*x2*x6^2+10*x2*x7^2-11*x2*h^2+10*h^3,
  10*x1^2*x3+10*x2^2*x3+10*x3*x4^2+10*x3*x5^2+10*x3*x6^2+10*x3*x7^2-11*x3*h^2+10*h^3,
  10*x1^2*x4+10*x2^2*x4+10*x3^2*x4+10*x4*x5^2+10*x4*x6^2+10*x4*x7^2-11*x4*h^2+10*h^3,
  10*x1^2*x5+10*x2^2*x5+10*x3^2*x5+10*x4^2*x5+10*x5*x6^2+10*x5*x7^2-11*x5*h^2+10*h^3,
  10*x1^2*x6+10*x2^2*x6+10*x3^2*x6+10*x4^2*x6+10*x5^2*x6+10*x6*x7^2-11*x6*h^2+10*h^3,
  10*x1^2*x7+10*x2^2*x7+10*x3^2*x7+10*x4^2*x7+10*x5^2*x7+10*x6^2*x7-11*x7*h^2+10*h^3
  ]
  return Singular.Ideal(Rx, I)
end

function reimer5(R)
  Rx, (x,y,z,t,u) = PolynomialRing(R, ["x", "y", "z", "t", "u"]);
  gens = [
  2*x^2-2*y^2+2*z^2-2*t^2+2*u^2-1,
    2*x^3-2*y^3+2*z^3-2*t^3+2*u^3-1,
    2*x^4-2*y^4+2*z^4-2*t^4+2*u^4-1,
    2*x^5-2*y^5+2*z^5-2*t^5+2*u^5-1,
    2*x^6-2*y^6+2*z^6-2*t^6+2*u^6-1
  ]
  return Singular.Ideal(Rx, gens)
end

function reimer6(R)
  Rx = Singular.@PolynomialRing R "x" 6
  gens = [
    2*x1^2-2*x2^2+2*x3^2-2*x4^2+2*x5^2-2*x6^2-1,
    2*x1^3-2*x2^3+2*x3^3-2*x4^3+2*x5^3-2*x6^3-1,
    2*x1^4-2*x2^4+2*x3^4-2*x4^4+2*x5^4-2*x6^4-1,
    2*x1^5-2*x2^5+2*x3^5-2*x4^5+2*x5^5-2*x6^5-1,
    2*x1^6-2*x2^6+2*x3^6-2*x4^6+2*x5^6-2*x6^6-1,
    2*x1^7-2*x2^7+2*x3^7-2*x4^7+2*x5^7-2*x6^7-1
   ]
  return Singular.Ideal(Rx, gens)
end

function ub(R)
  Rx, (x,y,z,t,h) = PolynomialRing(Q, ["x", "y", "z", "t", "h"])
  gens = [
  x^2+x*y+y^2-2*x*z-4*y*z+3*z^2-3*x*t+2*y*t+t^2-3*x*h-2*y*h+3*z*h-2*t*h-2*h^2,
  2*x^2-x*y+y^2-x*z-y*z-6*z^2-x*t+y*t-5*z*t-3*t^2-5*x*h+y*h+5*z*h+2*t*h+5*h^2,
  x^3+y^3-x^2*z+x*y*z-5*y^2*z-5*x*z^2+7*y*z^2-3*z^3+x*y*t-5*z^2*t+x*t^2+2*t^3+x^2*h-3*x*y*h-y^2*h+2*x*z*h+2*z^2*h-3*x*t*h-2*z*t*h-3*t^2*h-x*h^2+y*h^2+11*z*h^2-2*t*h^2-3*h^3,
  -x^3+6*x^2*y-12*x*y^2+6*y^3-x^2*z-4*x*y*z+6*y^2*z+5*x*z^2+4*y*z^2+15*z^3+6*x*y*t-7*y^2*t-x*z*t+11*x*t^2+4*t^3+3*x^2*h+2*x*y*h+2*y^2*h-z^2*h+2*y*t*h-z*t*h+5*t^2*h-35*x*h^2-14*y*h^2+4*z*h^2-10*t*h^2-15*h^3
  ]
  return Singular.Ideal(Rx, gens)
end

function yang1(R)
  Rx = Singular.@PolynomialRing R "x" 48
  gens = [
  x21*x45+x22*x46+x23*x47+x24*x48, x17*x45+x18*x46+x19*x47+x20*x48, x13*x45+x14*x46+x15*x47+x16*x48, x10*x46+x11*x47+x12*x48+x45*x9, x45*x5+x46*x6+x47*x7+x48*x8, x1*x45+x2*x46+x3*x47+x4*x48, x21*x41+x22*x42+x23*x43+x24*x44,
  x17*x41+x18*x42+x19*x43+x20*x44, x13*x41+x14*x42+x15*x43+x16*x44, x10*x42+x11*x43+x12*x44+x41*x9, x41*x5+x42*x6+x43*x7+x44*x8, x1*x41+x2*x42+x3*x43+x4*x44, x21*x37+x22*x38+x23*x39+x24*x40, x17*x37+x18*x38+x19*x39+x20*x40,
  x13*x37+x14*x38+x15*x39+x16*x40, x10*x38+x11*x39+x12*x40+x37*x9, x37*x5+x38*x6+x39*x7+x40*x8, x1*x37+x2*x38+x3*x39+x4*x40, x21*x33+x22*x34+x23*x35+x24*x36, x17*x33+x18*x34+x19*x35+x20*x36, x13*x33+x14*x34+x15*x35+x16*x36,
  x10*x34+x11*x35+x12*x36+x33*x9, x33*x5+x34*x6+x35*x7+x36*x8, x1*x33+x2*x34+x3*x35+x36*x4, x21*x29+x22*x30+x23*x31+x24*x32, x17*x29+x18*x30+x19*x31+x20*x32, x13*x29+x14*x30+x15*x31+x16*x32, x10*x30+x11*x31+x12*x32+x29*x9,
  x29*x5+x30*x6+x31*x7+x32*x8, x1*x29+x2*x30+x3*x31+x32*x4, x21*x25+x22*x26+x23*x27+x24*x28, x17*x25+x18*x26+x19*x27+x20*x28, x13*x25+x14*x26+x15*x27+x16*x28, x10*x26+x11*x27+x12*x28+x25*x9, x25*x5+x26*x6+x27*x7+x28*x8, x1*x25+x2*x26+x27*x3+x28*x4,
  x33*x38*x43*x48-x33*x38*x44*x47-x33*x39*x42*x48+x33*x39*x44*x46+x33*x40*x42*x47-x33*x40*x43*x46-x34*x37*x43*x48+x34*x37*x44*x47+x34*x39*x41*x48-x34*x39*x44*x45-x34*x40*x41*x47+x34*x40*x43*x45+x35*x37*x42*x48-x35*x37*x44*x46-x35*x38*x41*x48+x35*x38*x44*x45+x35*x40*x41*x46-x35*x40*x42*x45-x36*x37*x42*x47+x36*x37*x43*x46+x36*x38*x41*x47-x36*x38*x43*x45-x36*x39*x41*x46+x36*x39*x42*x45,
  x29*x38*x43*x48-x29*x38*x44*x47-x29*x39*x42*x48+x29*x39*x44*x46+x29*x40*x42*x47-x29*x40*x43*x46-x30*x37*x43*x48+x30*x37*x44*x47+x30*x39*x41*x48-x30*x39*x44*x45-x30*x40*x41*x47+x30*x40*x43*x45+x31*x37*x42*x48-x31*x37*x44*x46-x31*x38*x41*x48+x31*x38*x44*x45+x31*x40*x41*x46-x31*x40*x42*x45-x32*x37*x42*x47+x32*x37*x43*x46+x32*x38*x41*x47-x32*x38*x43*x45-x32*x39*x41*x46+x32*x39*x42*x45,
  x25*x38*x43*x48-x25*x38*x44*x47-x25*x39*x42*x48+x25*x39*x44*x46+x25*x40*x42*x47-x25*x40*x43*x46-x26*x37*x43*x48+x26*x37*x44*x47+x26*x39*x41*x48-x26*x39*x44*x45-x26*x40*x41*x47+x26*x40*x43*x45+x27*x37*x42*x48-x27*x37*x44*x46-x27*x38*x41*x48+x27*x38*x44*x45+x27*x40*x41*x46-x27*x40*x42*x45-x28*x37*x42*x47+x28*x37*x43*x46+x28*x38*x41*x47-x28*x38*x43*x45-x28*x39*x41*x46+x28*x39*x42*x45,
  x29*x34*x43*x48-x29*x34*x44*x47-x29*x35*x42*x48+x29*x35*x44*x46+x29*x36*x42*x47-x29*x36*x43*x46-x30*x33*x43*x48+x30*x33*x44*x47+x30*x35*x41*x48-x30*x35*x44*x45-x30*x36*x41*x47+x30*x36*x43*x45+x31*x33*x42*x48-x31*x33*x44*x46-x31*x34*x41*x48+x31*x34*x44*x45+x31*x36*x41*x46-x31*x36*x42*x45-x32*x33*x42*x47+x32*x33*x43*x46+x32*x34*x41*x47-x32*x34*x43*x45-x32*x35*x41*x46+x32*x35*x42*x45,
  x25*x34*x43*x48-x25*x34*x44*x47-x25*x35*x42*x48+x25*x35*x44*x46+x25*x36*x42*x47-x25*x36*x43*x46-x26*x33*x43*x48+x26*x33*x44*x47+x26*x35*x41*x48-x26*x35*x44*x45-x26*x36*x41*x47+x26*x36*x43*x45+x27*x33*x42*x48-x27*x33*x44*x46-x27*x34*x41*x48+x27*x34*x44*x45+x27*x36*x41*x46-x27*x36*x42*x45-x28*x33*x42*x47+x28*x33*x43*x46+x28*x34*x41*x47-x28*x34*x43*x45-x28*x35*x41*x46+x28*x35*x42*x45,
  x25*x30*x43*x48-x25*x30*x44*x47-x25*x31*x42*x48+x25*x31*x44*x46+x25*x32*x42*x47-x25*x32*x43*x46-x26*x29*x43*x48+x26*x29*x44*x47+x26*x31*x41*x48-x26*x31*x44*x45-x26*x32*x41*x47+x26*x32*x43*x45+x27*x29*x42*x48-x27*x29*x44*x46-x27*x30*x41*x48+x27*x30*x44*x45+x27*x32*x41*x46-x27*x32*x42*x45-x28*x29*x42*x47+x28*x29*x43*x46+x28*x30*x41*x47-x28*x30*x43*x45-x28*x31*x41*x46+x28*x31*x42*x45,
  x29*x34*x39*x48-x29*x34*x40*x47-x29*x35*x38*x48+x29*x35*x40*x46+x29*x36*x38*x47-x29*x36*x39*x46-x30*x33*x39*x48+x30*x33*x40*x47+x30*x35*x37*x48-x30*x35*x40*x45-x30*x36*x37*x47+x30*x36*x39*x45+x31*x33*x38*x48-x31*x33*x40*x46-x31*x34*x37*x48+x31*x34*x40*x45+x31*x36*x37*x46-x31*x36*x38*x45-x32*x33*x38*x47+x32*x33*x39*x46+x32*x34*x37*x47-x32*x34*x39*x45-x32*x35*x37*x46+x32*x35*x38*x45,
  x25*x34*x39*x48-x25*x34*x40*x47-x25*x35*x38*x48+x25*x35*x40*x46+x25*x36*x38*x47-x25*x36*x39*x46-x26*x33*x39*x48+x26*x33*x40*x47+x26*x35*x37*x48-x26*x35*x40*x45-x26*x36*x37*x47+x26*x36*x39*x45+x27*x33*x38*x48-x27*x33*x40*x46-x27*x34*x37*x48+x27*x34*x40*x45+x27*x36*x37*x46-x27*x36*x38*x45-x28*x33*x38*x47+x28*x33*x39*x46+x28*x34*x37*x47-x28*x34*x39*x45-x28*x35*x37*x46+x28*x35*x38*x45,
  x25*x30*x39*x48-x25*x30*x40*x47-x25*x31*x38*x48+x25*x31*x40*x46+x25*x32*x38*x47-x25*x32*x39*x46-x26*x29*x39*x48+x26*x29*x40*x47+x26*x31*x37*x48-x26*x31*x40*x45-x26*x32*x37*x47+x26*x32*x39*x45+x27*x29*x38*x48-x27*x29*x40*x46-x27*x30*x37*x48+x27*x30*x40*x45+x27*x32*x37*x46-x27*x32*x38*x45-x28*x29*x38*x47+x28*x29*x39*x46+x28*x30*x37*x47-x28*x30*x39*x45-x28*x31*x37*x46+x28*x31*x38*x45,
  x25*x30*x35*x48-x25*x30*x36*x47-x25*x31*x34*x48+x25*x31*x36*x46+x25*x32*x34*x47-x25*x32*x35*x46-x26*x29*x35*x48+x26*x29*x36*x47+x26*x31*x33*x48-x26*x31*x36*x45-x26*x32*x33*x47+x26*x32*x35*x45+x27*x29*x34*x48-x27*x29*x36*x46-x27*x30*x33*x48+x27*x30*x36*x45+x27*x32*x33*x46-x27*x32*x34*x45-x28*x29*x34*x47+x28*x29*x35*x46+x28*x30*x33*x47-x28*x30*x35*x45-x28*x31*x33*x46+x28*x31*x34*x45,
  x29*x34*x39*x44-x29*x34*x40*x43-x29*x35*x38*x44+x29*x35*x40*x42+x29*x36*x38*x43-x29*x36*x39*x42-x30*x33*x39*x44+x30*x33*x40*x43+x30*x35*x37*x44-x30*x35*x40*x41-x30*x36*x37*x43+x30*x36*x39*x41+x31*x33*x38*x44-x31*x33*x40*x42-x31*x34*x37*x44+x31*x34*x40*x41+x31*x36*x37*x42-x31*x36*x38*x41-x32*x33*x38*x43+x32*x33*x39*x42+x32*x34*x37*x43-x32*x34*x39*x41-x32*x35*x37*x42+x32*x35*x38*x41,
  x25*x34*x39*x44-x25*x34*x40*x43-x25*x35*x38*x44+x25*x35*x40*x42+x25*x36*x38*x43-x25*x36*x39*x42-x26*x33*x39*x44+x26*x33*x40*x43+x26*x35*x37*x44-x26*x35*x40*x41-x26*x36*x37*x43+x26*x36*x39*x41+x27*x33*x38*x44-x27*x33*x40*x42-x27*x34*x37*x44+x27*x34*x40*x41+x27*x36*x37*x42-x27*x36*x38*x41-x28*x33*x38*x43+x28*x33*x39*x42+x28*x34*x37*x43-x28*x34*x39*x41-x28*x35*x37*x42+x28*x35*x38*x41,
  x25*x30*x39*x44-x25*x30*x40*x43-x25*x31*x38*x44+x25*x31*x40*x42+x25*x32*x38*x43-x25*x32*x39*x42-x26*x29*x39*x44+x26*x29*x40*x43+x26*x31*x37*x44-x26*x31*x40*x41-x26*x32*x37*x43+x26*x32*x39*x41+x27*x29*x38*x44-x27*x29*x40*x42-x27*x30*x37*x44+x27*x30*x40*x41+x27*x32*x37*x42-x27*x32*x38*x41-x28*x29*x38*x43+x28*x29*x39*x42+x28*x30*x37*x43-x28*x30*x39*x41-x28*x31*x37*x42+x28*x31*x38*x41,
  x25*x30*x35*x44-x25*x30*x36*x43-x25*x31*x34*x44+x25*x31*x36*x42+x25*x32*x34*x43-x25*x32*x35*x42-x26*x29*x35*x44+x26*x29*x36*x43+x26*x31*x33*x44-x26*x31*x36*x41-x26*x32*x33*x43+x26*x32*x35*x41+x27*x29*x34*x44-x27*x29*x36*x42-x27*x30*x33*x44+x27*x30*x36*x41+x27*x32*x33*x42-x27*x32*x34*x41-x28*x29*x34*x43+x28*x29*x35*x42+x28*x30*x33*x43-x28*x30*x35*x41-x28*x31*x33*x42+x28*x31*x34*x41,
  x25*x30*x35*x40-x25*x30*x36*x39-x25*x31*x34*x40+x25*x31*x36*x38+x25*x32*x34*x39-x25*x32*x35*x38-x26*x29*x35*x40+x26*x29*x36*x39+x26*x31*x33*x40-x26*x31*x36*x37-x26*x32*x33*x39+x26*x32*x35*x37+x27*x29*x34*x40-x27*x29*x36*x38-x27*x30*x33*x40+x27*x30*x36*x37+x27*x32*x33*x38-x27*x32*x34*x37-x28*x29*x34*x39+x28*x29*x35*x38+x28*x30*x33*x39-x28*x30*x35*x37-x28*x31*x33*x38+x28*x31*x34*x37,
  -x10*x13*x19*x24+x10*x13*x20*x23+x10*x15*x17*x24-x10*x15*x20*x21-x10*x16*x17*x23+x10*x16*x19*x21+x11*x13*x18*x24-x11*x13*x20*x22-x11*x14*x17*x24+x11*x14*x20*x21+x11*x16*x17*x22-x11*x16*x18*x21-x12*x13*x18*x23+x12*x13*x19*x22+x12*x14*x17*x23-x12*x14*x19*x21-x12*x15*x17*x22+x12*x15*x18*x21+x14*x19*x24*x9-x14*x20*x23*x9-x15*x18*x24*x9+x15*x20*x22*x9+x16*x18*x23*x9-x16*x19*x22*x9,
  -x13*x18*x23*x8+x13*x18*x24*x7+x13*x19*x22*x8-x13*x19*x24*x6-x13*x20*x22*x7+x13*x20*x23*x6+x14*x17*x23*x8-x14*x17*x24*x7-x14*x19*x21*x8+x14*x19*x24*x5+x14*x20*x21*x7-x14*x20*x23*x5-x15*x17*x22*x8+x15*x17*x24*x6+x15*x18*x21*x8-x15*x18*x24*x5-x15*x20*x21*x6+x15*x20*x22*x5+x16*x17*x22*x7-x16*x17*x23*x6-x16*x18*x21*x7+x16*x18*x23*x5+x16*x19*x21*x6-x16*x19*x22*x5,
  x1*x14*x19*x24-x1*x14*x20*x23-x1*x15*x18*x24+x1*x15*x20*x22+x1*x16*x18*x23-x1*x16*x19*x22-x13*x18*x23*x4+x13*x18*x24*x3-x13*x19*x2*x24+x13*x19*x22*x4+x13*x2*x20*x23-x13*x20*x22*x3+x14*x17*x23*x4-x14*x17*x24*x3-x14*x19*x21*x4+x14*x20*x21*x3+x15*x17*x2*x24-x15*x17*x22*x4+x15*x18*x21*x4-x15*x2*x20*x21-x16*x17*x2*x23+x16*x17*x22*x3-x16*x18*x21*x3+x16*x19*x2*x21,
  x10*x17*x23*x8-x10*x17*x24*x7-x10*x19*x21*x8+x10*x19*x24*x5+x10*x20*x21*x7-x10*x20*x23*x5-x11*x17*x22*x8+x11*x17*x24*x6+x11*x18*x21*x8-x11*x18*x24*x5-x11*x20*x21*x6+x11*x20*x22*x5+x12*x17*x22*x7-x12*x17*x23*x6-x12*x18*x21*x7+x12*x18*x23*x5+x12*x19*x21*x6-x12*x19*x22*x5-x18*x23*x8*x9+x18*x24*x7*x9+x19*x22*x8*x9-x19*x24*x6*x9-x20*x22*x7*x9+x20*x23*x6*x9,
  x1*x10*x19*x24-x1*x10*x20*x23-x1*x11*x18*x24+x1*x11*x20*x22+x1*x12*x18*x23-x1*x12*x19*x22+x10*x17*x23*x4-x10*x17*x24*x3-x10*x19*x21*x4+x10*x20*x21*x3+x11*x17*x2*x24-x11*x17*x22*x4+x11*x18*x21*x4-x11*x2*x20*x21-x12*x17*x2*x23+x12*x17*x22*x3-x12*x18*x21*x3+x12*x19*x2*x21-x18*x23*x4*x9+x18*x24*x3*x9-x19*x2*x24*x9+x19*x22*x4*x9+x2*x20*x23*x9-x20*x22*x3*x9,
  x1*x18*x23*x8-x1*x18*x24*x7-x1*x19*x22*x8+x1*x19*x24*x6+x1*x20*x22*x7-x1*x20*x23*x6-x17*x2*x23*x8+x17*x2*x24*x7+x17*x22*x3*x8-x17*x22*x4*x7+x17*x23*x4*x6-x17*x24*x3*x6-x18*x21*x3*x8+x18*x21*x4*x7-x18*x23*x4*x5+x18*x24*x3*x5+x19*x2*x21*x8-x19*x2*x24*x5-x19*x21*x4*x6+x19*x22*x4*x5-x2*x20*x21*x7+x2*x20*x23*x5+x20*x21*x3*x6-x20*x22*x3*x5,
  x10*x13*x23*x8-x10*x13*x24*x7-x10*x15*x21*x8+x10*x15*x24*x5+x10*x16*x21*x7-x10*x16*x23*x5-x11*x13*x22*x8+x11*x13*x24*x6+x11*x14*x21*x8-x11*x14*x24*x5-x11*x16*x21*x6+x11*x16*x22*x5+x12*x13*x22*x7-x12*x13*x23*x6-x12*x14*x21*x7+x12*x14*x23*x5+x12*x15*x21*x6-x12*x15*x22*x5-x14*x23*x8*x9+x14*x24*x7*x9+x15*x22*x8*x9-x15*x24*x6*x9-x16*x22*x7*x9+x16*x23*x6*x9,
  x1*x10*x15*x24-x1*x10*x16*x23-x1*x11*x14*x24+x1*x11*x16*x22+x1*x12*x14*x23-x1*x12*x15*x22+x10*x13*x23*x4-x10*x13*x24*x3-x10*x15*x21*x4+x10*x16*x21*x3+x11*x13*x2*x24-x11*x13*x22*x4+x11*x14*x21*x4-x11*x16*x2*x21-x12*x13*x2*x23+x12*x13*x22*x3-x12*x14*x21*x3+x12*x15*x2*x21-x14*x23*x4*x9+x14*x24*x3*x9-x15*x2*x24*x9+x15*x22*x4*x9+x16*x2*x23*x9-x16*x22*x3*x9,
  x1*x14*x23*x8-x1*x14*x24*x7-x1*x15*x22*x8+x1*x15*x24*x6+x1*x16*x22*x7-x1*x16*x23*x6-x13*x2*x23*x8+x13*x2*x24*x7+x13*x22*x3*x8-x13*x22*x4*x7+x13*x23*x4*x6-x13*x24*x3*x6-x14*x21*x3*x8+x14*x21*x4*x7-x14*x23*x4*x5+x14*x24*x3*x5+x15*x2*x21*x8-x15*x2*x24*x5-x15*x21*x4*x6+x15*x22*x4*x5-x16*x2*x21*x7+x16*x2*x23*x5+x16*x21*x3*x6-x16*x22*x3*x5,
  x1*x10*x23*x8-x1*x10*x24*x7-x1*x11*x22*x8+x1*x11*x24*x6+x1*x12*x22*x7-x1*x12*x23*x6-x10*x21*x3*x8+x10*x21*x4*x7-x10*x23*x4*x5+x10*x24*x3*x5+x11*x2*x21*x8-x11*x2*x24*x5-x11*x21*x4*x6+x11*x22*x4*x5-x12*x2*x21*x7+x12*x2*x23*x5+x12*x21*x3*x6-x12*x22*x3*x5-x2*x23*x8*x9+x2*x24*x7*x9+x22*x3*x8*x9-x22*x4*x7*x9+x23*x4*x6*x9-x24*x3*x6*x9,
  x10*x13*x19*x8-x10*x13*x20*x7-x10*x15*x17*x8+x10*x15*x20*x5+x10*x16*x17*x7-x10*x16*x19*x5-x11*x13*x18*x8+x11*x13*x20*x6+x11*x14*x17*x8-x11*x14*x20*x5-x11*x16*x17*x6+x11*x16*x18*x5+x12*x13*x18*x7-x12*x13*x19*x6-x12*x14*x17*x7+x12*x14*x19*x5+x12*x15*x17*x6-x12*x15*x18*x5-x14*x19*x8*x9+x14*x20*x7*x9+x15*x18*x8*x9-x15*x20*x6*x9-x16*x18*x7*x9+x16*x19*x6*x9,
  x1*x10*x15*x20-x1*x10*x16*x19-x1*x11*x14*x20+x1*x11*x16*x18+x1*x12*x14*x19-x1*x12*x15*x18+x10*x13*x19*x4-x10*x13*x20*x3-x10*x15*x17*x4+x10*x16*x17*x3-x11*x13*x18*x4+x11*x13*x2*x20+x11*x14*x17*x4-x11*x16*x17*x2+x12*x13*x18*x3-x12*x13*x19*x2-x12*x14*x17*x3+x12*x15*x17*x2-x14*x19*x4*x9+x14*x20*x3*x9+x15*x18*x4*x9-x15*x2*x20*x9-x16*x18*x3*x9+x16*x19*x2*x9,
  x1*x14*x19*x8-x1*x14*x20*x7-x1*x15*x18*x8+x1*x15*x20*x6+x1*x16*x18*x7-x1*x16*x19*x6+x13*x18*x3*x8-x13*x18*x4*x7-x13*x19*x2*x8+x13*x19*x4*x6+x13*x2*x20*x7-x13*x20*x3*x6-x14*x17*x3*x8+x14*x17*x4*x7-x14*x19*x4*x5+x14*x20*x3*x5+x15*x17*x2*x8-x15*x17*x4*x6+x15*x18*x4*x5-x15*x2*x20*x5-x16*x17*x2*x7+x16*x17*x3*x6-x16*x18*x3*x5+x16*x19*x2*x5,
  x1*x10*x19*x8-x1*x10*x20*x7-x1*x11*x18*x8+x1*x11*x20*x6+x1*x12*x18*x7-x1*x12*x19*x6-x10*x17*x3*x8+x10*x17*x4*x7-x10*x19*x4*x5+x10*x20*x3*x5+x11*x17*x2*x8-x11*x17*x4*x6+x11*x18*x4*x5-x11*x2*x20*x5-x12*x17*x2*x7+x12*x17*x3*x6-x12*x18*x3*x5+x12*x19*x2*x5+x18*x3*x8*x9-x18*x4*x7*x9-x19*x2*x8*x9+x19*x4*x6*x9+x2*x20*x7*x9-x20*x3*x6*x9,
  x1*x10*x15*x8-x1*x10*x16*x7-x1*x11*x14*x8+x1*x11*x16*x6+x1*x12*x14*x7-x1*x12*x15*x6-x10*x13*x3*x8+x10*x13*x4*x7-x10*x15*x4*x5+x10*x16*x3*x5+x11*x13*x2*x8-x11*x13*x4*x6+x11*x14*x4*x5-x11*x16*x2*x5-x12*x13*x2*x7+x12*x13*x3*x6-x12*x14*x3*x5+x12*x15*x2*x5+x14*x3*x8*x9-x14*x4*x7*x9-x15*x2*x8*x9+x15*x4*x6*x9+x16*x2*x7*x9-x16*x3*x6*x9
  ]
  return Singular.Ideal(Rx, gens)
end

bench = [bayes148, butcher83, cyc6, cyc7, eco10, eco9, f633, f744, gametwo7,
         jason210, kat6, kat7, kat8, lichtblaul2, lichtblau, mayr42, noon7h,
         reimer5, reimer6, ub, yang1]
