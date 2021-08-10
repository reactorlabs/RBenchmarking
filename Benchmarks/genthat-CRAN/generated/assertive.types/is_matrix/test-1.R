library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_matrix(x = structure(NA, .Dim = c(1L, 1L)), .xname = "matrix()")
}




