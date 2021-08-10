library(crank)

function_to_run <- function() {
    x <- structure(c(2L, 5L, 3L, NA, 2L, 6L, NA, NA, 4L, 9L, NA, 3L, NA, 4L, 3L, 2L, 2L, 3L, NA, 8L, NA, 10L, 1L, NA, 1L, 
        5L, NA, NA, NA, 3L, NA, 2L, NA, 3L, 7L, 1L, 6L, NA, 6L, 1L, 1L, 8L, NA, 1L, 8L, NA, NA, 2L, 3L, 5L, NA, 7L, NA, NA, 
        4L, NA, 3L, 1L, 7L, 6L, NA, 9L, NA, NA, 9L, NA, NA, 4L, 5L, 10L, NA, 4L, NA, 5L, 6L, 3L, 4L, NA, 2L, 4L, NA, 6L, 
        2L, NA, NA, 4L, 5L, NA, NA, 2L, NA, 1L, NA, 2L, 5L, NA, 1L, NA, 1L, 7L), .Dim = c(10L, 10L))
    crank:::muranks(x = x)
}




