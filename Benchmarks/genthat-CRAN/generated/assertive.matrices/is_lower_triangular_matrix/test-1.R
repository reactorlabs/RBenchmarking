library(assertive.matrices)

function_to_run <- function() {
    x <- structure(c(1, 2, 3, 0, 5, 6, 0, 0, 9), .Dim = c(3L, 3L))
    assertive.matrices:::is_lower_triangular_matrix(x = x)
}




