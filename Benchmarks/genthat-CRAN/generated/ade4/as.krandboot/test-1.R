

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    ade4:::as.krandboot(obs = rnorm(10), boot = matrix(rnorm(1000), nrow = 100))
}




