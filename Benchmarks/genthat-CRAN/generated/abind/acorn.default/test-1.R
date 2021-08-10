library(abind)

function_to_run <- function() {
    x <- structure(1:24, .Dim = 4:2, .Dimnames = list(c("w", "x", "y", "z"), c("A", "B", "C"), c("a", "b")))
    abind:::acorn.default(x = x)
}




