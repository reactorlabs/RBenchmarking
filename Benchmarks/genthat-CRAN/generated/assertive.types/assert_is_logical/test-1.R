

genthat_extracted_call <- function() {
    runif <- stats::runif
    assertive.types:::assert_is_logical(x = runif(10) > 0.5)
}




