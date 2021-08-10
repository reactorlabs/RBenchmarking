library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::is_non_nested(x = list(2:3), .xname = "elt")
}




