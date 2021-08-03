library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(X1 = 0, X2 = 0.1), class = "data.frame", row.names = c(NA, -1L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




