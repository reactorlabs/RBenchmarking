library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::assert_all_are_in_left_open_range(x = 1 + .Machine$double.eps, lower = 1)
}




