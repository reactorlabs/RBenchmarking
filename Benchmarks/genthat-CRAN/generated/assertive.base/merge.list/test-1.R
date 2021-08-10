library(assertive.base)

function_to_run <- function() {
    assertive.base:::merge.list(x = list(foo = 1, bar = 2, baz = 3), y = list(foo = 4, baz = 5, quux = 6))
}




