library(distr)

function_to_run <- function() {
    mixDistr.c <- list(.ext.1)
    mixCoeff.c <- 1
    distr:::.pmixfun(mixDistr = mixDistr.c, mixCoeff = mixCoeff.c)
}




