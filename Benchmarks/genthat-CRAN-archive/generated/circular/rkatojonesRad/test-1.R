library(circular)

function_to_run <- function() {
    r <- 0.2
    nu <- 0.785398163397448
    n <- 100
    mu <- 0
    kappa <- 1
    circular:::rkatojonesRad(n = n, mu = mu, nu = nu, r = r, kappa = kappa)
}




