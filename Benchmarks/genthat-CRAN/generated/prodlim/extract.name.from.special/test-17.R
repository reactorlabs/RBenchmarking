library(prodlim)

function_to_run <- function() {
    requested.X <- structure(list(X1 = c(0, 0, 1, 0), X2 = c(-2.65645542090478, -2.44046692857552, 1.32011334573019, -0.306638594078475)),
        class = "data.frame", row.names = 18:21)
    prodlim:::extract.name.from.special(x = names(requested.X))
}




