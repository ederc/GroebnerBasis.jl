# Example of a computation of a Gröbner basis of the cyclic-8 problem using
# GBs F4 implementation

function run_cyclic_8()
  # takes the cyclic_8 example from Benchmarks.jl, creates a polynomial ring
  # R in variables x1,...,x8 w.r.t. the DRL ordering
  R,I = GB.cyclic_8(65521);
  # prints the ring
  println(R)
  # prints the ideal
  println(I)

  # computes a Gröbner basis of I in R
  println("------------- standard F4 computation ----------------")
  G = GB.f4(I);

  # computes a Gröbner of I in R with
  # . a starting hash table size of 2^15
  # . 1 thread (so sequential)
  # . 100 spairs at most per matrix
  # . regenerating the complete hash table after
  #   4 steps
  # . using exact linear algebra (option 1); probabilistic
  #   linear algebra would be option 42
  println("------------- F4 computation using parameters ----------------")
  H = GB.f4(I, 15, 1, 100, 4, 1);
  
  # prints the Gröbner basis; note this is huge, so uncomment
  # only if you really want to see it
  # println(H)
  println("example done")
end
