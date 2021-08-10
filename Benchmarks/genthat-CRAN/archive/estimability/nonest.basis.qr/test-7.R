library(estimability)

function_to_run <- function() {
    x <- structure(c(0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0), .Dim = c(2L, 6L))
    estimability:::nonest.basis.qr(x = qr(x))
}




