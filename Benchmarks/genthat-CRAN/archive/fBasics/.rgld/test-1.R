library(fBasics)

function_to_run <- function() {
    n <- 500
    lambda4 <- -0.125
    lambda3 <- -0.125
    lambda2 <- -1
    lambda1 <- 0
    fBasics:::.rgld(n = n, lambda1 = lambda1, lambda2 = lambda2, lambda3 = lambda3, lambda4 = lambda4, param = "rs")
}




