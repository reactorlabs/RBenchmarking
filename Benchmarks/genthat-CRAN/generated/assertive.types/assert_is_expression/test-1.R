library(assertive.types)

function_to_run <- function() {
    an_expression <- expression(sin(pi))
    assertive.types:::assert_is_expression(x = an_expression)
}




