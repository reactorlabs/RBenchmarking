library(assertive.numbers)

function_to_run <- function() {
    x <- 2
    assertive.numbers:::is_not_equal_to(x = x, y = 2)
}




