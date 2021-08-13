

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    ade4:::as.krandxval(RMSEc = matrix(rnorm(1000), nrow = 100), RMSEv = matrix(rnorm(1000, mean = 1), nrow = 100))
}




