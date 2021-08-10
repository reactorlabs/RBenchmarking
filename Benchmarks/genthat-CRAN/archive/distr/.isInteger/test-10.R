library(distr)

function_to_run <- function() {
    x <- 1L
    tol <- 2.22044604925031e-16
    distr:::.isInteger(x = x, tol = tol)
}




