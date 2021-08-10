library(assertthat)

function_to_run <- function() {
    x <- 1
    assertthat:::validate_that(is.numeric(x))
}




