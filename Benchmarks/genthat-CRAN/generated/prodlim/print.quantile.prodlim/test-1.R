library(prodlim)

function_to_run <- function() {
    x <- structure(list(quantiles.survival = structure(list(q = c(0, 0.25, 0.5, 0.75, 1), quantile = c(NA, NA, 5.75829175052527,
        2.92318991660343, 1.24206589762213), lower = c(NA, 5.75829175052527, 3.3792885859655, 1.64977994311879, 1.24206589762213),
        upper = c(NA, NA, NA, 3.77183943556559, 1.64977994311879)), class = "data.frame", row.names = c(NA, -5L))), model = "survival",
        reverse = FALSE, cotype = 1, class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




