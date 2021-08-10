library(expm)

function_to_run <- function() {
    m <- structure(c(1, 1, 1, 2, 1, 0, 0, 2, 0, 2, 0, 2, 0, 0, 3, 2), .Dim = c(4L, 4L))
    expm:::sqrtm(x = m)
}




