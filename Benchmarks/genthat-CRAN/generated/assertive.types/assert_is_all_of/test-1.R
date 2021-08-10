library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_all_of(x = 1:10, classes = c("integer", "numeric"))
}




