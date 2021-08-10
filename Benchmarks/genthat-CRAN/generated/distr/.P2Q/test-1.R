library(distr)

function_to_run <- function() {
    up1 <- 8
    up <- Inf
    p <- distr::p
    ngrid <- 4096
    low1 <- -8
    low <- -Inf
    distr:::.P2Q(p = p, ql = low1, qu = up1, ngrid = ngrid, qL = low, qU = up)
}




