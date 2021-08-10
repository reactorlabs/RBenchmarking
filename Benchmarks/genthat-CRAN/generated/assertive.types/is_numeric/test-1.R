library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_numeric(x = c(TRUE, FALSE), .xname = "c(TRUE, FALSE)")
}




