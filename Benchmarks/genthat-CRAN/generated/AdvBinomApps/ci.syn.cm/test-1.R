

genthat_extracted_call <- function() {
    theta <- c(0.8, 0.7)
    n <- c(110000, 150000, 220000)
    K <- structure(c(1, 0, 0, 0, 0, 1), .Dim = 3:2)
    k <- c(1, 1, 2)
    AdvBinomApps:::ci.syn.cm(k = k, n = n, K = K, theta = theta, alpha = 0.1, p.target = 2e-05)
}




