library(assertive.datetimes)

function_to_run <- function() {
    x <- structure(c(1628317100.3802, 1628317201.3802), class = c("POSIXct", "POSIXt"))
    assertive.datetimes:::is_after(x = x, y = as.POSIXct("0001-01-01"))
}




