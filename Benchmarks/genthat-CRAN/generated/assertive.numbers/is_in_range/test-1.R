library(assertive.numbers)

function_to_run <- function() {
    x <- 0:10
    assertive.numbers:::is_in_range(x = x, lower = 0)
}




