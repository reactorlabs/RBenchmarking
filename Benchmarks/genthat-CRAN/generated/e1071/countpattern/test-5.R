library(e1071)

function_to_run <- function() {
    xx <- structure(c(1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1), .Dim = c(5L, 3L))
    e1071:::countpattern(x = xx, matching = TRUE)
}




