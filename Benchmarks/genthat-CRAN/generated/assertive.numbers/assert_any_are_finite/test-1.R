library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::assert_any_are_finite(x = c(1, Inf))
}




