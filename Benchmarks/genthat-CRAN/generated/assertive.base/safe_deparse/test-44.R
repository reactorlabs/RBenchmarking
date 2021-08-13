

genthat_extracted_call <- function() {
    coerce_to <- assertive.base::coerce_to
    X <- list(coerce_to(1:5, c("call", "character")))
    i <- 1L
    assertive.base:::safe_deparse(expr = X[[i]])
}




