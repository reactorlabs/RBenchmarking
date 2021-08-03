library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(Z = structure(1:3, .Label = c("B", "A", "C"), class = "factor")), class = "data.frame",
        row.names = c(NA, 3L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




