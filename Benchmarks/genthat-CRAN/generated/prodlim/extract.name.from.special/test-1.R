library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(X1 = c(0, 1)), class = "data.frame", row.names = 1:2)
    prodlim:::extract.name.from.special(x = names(requested.X))
}




