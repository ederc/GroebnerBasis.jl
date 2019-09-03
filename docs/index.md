# Getting Started

GB.jl is a Julia interface to the gb C library for computing Groebner bases. It is written
and maintained by Christian Eder. GB.jl is part of the Oscar project.

- [https://github.com/ederc/GB.jl](https://github.com/ederc/GB.jl) (GB.jl source code)
- [https://github.com/ederc/gb](https://github.com/ederc/gb) (gb source code)

The features of GB so far include:

  - An implementation of Faug&egrave;re's F4 Algorithm for ideals over
    finite fields ofcharacteristic up to 2^31-1 and over the rationals,
  - specialized linear algebra for 16-bit and 32-bit representations,
  - LEX and DRL monomial order,
  - input and output Singular-compatible,
  - different sparse-dense matrix representations,
  - probabilistic specialized linear algebra,
  - various options for customizing hash table sizes, matrix sizes, memory usage, etc.,
  - multi-threaded code based on OpenMP,
  - a vast suite of benchmark examples.

## Installation

To use GB.jl we require Julia 0.6 or higher. Please see
[http://julialang.org/downloads](http://julialang.org/downloads/) for instructions on
how to obtain julia for your system. Due to GB's main usage at the moment
(i.e. having a Singular ideal, compute a Groebner basis for it and return this basis in Singular format)
GB.jl **depends on Singular.jl** (see [https://wbhart.github.io/Singular.jl/](https://wbhart.github.io/Singular.jl/)).

At the Julia prompt simply type

```
julia> Pkg.clone("https://github.com/ederc/GB.jl")
julia> Pkg.build("GB")
```

## Quick start

Here is an example of using GB.jl

```julia
julia> using GB

# Get the affine katsura-4 example w.r.t. DRL monomial order over a field of characteristic 65521:
# returns the Singular ideal I and the corresponding polynomial ring R.
julia> R,I = GB.katsura_4(65521)

# Computes a Groebner basis G for I, G is then again a Singular ideal and can be handled
# in Singular for further computation.
julia> G = GB.f4(I)
Singular Ideal over Singular Polynomial Ring (ZZ/65521),(x1,x2,x3,x4),(dp(4),C) with generators
(x1+2*x2+2*x3+2*x4-1, x2^2+2*x1*x3+2*x2*x4-x3,
x3^2+2*x2*x4+28085*x3*x4+9364*x4^2+9360*x2-28081*x3+18719*x4,
x2*x3-2*x2*x4+18717*x3*x4+28077*x4^2-4680*x2-18720*x3-9359*x4,
x3*x4^2-7279*x4^3+3640*x2*x4+6471*x3*x4-12134*x4^2+20627*x2+12538*x3-24267*x4,
x2*x4^2+21840*x4^3+7280*x2*x4+20627*x3*x4-7280*x4^2+1820*x2+24267*x3,
x4^4+21987*x4^3-21252*x2*x4+19761*x3*x4+18997*x4^2-29482*x2-28620*x3-28189*x4)
```
