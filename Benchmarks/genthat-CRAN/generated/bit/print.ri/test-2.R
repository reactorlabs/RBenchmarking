library(bit)

function_to_run <- function() {
    x <- structure(c(1L, 30L, NA), class = "ri")
    bit:::print.ri(x = x)
}




