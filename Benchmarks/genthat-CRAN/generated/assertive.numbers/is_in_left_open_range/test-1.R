library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::is_in_left_open_range(x = 1, lower = 1, upper = Inf, .xname = "1 + .Machine$double.eps")
}




