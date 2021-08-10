library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_logical(x = c(TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE), .xname = "runif(10) > 0.5")
}




