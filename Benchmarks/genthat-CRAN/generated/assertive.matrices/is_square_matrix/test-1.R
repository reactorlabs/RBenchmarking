library(assertive.matrices)

function_to_run <- function() {
    x <- structure(c(1, 0, 0, 0, 1, 0, 0, 0, 1), .Dim = c(3L, 3L))
    .xname <- "x"
    assertive.matrices:::is_square_matrix(x = x, .xname = .xname)
}




