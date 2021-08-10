library(assertthat)

function_to_run <- function() {
    a <- structure(1628317158.58524, class = c("POSIXct", "POSIXt"))
    assertthat:::is.time(x = a)
}




