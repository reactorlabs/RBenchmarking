

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    dist <- stats::dist
    ff:::symmetric.dist(x = dist(rnorm(1:4)))
}




