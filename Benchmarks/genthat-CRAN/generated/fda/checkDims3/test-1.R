library(fda)

function_to_run <- function() {
    y4 <- structure(5:8, .Dim = c(2L, 2L), .Dimnames = list(c("a", "b"), c("c", "d")))
    x4 <- structure(1:4, .Dim = c(2L, 2L))
    fda:::checkDims3(x = x4, y = y4, xdim = 1:2, ydim = 2:1)
}




