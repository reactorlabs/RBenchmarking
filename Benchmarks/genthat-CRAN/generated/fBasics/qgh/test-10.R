library(fBasics)

function_to_run <- function() {
    p <- 0.75
    mu <- 0
    lambda <- -0.5
    delta <- 1
    beta <- 0
    alpha <- 1
    fBasics:::qgh(p = p, alpha = alpha, beta = beta, delta = delta, mu = mu, lambda = lambda)
}




