library(assertive.numbers)

function_to_run <- function() {
    x <- c(0, NaN, NA)
    assertive.numbers:::is_nan(x = x)
}




