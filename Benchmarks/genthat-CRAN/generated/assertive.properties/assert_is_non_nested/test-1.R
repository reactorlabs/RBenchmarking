library(assertive.properties)

function_to_run <- function() {
    elt <- 1
    assertive.properties:::assert_is_non_nested(x = elt)
}




