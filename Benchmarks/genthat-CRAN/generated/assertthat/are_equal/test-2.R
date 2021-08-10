library(assertthat)

function_to_run <- function() {
    x <- 2
    assertthat:::are_equal(x = x, y = 2)
}




