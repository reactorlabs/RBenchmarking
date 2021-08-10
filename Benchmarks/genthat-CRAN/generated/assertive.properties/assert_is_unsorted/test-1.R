library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::assert_is_unsorted(x = c(2, 1, 0))
}




