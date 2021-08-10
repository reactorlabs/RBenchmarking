library(AdvBinomApps)

function_to_run <- function() {
    p.target <- 2e-05
    n <- c(110000, 138000)
    k <- c(1, 2)
    A.ref <- c(5.21, 10.71)
    A.follow <- 8.5
    AdvBinomApps:::ci.mult.ref(k = k, n = n, A.ref = A.ref, A.follow = A.follow, p.target = p.target)
}




