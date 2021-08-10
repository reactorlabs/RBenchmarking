library(assertive.numbers)

function_to_run <- function() {
    x <- 2
    assertive.numbers:::is_equal_to(x = x, y = 2, tol = 0)
}




