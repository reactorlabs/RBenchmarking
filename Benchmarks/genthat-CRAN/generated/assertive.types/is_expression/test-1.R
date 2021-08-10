library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_expression(x = expression(sin(pi)), .xname = "an_expression")
}




