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

    # println("cfs ", cfs)
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

function test_f4_16_bit()
    print("F4.f4_16_bit...")
    n = 5
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
    gens = [
        x1+2*x2+2*x3+2*x4+2*x5-1,
        x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1,
        2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2,
        x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3,
        2*x2*x3+2*x1*x4+2*x2*x5-x4
    ]

    id = Singular.Ideal(R, gens)

    G = GB.f4(id)

    @test Singular.ngens(G) == 13

    gb_gens = [
        x1+2*x2+2*x3+2*x4+2*x5-1,
        x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3,
        x2*x3+x1*x4+x2*x5+50*x4,
        x3*x4+46*x4^2+x2*x5-9*x3*x5-30*x4*x5-31*x5^2+28*x2+11*x3+50*x4+44*x5,
        x3^2+2*x2*x4+10*x4^2-4*x2*x5+16*x3*x5-43*x4*x5-42*x5^2+45*x2-22*x3+x4+14*x5,
        x4^2*x5+2*x3*x5^2-14*x4*x5^2-24*x5^3-13*x4^2-46*x2*x5-8*x3*x5+13*x4*x5-6*x5^2+49*x2+10*x3-16*x4-29*x5,
        x2*x4*x5+36*x2*x5^2+13*x3*x5^2+3*x4*x5^2-45*x5^3-15*x2*x4-33*x4^2-6*x2*x5+41*x3*x5+3*x4*x5-11*x5^2+49*x2+19*x3-25*x5,
        x4^3-2*x2*x5^2+28*x3*x5^2-40*x4*x5^2+21*x5^3-46*x2*x4+12*x4^2+7*x2*x5+43*x3*x5-22*x4*x5-2*x5^2+17*x2-5*x3-17*x4+32*x5,
        x2*x4^2-36*x2*x5^2-17*x3*x5^2+46*x4*x5^2+15*x5^3-30*x2*x4-28*x4^2-35*x2*x5-35*x3*x5-23*x4*x5+49*x5^2-32*x2+20*x3+10*x4-18*x5,
        x4*x5^3-30*x5^4-35*x2*x5^2+14*x3*x5^2+24*x4*x5^2-28*x5^3-41*x2*x4+33*x4^2+46*x2*x5-35*x3*x5+x4*x5+27*x5^2-18*x2-14*x3+34*x4-16*x5,
        x3*x5^3+23*x5^4+46*x2*x5^2-17*x3*x5^2+21*x4*x5^2-33*x5^3-38*x2*x4-x4^2-18*x2*x5-29*x3*x5-20*x4*x5-44*x5^2+32*x2+21*x3-23*x4+10*x5,
        x2*x5^3-10*x5^4+13*x2*x5^2+24*x3*x5^2+2*x4*x5^2-50*x5^3-18*x2*x4+27*x4^2-32*x2*x5+25*x3*x5+20*x4*x5+45*x5^2+49*x2-23*x3-27*x4-39*x5,
        x5^5-22*x5^4-47*x2*x5^2-6*x3*x5^2+43*x4*x5^2+10*x5^3-4*x2*x4-3*x4^2+31*x2*x5-39*x3*x5-42*x4*x5+9*x5^2+30*x2-27*x3-43*x4-27*x5
    ]

    H = Singular.Ideal(R, gb_gens)

    @test Singular.equal(G, H) == true

    println("PASS")
end

function test_f4_32_bit()
    print("F4.f4_32_bit...")
    n = 5
    vars = Array{String, 1}(undef, n)
    # generate dummy array of n strings for generating
    # singular polynomial ring
    for i = 1:n
        vars[i] = "x$(i)"
    end
    R, X = Singular.PolynomialRing(
            Singular.N_ZpField(2^31-1), vars, ordering = :degrevlex)
    global X
    # parses X[i] to xi
    [ eval(Meta.parse("$s = X[$i]")) for (i, s) in enumerate(vars) ]
    gens = [
        x1+2*x2+2*x3+2*x4+2*x5-1,
        x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1,
        2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2,
        x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3,
        2*x2*x3+2*x1*x4+2*x2*x5-x4
    ]

    id = Singular.Ideal(R, gens)

    G = GB.f4(id)

    @test Singular.ngens(G) == 13

    gb_gens = [
        x1+2*x2+2*x3+2*x4+2*x5-1,
        x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3,
        x2*x3+x1*x4+x2*x5+1073741823*x4,
        x3*x4-238609293*x4^2+x2*x5-477218586*x3*x5+715827886*x4*x5+715827885*x5^2+119304647*x2+477218588*x3+1073741823*x4-238609295*x5,
        x3^2+2*x2*x4+477218587*x4^2-4*x2*x5+954437170*x3*x5+715827873*x4*x5+715827874*x5^2-238609294*x2-954437176*x3+x4+477218591*x5,
        x4^2*x5+2*x3*x5^2-780903140*x4*x5^2+976128934*x5^3+1057473008*x4^2+195225786*x2*x5+748365513*x3*x5-488064466*x4*x5+878516036*x5^2-65075262*x2+959860115*x3+927322484*x4-162688155*x5,
        x2*x4*x5-585677359*x2*x5^2-488064466*x3*x5^2+1015174087*x4*x5^2+702812829*x5^3-366048349*x2*x4+474507119*x4^2-575916069*x2*x5-622553340*x3*x5+445765545*x4*x5-266808574*x5^2+956064058*x2+539582381*x3+10845877*x5,
        x4^3-2*x2*x5^2-585677367*x3*x5^2+468541876*x4*x5^2+39045147*x5^3+195225786*x2*x4-545909143*x4^2-370928993*x2*x5-818502183*x3*x5-366590641*x4*x5+160518984*x5^2+617853460*x2+864054868*x3+357913941*x4-773672560*x5,
        x2*x4^2+585677359*x2*x5^2-780903143*x3*x5^2-702812828*x4*x5^2-741857985*x5^3-732096698*x2*x4+421181557*x4^2-1054219245*x2*x5+237163177*x3*x5-323207135*x4*x5+399128273*x5^2+142442518*x2+312722787*x3+959860115*x4-766441975*x5,
        x4*x5^3-660764198*x5^4-743359724*x2*x5^2-84713359*x3*x5^2+697152437*x4*x5^2-257798154*x5^3+147189461*x2*x4-221393871*x4^2-788459961*x2*x5+696221874*x3*x5-735706642*x4*x5-347228506*x5^2+763422992*x2+673968573*x3-27724372*x4+9786960*x5,
        x3*x5^3+495573149*x5^4+718330777*x2*x5^2+191808372*x3*x5^2+201598541*x4*x5^2-546632201*x5^3-437489146*x2*x4-159284557*x4^2+942970389*x2*x5+997996814*x3*x5+341533351*x4*x5+926907474*x5^2-296703637*x2+453769549*x3-378939861*x4+131095349*x5,
        x2*x5^3-936082615*x5^4-349570959*x2*x5^2+293801331*x3*x5^2+998770501*x4*x5^2+633899796*x5^3-108619212*x2*x4+593130779*x4^2+523422666*x2*x5-342442344*x3*x5-942555914*x4*x5-325374171*x5^2-33395639*x2+146834706*x3+669564441*x4-961279135*x5,
        x5^5-924031132*x5^4-118574254*x2*x5^2+992292930*x3*x5^2+445944535*x4*x5^2-49976221*x5^3-985115216*x2*x4-1063817634*x4^2+541424722*x2*x5-953608273*x3*x5-312124887*x4*x5-464677638*x5^2+557140820*x2+1024714193*x3-670132504*x4-96964747*x5
    ]

    H = Singular.Ideal(R, gb_gens)

    @test Singular.equal(G, H) == true

    println("PASS")
end

function test_f4_qq()
    print("F4.f4_qq...")
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
    gens = [
        x1+2*x2+2*x3+2*x4+2*x5-1,
        x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1,
        2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2,
        x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3,
        2*x2*x3+2*x1*x4+2*x2*x5-x4
    ]

    id = Singular.Ideal(R, gens)

    G = GB.f4(id)

    @test Singular.ngens(G) == 13

    gb_gens = [
        x1+2*x2+2*x3+2*x4+2*x5-1,
        x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3,
        2*x2*x3+2*x1*x4+2*x2*x5-x4,
        18*x3*x4+20*x4^2+18*x2*x5+40*x3*x5+66*x4*x5+48*x5^2-x2-4*x3-9*x4-16*x5,
        9*x3^2+18*x2*x4-11*x4^2-36*x2*x5-58*x3*x5-84*x4*x5-75*x5^2+x2+4*x3+9*x4+25*x5,
        132*x4^2*x5+264*x3*x5^2+576*x4*x5^2+468*x5^3+x4^2-12*x2*x5-46*x3*x5-102*x4*x5-186*x5^2+4*x2+7*x3+9*x4+10*x5,
        3960*x2*x4*x5-2880*x2*x5^2-3060*x3*x5^2-2664*x4*x5^2-3672*x5^3-315*x2*x4+115*x4^2-126*x2*x5+356*x3*x5+366*x4*x5+1284*x5^2+19*x2-5*x3-20*x5,
        5940*x4^3-11880*x2*x5^2-51840*x3*x5^2-63072*x4*x5^2-60696*x5^3-540*x2*x4-2450*x4^2+3402*x2*x5+9788*x3*x5+10518*x4*x5+25692*x5^2-323*x2-410*x3-990*x4-1820*x5,
        5940*x2*x4^2+4320*x2*x5^2+8100*x3*x5^2+11448*x4*x5^2+12744*x5^3-945*x2*x4-175*x4^2-648*x2*x5-1052*x3*x5-1482*x4*x5-4668*x5^2+2*x2+125*x3+315*x4+140*x5,
        267696*x4*x5^3+288288*x5^4-10296*x2*x5^2-38544*x3*x5^2-83736*x4*x5^2-153192*x5^3-3300*x2*x4-1310*x4^2+9186*x2*x5+26468*x3*x5+29538*x4*x5+34572*x5^2-323*x2-1250*x3-2880*x4-5180*x5,
        24092640*x3*x5^3-7413120*x5^4-645840*x2*x5^2-4397220*x3*x5^2-992952*x4*x5^2+1314144*x5^3+301725*x2*x4+83225*x4^2-603558*x2*x5-2197832*x3*x5-2129262*x4*x5-1023288*x5^2-6193*x2+107645*x3+277470*x4+469640*x5,
        12046320*x2*x5^3+4324320*x5^4-1745640*x2*x5^2+704160*x3*x5^2+1054944*x4*x5^2-405288*x5^3+217260*x2*x4-105710*x4^2-380754*x2*x5-375076*x3*x5-695496*x4*x5-900084*x5^2+44971*x2+57430*x3+48645*x4+184900*x5,
        13154581440*x5^5-5665168080*x5^4+1297146240*x2*x5^2+3240457380*x3*x5^2+4317438672*x4*x5^2+3524076036*x5^3+16132995*x2*x4+150670610*x4^2-126613962*x2*x5-416572598*x3*x5-531245148*x4*x5-1154748822*x5^2+2569523*x2+1390160*x3+9049545*x4+40771070*x5
    ]

    H = Singular.Ideal(R, gb_gens)

    @test Singular.equal(G, H) == true

    println("PASS")
end


function test_f4()
    test_f4_convert_ff_singular_ideal_to_array()
    test_f4_convert_qq_singular_ideal_to_array()
    test_f4_convert_ff_gb_array_to_singular_ideal()
    test_f4_convert_qq_gb_array_to_singular_ideal()
    test_f4_16_bit()
    test_f4_32_bit()
    test_f4_qq()
    println("")
end
