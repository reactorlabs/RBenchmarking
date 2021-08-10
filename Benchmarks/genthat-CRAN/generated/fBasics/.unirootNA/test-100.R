library(fBasics)

function_to_run <- function() {
    .froot <- genthat::with_env(function(x, alpha, beta, delta, mu, p) pnig(q = x, alpha = alpha, beta = beta, delta = delta, 
        mu = mu) - p, env = list2env(list(pnig = fBasics::pnig), parent = baseenv()))
    upper <- 1
    p <- c(8.43071098754427e-05, 0.00040825676631424, 0.00209870178779941, 0.0117595166510906, 0.0731920854472299, 0.390924780120193, 
        0.799398301587043, 0.939466145300956, 0.979767616254111, 0.992677427488442, 0.997200359183769)
    mu <- 0
    lower <- -1
    i <- 6L
    delta <- 1
    beta <- 0.3
    alpha <- 1
    fBasics:::.unirootNA(f = .froot, interval = c(lower, upper), alpha = alpha, beta = beta, delta = delta, mu = mu, p = p[i])
}




