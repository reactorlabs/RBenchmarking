library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_raw(x = as.raw(1:10))
}




