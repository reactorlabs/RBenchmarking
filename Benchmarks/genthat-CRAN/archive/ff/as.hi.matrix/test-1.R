library(ff)

function_to_run <- function() {
    x <- structure(1:12, .Dim = c(6L, 2L))
    ff:::as.hi.matrix(x = rbind(c(1, 1), c(1, 2), c(2, 1)), dim = dim(x))
}




