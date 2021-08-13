

genthat_extracted_call <- function() {
    x <- c(0, Inf, -Inf, NA, NaN)
    assertive.numbers:::is_finite(x = x)
}




