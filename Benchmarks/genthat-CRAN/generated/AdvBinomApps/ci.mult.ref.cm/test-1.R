

genthat_extracted_call <- function() {
    theta <- c(0.2, 0.4, 0.6)
    p.target <- 2e-05
    n <- c(110000, 138000, 170000)
    K <- structure(c(1, 0, 0, 0, 1, 0, 0, 0, 1), .Dim = c(3L, 3L))
    k <- c(1, 2, 3)
    A.ref <- c(5.21, 10.71, 7.89)
    A.follow <- 8.5
    AdvBinomApps:::ci.mult.ref.cm(k = k, n = n, A.ref = A.ref, A.follow = A.follow, K = K, theta = theta, p.target = p.target)
}




