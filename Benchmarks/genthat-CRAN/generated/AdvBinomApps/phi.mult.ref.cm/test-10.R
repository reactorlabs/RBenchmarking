library(AdvBinomApps)

function_to_run <- function() {
    theta <- c(0.2, 0.4, 0.6)
    tailcut <- 1e-08
    prec <- 2
    n.new <- c(209151, 138000, 170000)
    K <- structure(c(1, 0, 0, 0, 1, 0, 0, 0, 1), .Dim = c(3L, 3L))
    k <- c(1, 2, 3)
    A.ref <- c(5.21, 10.71, 7.89)
    AdvBinomApps:::phi.mult.ref.cm(k = k, n = n.new, A.ref = A.ref, K = K, theta = theta, prec = prec, tailcut = tailcut)
}




