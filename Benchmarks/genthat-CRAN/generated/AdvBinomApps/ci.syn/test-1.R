

genthat_extracted_call <- function() {
    n <- c(110000, 330000)
    k <- c(0, 1)
    AdvBinomApps:::ci.syn(k = k, n = n, alpha = 0.1, p.target = 2e-05)
}




