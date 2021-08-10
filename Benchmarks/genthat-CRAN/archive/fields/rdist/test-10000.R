library(fields)

function_to_run <- function() {
    y <- structure(c(-86.02, 39.858), .Dim = 1:2)
    x <- structure(c(-83.097, 42.358), .Dim = 1:2)
    fields:::rdist(x1 = x, x2 = y)
}




