

genthat_extracted_call <- function() {
    x <- structure(c(2L, 5L, 10L), class = "ri")
    as.bit <- bit::as.bit
    bit:::as.integer.bit(x = as.bit(x))
}




