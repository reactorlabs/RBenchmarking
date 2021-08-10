library(assertthat)

function_to_run <- function() {
    assertthat:::`%has_args%`(f = mean, args = "x")
}




