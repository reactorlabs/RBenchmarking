library(assertive.types)

function_to_run <- function() {
    x <- 99L
    .xname <- "99L"
    assertive.types:::is_integer(x = x, .xname = .xname)
}




