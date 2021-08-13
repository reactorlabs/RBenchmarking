library(clue)

function_to_run <- function() {
    x <- structure(c(5, 1, 4, 3, 5, 2, 2, 4, 4), .Dim = c(3L, 3L))
    clue:::solve_LSAP(x = x)
}




