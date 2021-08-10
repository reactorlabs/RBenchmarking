library(assertive.numbers)

function_to_run <- function() {
    x <- c(0, Inf, -Inf, NA, NaN)
    assertive.numbers:::is_negative_infinity(x = x)
}




