library(assertive.numbers)

function_to_run <- function() {
    x <- c(1, 1, 1)
    assertive.numbers:::is_less_than(x = x, y = 1)
}




