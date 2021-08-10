library(boot)

function_to_run <- function() {
    newX <- structure(c(13, 1, 42, 8, 18, 81, 59, 3, 83, 21, 89, 0, 37, 0, 2, 0, 32, 0, 38, 0, 59, 0), .Dim = c(2L, 11L))
    i <- 7L
    boot:::make.ends(a = newX[, i], n = 114L)
}




