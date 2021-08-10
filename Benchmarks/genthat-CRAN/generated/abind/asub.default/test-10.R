library(abind)

function_to_run <- function() {
    x <- structure(1:24, .Dim = 2:4, .Dimnames = list(c("a", "b"), c("A", "B", "C"), c("w", "x", "y", "z")))
    abind:::asub.default(x = x, idx = 1, dims = 1, drop = FALSE)
}




