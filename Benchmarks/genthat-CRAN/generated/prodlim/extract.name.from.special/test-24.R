library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(age = c(20, 50, 70)), class = "data.frame", row.names = c(NA, 3L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




