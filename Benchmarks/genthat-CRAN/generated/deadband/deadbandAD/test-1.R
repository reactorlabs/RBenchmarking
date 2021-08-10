library(deadband)

function_to_run <- function() {
    rnorm <- stats::rnorm
    deadband:::deadbandAD(x = rnorm(40, mean = 0, sd = 1), EUmax = +0.5, EUmin = -0.5, d = 0.01, offset = 20)
}




