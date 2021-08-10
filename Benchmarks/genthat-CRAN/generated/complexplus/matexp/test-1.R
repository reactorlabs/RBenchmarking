library(complexplus)

function_to_run <- function() {
    A <- structure(c(1 + (0+0i), 2 + (0+0i), 2 + (0+3i), 5 + (0+0i)), .Dim = c(2L, 2L))
    complexplus:::matexp(A = A)
}




