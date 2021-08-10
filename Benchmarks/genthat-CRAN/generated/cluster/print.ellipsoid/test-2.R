library(cluster)

function_to_run <- function() {
    x <- structure(list(cov = structure(c(3, 1, 1, 2), .Dim = c(2L, 2L)), loc = c(0, 0), d2 = 10), class = "ellipsoid")
    cluster:::print.ellipsoid(x = x)
}




