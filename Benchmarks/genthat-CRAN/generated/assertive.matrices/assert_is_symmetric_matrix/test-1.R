library(assertive.matrices)

function_to_run <- function() {
    m <- structure(c(1, 0, 1e-100, 0, 1, 0, 0, 0, 1), .Dim = c(3L, 3L))
    assertive.matrices:::assert_is_symmetric_matrix(x = m)
}




