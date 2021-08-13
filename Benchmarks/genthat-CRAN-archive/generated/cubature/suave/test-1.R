library(cubature)

function_to_run <- function() {
    integrand <- genthat::with_env(function(arg) {
        x <- arg[1]
        y <- arg[2]
        z <- arg[3]
        ff <- sin(x) * cos(y) * exp(z)
        return(ff)
    }, env = list2env(list(), parent = baseenv()))
    cubature:::suave(f = integrand, lowerLimit = rep(0, 3), upperLimit = rep(1, 3), relTol = 0.001, absTol = 1e-12, flags = list(verbose = 2, 
        final = 0))
}




