

genthat_extracted_call <- function() {
    mu <- -0.5
    lambda <- -2
    i <- 4L
    delta <- 1.2
    beta <- 0.2
    alpha <- 0.200001
    fBasics:::.ghMuMoments(k = i, alpha = alpha, beta = beta, delta = delta, mu = mu, lambda = lambda)
}




