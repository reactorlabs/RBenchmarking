library(fBasics)

function_to_run <- function() {
    n <- 5000
    mu <- 0
    delta <- 1
    beta <- 0.3
    alpha <- 1
    fBasics:::.rhyp1(n = n, alpha = alpha, beta = beta, delta = delta, mu = mu)
}




