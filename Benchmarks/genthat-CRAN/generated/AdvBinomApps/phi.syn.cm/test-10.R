

genthat_extracted_call <- function() {
    theta <- c(0.8, 0.7)
    n.new <- c(192225, 232225, 302225)
    K <- structure(c(1, 0, 1, 0, 1, 1), .Dim = 3:2)
    k <- c(1, 1, 2)
    AdvBinomApps:::phi.syn.cm(k = k, n = n.new, K = K, theta = theta)
}




