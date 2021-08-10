library(corpcor)

function_to_run <- function() {
    m.cov <- structure(c(3, 1, 1, 0, 1, 3, 0, 1, 1, 0, 2, 0, 0, 1, 0, 2), .Dim = c(4L, 4L))
    corpcor:::cor2pcor(m = m.cov)
}




