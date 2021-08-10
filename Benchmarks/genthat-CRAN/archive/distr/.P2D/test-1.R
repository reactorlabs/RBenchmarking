library(distr)

function_to_run <- function() {
    up1 <- 4.26489079392384
    p <- distr::p
    ngrid <- 4096
    low1 <- -4.26489079392283
    distr:::.P2D(p = p, ql = low1, qu = up1, ngrid = ngrid)
}




