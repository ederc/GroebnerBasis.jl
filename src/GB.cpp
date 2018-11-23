#include "jlcxx/jlcxx.hpp"
#include "kernel/ideals.h"

JLCXX_MODULE define_julia_module(jlcxx::Module& mod)
{
  mod.add_type<spolyrec>("poly");
  mod.method("np", [](poly lp, poly pterm){lp->next = pterm;});
}
