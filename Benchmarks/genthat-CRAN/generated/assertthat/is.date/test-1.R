library(assertthat)

function_to_run <- function() {
    b <- structure(18846, class = "Date")
    assertthat:::is.date(x = b)
}




