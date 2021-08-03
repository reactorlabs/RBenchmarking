library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(X1 = c(1, 1, 0), X2 = c(4, 10, 10)), class = "data.frame", row.names = c(NA, -3L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




