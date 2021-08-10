library(circular)

function_to_run <- function() {
    newX <- structure(c(-1, 1, 1, -1), .Dim = c(2L, 2L))
    i <- 2L
    circular:::prodseq(x = newX[, i])
}




