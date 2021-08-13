

genthat_extracted_call <- function() {
    x <- list("X1", "X2", "X3", "X4")
    N <- 100
    k <- 4
    distrib.pars <- list(list(0, 2), list(0, 1), list(20, 150), list(2, 0, 1))
    distrib <- list("norm", "norm", "unif", "t.scaled")
    ATmet:::MCdesign(N = N, k = k, distrib = distrib, distrib.pars = distrib.pars, x = x)
}




