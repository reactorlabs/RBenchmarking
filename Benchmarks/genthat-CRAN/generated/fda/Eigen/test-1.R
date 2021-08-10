library(fda)

function_to_run <- function() {
    X <- structure(1:4, .Dim = c(2L, 2L), .Dimnames = list(c("A", "B"), c("c", "d")))
    fda:::Eigen(x = X)
}




