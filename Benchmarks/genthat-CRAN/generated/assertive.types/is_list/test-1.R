library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_list(x = list(1, 2, 3), .xname = "list(1, 2, 3)")
}




