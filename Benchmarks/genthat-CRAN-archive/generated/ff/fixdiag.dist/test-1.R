

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    dist <- stats::dist
    ff:::fixdiag.dist(x = dist(rnorm(1:4)))
}




