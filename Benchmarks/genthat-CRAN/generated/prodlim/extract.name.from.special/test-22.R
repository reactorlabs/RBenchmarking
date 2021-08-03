library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(sex = structure(1:2, .Label = c("female", "male"), class = "factor")), class = "data.frame",
        row.names = 1:2)
    prodlim:::extract.name.from.special(x = names(requested.X))
}




