library(assertive.types)

function_to_run <- function() {
    x <- ~x
    .xname <- "~x"
    assertive.types:::is_formula(x = x, .xname = .xname)
}




