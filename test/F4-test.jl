function test_f4_convert_ff_singular_ideal_to_array()
    print("F4.convert_ff_singular_ideal_to_array...")
    n = 4
    vars = Array{String, 1}(undef, n)
    # generate dummy array of n strings for generating
    # singular polynomial ring
    for i = 1:n
        vars[i] = "x$(i)"
    end
    R, X = Singular.PolynomialRing(
            Singular.N_ZpField(101), vars, ordering = :degrevlex)
    global X
    # parses X[i] to xi
    [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
    f1  = x1+x2+x3+x4
    f2  = x1*x2+x2*x3+x1*x4+x3*x4
    f3  = x1*x2*x3+x1*x2*x4+x1*x3*x4+x2*x3*x4
    f4  = x1*x2*x3*x4-1
    id  = Singular.Ideal(R, f1, f2, f3, f4)

    lens, cfs, exps = GB.convert_ff_singular_ideal_to_array(
            id, 4, 4)

    tlens = Int32[4, 4, 4, 2]
    tcfs  = Int32[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 100]
    texps = Int32[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0,
    1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1,
    1, 1, 1, 1, 1, 1, 0, 0, 0, 0]

    @test lens  == tlens
    @test cfs   == tcfs
    @test exps  == texps

    println("PASS")
end

function test_f4_convert_qq_singular_ideal_to_array()
    print("F4.convert_qq_singular_ideal_to_array...")
    n = 5
    vars = Array{String, 1}(undef, n)
    # generate dummy array of n strings for generating
    # singular polynomial ring
    for i = 1:n
        vars[i] = "x$(i)"
    end
    R, X = Singular.PolynomialRing(
            Singular.QQ, vars, ordering = :degrevlex)
    global X
    # parses X[i] to xi
    [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
    f1  = x1+2*x2+2*x3+2*x4+2*x5-1
    f2  = x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1
    f3  = 2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2
    f4  = x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3
    f5  = 2*x2*x3+2*x1*x4+2*x2*x5-x4
    id  = Singular.Ideal(R, f1, f2, f3, f4, f5)

    lens, cfs, exps = GB.convert_qq_singular_ideal_to_array(
            id, 5, 5)

    tlens = Int32[6, 6, 5, 5, 4]
    tcfs  = BigInt[1, 1, 2, 1, 2, 1, 2, 1, 2, 1, -1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1,
    -1, 1, 2, 1, 2, 1, 2, 1, 2, 1, -1, 1, 1, 1, 2, 1, 2, 1, 2, 1, -1, 1, 2, 1,
    2, 1, 2, 1, -1, 1]
    texps = Int32[1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,
    0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0,
    2, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0,
    1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0,
    0, 1, 0, 0, 0, 1, 0]

    @test lens  == tlens
    @test cfs   == tcfs
    @test exps  == texps

    println("PASS")
end

function test_f4_convert_ff_gb_array_to_singular_ideal()
    print("F4.convert_ff_gb_array_to_singular_ideal...")
    n = 4
    vars = Array{String, 1}(undef, n)
    # generate dummy array of n strings for generating
    # singular polynomial ring
    for i = 1:n
        vars[i] = "x$(i)"
    end
    R, X = Singular.PolynomialRing(
            Singular.N_ZpField(101), vars, ordering = :degrevlex)
    global X
    # parses X[i] to xi
    [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
    f1  = x1+x2+x3+x4
    f2  = x1*x2+x2*x3+x1*x4+x3*x4
    f3  = x1*x2*x3+x1*x2*x4+x1*x3*x4+x2*x3*x4
    f4  = x1*x2*x3*x4-1
    G   = Singular.Ideal(R, f1, f2, f3, f4)

    lens  = Int32[4, 4, 4, 2]
    cfs   = Int32[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 100]
    exps  = Int32[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0,
    1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1,
    1, 1, 1, 1, 1, 1, 0, 0, 0, 0]

    H = GB.convert_ff_gb_array_to_singular_ideal(
            Int32(n), lens, exps, cfs, R)

    @test Singular.equal(G, H)

    println("PASS")
end

function test_f4_convert_qq_gb_array_to_singular_ideal()
    print("F4.convert_qq_gb_array_to_singular_ideal...")
    n = 5
    vars = Array{String, 1}(undef, n)
    # generate dummy array of n strings for generating
    # singular polynomial ring
    for i = 1:n
        vars[i] = "x$(i)"
    end
    R, X = Singular.PolynomialRing(
            Singular.QQ, vars, ordering = :degrevlex)
    global X
    # parses X[i] to xi
    [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
    f1  = x1+2*x2+2*x3+2*x4+2*x5-1
    f2  = x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1
    f3  = 2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2
    f4  = x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3
    f5  = 2*x2*x3+2*x1*x4+2*x2*x5-x4
    G   = Singular.Ideal(R, f1, f2, f3, f4, f5)

    lens  = Int32[6, 6, 5, 5, 4]
    cfs   = Int32[1, 2, 2, 2, 2, -1, 1, 2, 2, 2, 2, -1, 2, 2, 2, 2, -1, 1, 2, 2, 2, -1, 2, 2, 2, -1]
    exps  = Int32[1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,
    0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0,
    2, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1,
    1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0,
    1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0,
    0, 1, 0, 0, 0, 1, 0]

    cfsp = pointer(cfs)
    H = GB.convert_qq_gb_array_to_singular_ideal(
            Int32(n), lens, exps, cfsp, R)

    @test Singular.equal(G, H)

    println("PASS")
end

function test_f4()
    test_f4_convert_ff_singular_ideal_to_array()
    test_f4_convert_qq_singular_ideal_to_array()
    test_f4_convert_ff_gb_array_to_singular_ideal()
    test_f4_convert_qq_gb_array_to_singular_ideal()
    println("")
end
