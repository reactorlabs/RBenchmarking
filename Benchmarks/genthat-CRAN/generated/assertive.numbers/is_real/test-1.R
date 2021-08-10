library(assertive.numbers)

function_to_run <- function() {
    x <- 2.22044604925031e-16 + (0+2.22044604925031e-16i)
    assertive.numbers:::is_real(x = x)
}




