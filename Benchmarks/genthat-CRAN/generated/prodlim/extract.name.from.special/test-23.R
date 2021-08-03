library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(age = c(20, 50, 70), sex = structure(c(1L, 2L, 2L), .Label = c("female", "male"), class = "factor")),
        class = "data.frame", row.names = c(NA, 3L))
    prodlim:::extract.name.from.special(x = names(requested.X))
}




