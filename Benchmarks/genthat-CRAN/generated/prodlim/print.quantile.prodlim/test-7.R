library(prodlim)

function_to_run <- function() {
    x <- structure(list(quantiles.survival = structure(list(q = c(0, 0.25, 0.5, 0.75, 1), quantile = c(NA, NA, 9.16814453632736,
        5.78516506840998, 0.85690323555647), lower = c(NA, 9.16814453632736, 5.78516506840998, 4.57872508730397, 0.85690323555647),
        upper = c(NA, NA, NA, 9.16814453632736, 4.57872508730397)), class = "data.frame", row.names = c(NA, -5L))), model = "survival",
        reverse = TRUE, cotype = 1, class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




