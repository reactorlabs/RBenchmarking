library(assertive.matrices)

function_to_run <- function() {
    x <- structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0), .Dim = c(3L, 3L))
    tol <- 2.22044604925031e-14
    .xname <- "x"
    assertive.matrices:::is_zero_matrix(x = x, tol = tol, .xname = .xname)
}




