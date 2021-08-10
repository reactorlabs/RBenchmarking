library(distr)

function_to_run <- function() {
    tol0 <- 1e-09
    supp0 <- c(-5, -4, -3, -2, -1, 0, 1, 2)
    sup1 <- 0:2
    pi1 <- 0
    distr:::.inWithTol(x = supp0, y = sup1 - pi1, tol = tol0)
}




