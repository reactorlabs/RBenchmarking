library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_a_raw(x = as.raw(255), .xname = "as.raw(255)")
}




