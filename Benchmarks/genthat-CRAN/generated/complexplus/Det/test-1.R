library(complexplus)

function_to_run <- function() {
    B <- structure(1:4, .Dim = c(2L, 2L))
    complexplus:::Det(M = B)
}




