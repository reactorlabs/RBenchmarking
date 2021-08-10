library(fda)

function_to_run <- function() {
    Y <- structure(1:4, .Dim = c(2L, 2L))
    earlyUS.Canada <- structure(c(-70976, -57516), class = "Date")
    fda:::matplot.Date(x = earlyUS.Canada, y = Y)
}




