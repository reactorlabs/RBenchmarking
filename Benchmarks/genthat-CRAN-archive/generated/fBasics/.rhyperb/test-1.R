library(fBasics)

function_to_run <- function() {
    theta <- c(0.314485451016575, 0.953939201416946, 1, 0)
    n <- 5000
    fBasics:::.rhyperb(n = n, theta = theta)
}




