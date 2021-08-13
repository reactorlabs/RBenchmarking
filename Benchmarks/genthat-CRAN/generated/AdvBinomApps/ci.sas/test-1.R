

genthat_extracted_call <- function() {
    p.target <- 2e-05
    n <- 110000
    k <- c(1, 0)
    A.ref <- c(1, 1.5)
    A.follow <- c(1, 2)
    AdvBinomApps:::ci.sas(k = k, n = n, A.ref = A.ref, A.follow = A.follow, alpha = 0.1, p.target = p.target)
}




