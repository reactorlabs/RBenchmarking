library(BASIX)

function_to_run <- function() {
    mat <- structure(c(1, 0, 0, 0, 0, 0, 0, 0, 0), .Dim = c(3L, 3L))
    BASIX:::BASIX.table(matrix = mat)
}




