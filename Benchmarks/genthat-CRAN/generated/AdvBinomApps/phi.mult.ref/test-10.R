library(AdvBinomApps)

function_to_run <- function() {
    tailcut <- 1e-08
    prec <- 2
    n.new <- c(110000, 211598)
    k <- c(1, 2)
    A.ref <- c(5.21, 10.71)
    AdvBinomApps:::phi.mult.ref(k = k, n = n.new, A.ref = A.ref, prec = prec, tailcut = tailcut)
}




