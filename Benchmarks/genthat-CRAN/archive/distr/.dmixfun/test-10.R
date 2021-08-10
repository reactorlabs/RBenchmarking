library(distr)

function_to_run <- function() {
    mixDistr <- .ext.1
    mixCoeff <- c(0.5, 0.5)
    distr:::.dmixfun(mixDistr = mixDistr, mixCoeff = mixCoeff)
}




