library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::assert_any_are_imaginary(x = c(0 + (0+1i), 0))
}




