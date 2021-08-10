library(assertive.base)

function_to_run <- function() {
    assertive.base:::is_identical_to_false(x = structure(FALSE, .Dim = c(1L, 1L)), allow_attributes = FALSE, .xname = "matrix(FALSE)")
}




