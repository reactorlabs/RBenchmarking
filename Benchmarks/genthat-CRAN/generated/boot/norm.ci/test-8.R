library(boot)

function_to_run <- function() {
    air.n <- 12L
    air.mean <- 108.083333333333
    boot:::norm.ci(var.t0 = 1/air.n, t0 = log(air.mean))
}




