library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_array(x = structure(NA, .Dim = 1L), .xname = "array()")
}




