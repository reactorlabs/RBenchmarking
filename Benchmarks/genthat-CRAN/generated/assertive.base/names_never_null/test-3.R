library(assertive.base)

function_to_run <- function() {
    x <- list(foo = 1, bar = 2, baz = 3)
    assertive.base:::names_never_null(x = x)
}




