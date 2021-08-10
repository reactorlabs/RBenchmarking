library(e1071)

function_to_run <- function() {
    x <- structure(1:20, .Dim = c(2L, 5L, 2L))
    e1071:::element(x = x, i = c(1, 4, 2))
}




