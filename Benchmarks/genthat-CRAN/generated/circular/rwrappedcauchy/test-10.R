library(circular)

function_to_run <- function() {
    circular <- circular::circular
    circular:::rwrappedcauchy(n = 1, mu = circular(pi/2), rho = 0.75)
}




