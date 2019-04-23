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

