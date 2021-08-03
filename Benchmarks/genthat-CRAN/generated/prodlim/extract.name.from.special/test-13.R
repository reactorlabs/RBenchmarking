library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(group = structure(1:3, .Label = c("High", "Intermediate", "Low"), class = "factor")), class = "data.frame",
        row.names = c(NA, 3L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




