library(e1071)

function_to_run <- function() {
    x <- structure(c(NA, 2L, NA, 4L, 5L, 6L, NA, 8L, 9L, 10L), .Dim = c(5L, 2L))
    e1071:::impute(x = x)
}




