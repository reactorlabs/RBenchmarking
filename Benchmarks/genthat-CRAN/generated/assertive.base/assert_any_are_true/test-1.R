library(assertive.base)

function_to_run <- function() {
    x <- c(TRUE, FALSE, NA)
    assertive.base:::assert_any_are_true(x = x)
}




