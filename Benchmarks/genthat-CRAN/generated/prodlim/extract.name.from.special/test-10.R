library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(X1 = c(0, 1), group2 = structure(c(1L, 1L), .Label = c("Low", "Intermediate", "High"),
        class = "factor")), class = "data.frame", row.names = 1:2)
    prodlim:::extract.name.from.special(x = names(requested.X))
}




