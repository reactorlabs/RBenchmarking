library(corpcor)

function_to_run <- function() {
    m <- structure(c(1, 1, 2, 2), .Dim = c(2L, 2L))
    corpcor:::pseudoinverse(m = m)
}




