library(fBasics)

function_to_run <- function() {
    zeta <- 0.000758947587119624
    besselIndex <- c(0, 1, 2)
    fBasics:::.besselZ(x = zeta, lambda = besselIndex)
}




