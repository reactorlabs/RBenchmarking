library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::has_cols(x = structure(NA, .Dim = c(1L, 1L)), .xname = "matrix()")
}




