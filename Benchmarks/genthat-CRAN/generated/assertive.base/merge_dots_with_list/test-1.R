library(assertive.base)

function_to_run <- function() {
    assertive.base:::merge_dots_with_list(foo = 1, bar = 2, baz = 3, l = list(foo = 4, baz = 5, quux = 6))
}




