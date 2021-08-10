library(emdist)

function_to_run <- function() {
    B <- structure(c(0, 0, 0, 0, 0, 1), .Dim = 2:3)
    emdist:::emd2d(A = B, B = B)
}




