library(assertive.numbers)

function_to_run <- function() {
    x <- c(-1 - (0+1i), 0 - (0+1i), 1 - (0+1i), -1 + (0+0i), 0 + (0+0i), 1 + (0+0i), -1 + (0+1i), 0 + (0+1i), 1 + (0+1i))
    assertive.numbers:::is_imaginary(x = x)
}




