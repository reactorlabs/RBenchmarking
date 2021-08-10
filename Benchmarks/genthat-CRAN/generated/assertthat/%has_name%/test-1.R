library(assertthat)

function_to_run <- function() {
    y <- list(a = 1, b = 2)
    assertthat:::`%has_name%`(x = y, which = "c")
}




