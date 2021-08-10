library(bit)

function_to_run <- function() {
    x <- structure(c(2L, 5L, 10L), class = "ri")
    bit:::as.logical.ri(x = x)
}




