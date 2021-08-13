library(circular)

function_to_run <- function() {
    sigma <- structure(c(1, 0, 0, 1), .Dim = c(2L, 2L))
    n <- 100
    mu <- c(0, 0)
    circular:::RpnormRad(n = n, mu = mu, sigma = sigma)
}




