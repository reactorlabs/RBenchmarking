library(acepack)

function_to_run <- function() {
    Y <- c(4, 10, 18, 28, 40, 54, 70, 88, 108, 130)
    X <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100), .Dim = c(10L, 2L), .Dimnames = list(NULL, 
        c("X1", "X2")))
    acepack:::ace(x = X, y = Y)
}




