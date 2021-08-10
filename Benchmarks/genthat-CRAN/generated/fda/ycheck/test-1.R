library(fda)

function_to_run <- function() {
    y <- structure(1:2, .Dim = 2:1)
    n <- 2L
    fda:::ycheck(y = y, n = n)
}




