library(combinat)

function_to_run <- function() {
    dmnom <- combinat::dmnom
    combinat:::xsimplex(p = 3, n = 4, fun = dmnom, prob = 1/3)
}




