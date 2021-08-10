library(fBasics)

function_to_run <- function() {
    mu <- -0.3
    lambda <- 1
    delta <- 0.8
    beta <- 0.1
    alpha <- 1.1
    fBasics:::.ghCentralMoments(k = 2, alpha = alpha, beta = beta, delta = delta, mu = mu, lambda = lambda)
}




