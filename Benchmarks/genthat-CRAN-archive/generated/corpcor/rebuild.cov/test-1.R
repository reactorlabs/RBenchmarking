library(corpcor)

function_to_run <- function() {
    v <- c(2, 3)
    r <- structure(c(1, 0.5, 0.5, 1), .Dim = c(2L, 2L))
    corpcor:::rebuild.cov(r = r, v = v)
}




