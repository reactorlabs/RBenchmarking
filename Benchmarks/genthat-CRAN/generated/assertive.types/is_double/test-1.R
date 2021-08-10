library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_double(x = 1:10, .xname = "1:10")
}




