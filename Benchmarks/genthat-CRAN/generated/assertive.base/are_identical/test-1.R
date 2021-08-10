library(assertive.base)

function_to_run <- function() {
    assertive.base:::are_identical(x = c(1, 1), y = c(1, -1), .xname = "c(1, 1)", .yname = "cos(c(0, pi))")
}




