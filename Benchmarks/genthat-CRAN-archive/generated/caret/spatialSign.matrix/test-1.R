

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    caret:::spatialSign.matrix(x = matrix(rnorm(12), ncol = 3))
}




