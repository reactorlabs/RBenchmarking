library(caret)

function_to_run <- function() {
    x <- structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 
        0, 1), .Dim = c(6L, 6L))
    caret:::enumLC.matrix(object = x)
}




