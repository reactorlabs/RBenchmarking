

genthat_extracted_call <- function() {
    theta <- 0.8
    p.target <- 2e-05
    n <- 1e+05
    K <- structure(c(1, 0), .Dim = 2:1)
    k <- c(1, 0)
    A.ref <- c(1, 1)
    A.follow <- c(1, 2)
    AdvBinomApps:::ci.sas.cm(k = k, n = n, A.ref = A.ref, A.follow = A.follow, K = K, theta = theta, alpha = 0.1, p.target = p.target)
}




