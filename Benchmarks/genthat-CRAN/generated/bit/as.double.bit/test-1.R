library(bit)

function_to_run <- function() {
    x <- structure(c(2L, 5L, 10L), class = "ri")
    as.bit <- bit::as.bit
    bit:::as.double.bit(x = as.bit(x))
}




