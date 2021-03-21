function cyclic_4(Cring)
    n = 4
    R, X = Singular.PolynomialRing(
        Cring,
        ["x$i" for i in 1:n],
        ordering = :degrevlex
    )
    id = let R=R, (x1,x2,x3,x4) = X
        f1 = x1+x2+x3+x4
        f2 = x1*x2+x2*x3+x1*x4+x3*x4
        f3 = x1*x2*x3+x1*x2*x4+x1*x3*x4+x2*x3*x4
        f4 = x1*x2*x3*x4-1
        Singular.Ideal(R, f1, f2, f3, f4)
    end
    return id
end

function katsura_5(Cring)
    n = 5
    R, X = Singular.PolynomialRing(
        Cring,
        ["x$i" for i in 1:n],
        ordering = :degrevlex
    )
    id = let R=R, (x1,x2,x3,x4, x5) = X
        f1  = x1+2*x2+2*x3+2*x4+2*x5-1
        f2  = x1^2+2*x2^2+2*x3^2+2*x4^2+2*x5^2-x1
        f3  = 2*x1*x2+2*x2*x3+2*x3*x4+2*x4*x5-x2
        f4  = x2^2+2*x1*x3+2*x2*x4+2*x3*x5-x3
        f5  = 2*x2*x3+2*x1*x4+2*x2*x5-x4
        Singular.Ideal(R, f1, f2, f3, f4, f5)
    end
    return id
end
