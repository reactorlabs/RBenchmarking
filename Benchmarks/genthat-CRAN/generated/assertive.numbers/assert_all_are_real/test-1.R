library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::assert_all_are_real(x = 1:10 + 0 + (0+0i))
}




