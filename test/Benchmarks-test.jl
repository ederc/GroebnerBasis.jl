function test_benchmark_cyclic_4()
    print("Benchmarks.cyclic_4...")
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
    id = Singular.Ideal(R, f1, f2, f3, f4)

    G = GroebnerBasis.f4(id)

    @test Singular.ngens(G) == 7

    H = Singular.Ideal(R, x1+x2+x3+x4, x2^2+2*x2*x4+x4^2,
            x2*x3^2+x3^2*x4-x2*x4^2-x4^3,
            x2*x3*x4^2+x3^2*x4^2-x2*x4^3+x3*x4^3-x4^4-1, x2*x4^4+x4^5-x2-x4,
            x3^3*x4^2+x3^2*x4^3-x3-x4, x3^2*x4^4+x2*x3-x2*x4+x3*x4-2*x4^2)

    @test Singular.equal(G, H) == true

    println("PASS")
end

function test_benchmark_katsura_5()
    print("Benchmarks.katsura_5...")
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
    id = Singular.Ideal(R, f1, f2, f3, f4, f5)

    G = GroebnerBasis.f4(id)

    @test Singular.ngens(G) == 13

    H = Singular.Ideal(R,x1+2*x2+2*x3+2*x4+2*x5-1,
            x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3, 2*x2*x3+2*x1*x4+2*x2*x5-x4,
            18*x3*x4+20*x4^2+18*x2*x5+40*x3*x5+66*x4*x5+48*x5^2-x2-4*x3-9*x4-16*x5,
            9*x3^2+18*x2*x4-11*x4^2-36*x2*x5-58*x3*x5-84*x4*x5-75*x5^2+x2+4*x3+9*x4+25*x5,
            132*x4^2*x5+264*x3*x5^2+576*x4*x5^2+468*x5^3+x4^2-12*x2*x5-46*x3*x5-102*x4*x5-186*x5^2+4*x2+7*x3+9*x4+10*x5,
            3960*x2*x4*x5-2880*x2*x5^2-3060*x3*x5^2-2664*x4*x5^2-3672*x5^3-315*x2*x4+115*x4^2-126*x2*x5+356*x3*x5+366*x4*x5+1284*x5^2+19*x2-5*x3-20*x5,
            5940*x4^3-11880*x2*x5^2-51840*x3*x5^2-63072*x4*x5^2-60696*x5^3-540*x2*x4-2450*x4^2+3402*x2*x5+9788*x3*x5+10518*x4*x5+25692*x5^2-323*x2-410*x3-990*x4-1820*x5,
            5940*x2*x4^2+4320*x2*x5^2+8100*x3*x5^2+11448*x4*x5^2+12744*x5^3-945*x2*x4-175*x4^2-648*x2*x5-1052*x3*x5-1482*x4*x5-4668*x5^2+2*x2+125*x3+315*x4+140*x5,
            267696*x4*x5^3+288288*x5^4-10296*x2*x5^2-38544*x3*x5^2-83736*x4*x5^2-153192*x5^3-3300*x2*x4-1310*x4^2+9186*x2*x5+26468*x3*x5+29538*x4*x5+34572*x5^2-323*x2-1250*x3-2880*x4-5180*x5,
            24092640*x3*x5^3-7413120*x5^4-645840*x2*x5^2-4397220*x3*x5^2-992952*x4*x5^2+1314144*x5^3+301725*x2*x4+83225*x4^2-603558*x2*x5-2197832*x3*x5-2129262*x4*x5-1023288*x5^2-6193*x2+107645*x3+277470*x4+469640*x5,
            12046320*x2*x5^3+4324320*x5^4-1745640*x2*x5^2+704160*x3*x5^2+1054944*x4*x5^2-405288*x5^3+217260*x2*x4-105710*x4^2-380754*x2*x5-375076*x3*x5-695496*x4*x5-900084*x5^2+44971*x2+57430*x3+48645*x4+184900*x5,
            13154581440*x5^5-5665168080*x5^4+1297146240*x2*x5^2+3240457380*x3*x5^2+4317438672*x4*x5^2+3524076036*x5^3+16132995*x2*x4+150670610*x4^2-126613962*x2*x5-416572598*x3*x5-531245148*x4*x5-1154748822*x5^2+2569523*x2+1390160*x3+9049545*x4+40771070*x5)

    @test Singular.equal(G, H) == true

    println("PASS")
end

function test_benchmarks()
    test_benchmark_cyclic_4()
    test_benchmark_katsura_5()
    println("")
end
