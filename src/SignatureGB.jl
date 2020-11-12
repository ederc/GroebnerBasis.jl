function f5(
        I::Singular.sideal;           # input generators
        hts::Int=17,                  # hash table size, default 2^17
        nthrds::Int=1,                # number of threads
        maxpairs::Int=0,              # number of pairs maximally chosen
                                      # in symbolic preprocessing
        reducegb::Int=0,              # reduce final basis
        infolevel::Int=0,             # info level for print outs
        monorder::Symbol=:dregrevlex  # monomial order
        )
    R     = I.base_ring
    # skip zero generators in ideal
    ptr = Singular.libSingular.id_Copy(I.ptr, R.ptr)
    J   = Singular.Ideal(R, ptr)
    Singular.libSingular.idSkipZeroes(J.ptr)
    # get number of variables
    nvars   = Singular.nvars(R)
    ngens   = Singular.ngens(J)

    len = len_t(nvars)
    print(len)
    ord = 0
    if monorder == :degrevlex
        ord = 0
    end
    if monorder == :lex
        ord = 1
    end
    char  = Singular.characteristic(R)

    print(J)
    print(char)
end
