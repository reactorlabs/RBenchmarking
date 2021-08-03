library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(age = c(60, 40, 50, 60, 40, 50), sex = structure(c(1L, 1L, 1L, 2L, 2L, 2L), .Label = c("male",
        "female"), class = "factor")), class = "data.frame", row.names = c(NA, 6L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




