library(prodlim)

function_to_run <- function() {
    x <- list(a = structure(list(u = 1, b = 2, c = 3), class = "data.frame", row.names = c(NA, -1L)), b = structure(list(u = 3,
        b = 4, c = 6), class = "data.frame", row.names = c(NA, -1L)))
    prodlim:::List2Matrix(list = x, depth = 1, names = "X")
}




