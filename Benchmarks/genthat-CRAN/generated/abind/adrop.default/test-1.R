library(abind)

function_to_run <- function() {
    x <- structure(1:24, .Dim = 2:4, .Dimnames = list(c("a", "b"), c("A", "B", "C"), c("w", "x", "y", "z")))
    abind:::adrop.default(x = x[, , 1, drop = FALSE], drop = 3)
}




