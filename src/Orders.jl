#- (Module) monomial orders -#

"""
    degrevlex(mon_1::Array{exp_t}, mon_2::Array{exp_t}

Return true if mon_1 < mon_2 in the degrevlex ordering.
)

"""    
function degrevlex(
    mon_1::Array{exp_t},
    mon_2::Array{exp_t},
    deg_1::deg_t,
    deg_2::deg_t,
    stat::stat_t
)
    if deg_1 == deg_2
        for i=0:stat.numberVariables-1
            ind = stat.numberVariables - i
            if mon_1[ind] == mon_2[ind]
                continue
            else
                return  mon_2[ind] < mon_1[ind]
            end
        end
    end
    return deg_1 < deg_2

end

"""
    pot(sig_1::signature_t, sig_2::signature_t, monorder::Int)

Return true if sig_1 < sig_2 w.r.t. the pot extension of monorder.
)

"""
function pot(
    sig_1::signature_t,
    sig_2::signature_t,
    deg_1::deg_t,
    deg_2::deg_t,
    stat::stat_t,
    monorder::Int
)
    if sig_1.position == sig_2.position && monorder == 0
        return degrevlex(sig_1.monomial, sig_2.monomial, deg_1, deg_2, stat)
    end
    return sig_1.position < sig_2.position

end
