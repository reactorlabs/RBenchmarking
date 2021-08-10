library(assertive.properties)

function_to_run <- function() {
    x <- structure(NA, .Dim = c(1L, 1L))
    assertive.properties:::is_empty(x = attributes(x))
}




