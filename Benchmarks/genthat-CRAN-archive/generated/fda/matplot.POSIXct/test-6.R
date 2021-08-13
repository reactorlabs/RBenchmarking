library(fda)

function_to_run <- function() {
    Y <- structure(1:4, .Dim = c(2L, 2L))
    AmRev.ct <- structure(c(-6106060800, -5701449600), class = c("POSIXct", "POSIXt"), tzone = "GMT")
    fda:::matplot.POSIXct(x = AmRev.ct, y = Y)
}




