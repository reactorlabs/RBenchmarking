library(distr)

function_to_run <- function() {
    w2 <- 1L
    w1 <- 1L
    tol0 <- 1e-09
    distr:::.getCommonWidth(x1 = abs(w1), x2 = abs(w2), tol = tol0)
}




