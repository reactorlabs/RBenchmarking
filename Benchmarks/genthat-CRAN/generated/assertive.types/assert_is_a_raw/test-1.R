library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_a_raw(x = as.raw(255))
}




