library(deadband)

function_to_run <- function() {
    rnorm <- stats::rnorm
    deadband:::deadbandVD(x = rnorm(40, mean = 0, sd = 1), d = 0.01, offset = 20, k = 2)
}




