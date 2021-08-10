library(corpcor)

function_to_run <- function() {
    c <- structure(c(2, 1.22474487139159, 1.22474487139159, 3), .Dim = c(2L, 2L))
    corpcor:::decompose.cov(m = c)
}




