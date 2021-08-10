library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::is_even(x = 1:10, tol = 2.22044604925031e-14, .xname = "1:10")
}




