library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(X2 = c(-1.8, 0, 1.2)), class = "data.frame", row.names = c(NA, 3L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




