library(fBasics)

function_to_run <- function() {
    psi <- 0.91
    n <- 5000
    lambda <- -0.5
    chi <- 1
    fBasics:::.rgigjd(n = n, theta = c(lambda, chi, psi))
}




