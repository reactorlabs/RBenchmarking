library(ff)

function_to_run <- function() {
    rnorm <- stats::rnorm
    dist <- stats::dist
    ff:::symmetric.dist(x = dist(rnorm(1:4)))
}




