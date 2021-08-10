library(assertive.numbers)

function_to_run <- function() {
    x <- c(1, 1, 1)
    assertive.numbers:::is_greater_than_or_equal_to(x = x, y = 1)
}




