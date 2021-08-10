library(bit)

function_to_run <- function() {
    r <- structure(c(5L, 20L, 100L), class = "ri")
    bit:::as.which.ri(x = r)
}




