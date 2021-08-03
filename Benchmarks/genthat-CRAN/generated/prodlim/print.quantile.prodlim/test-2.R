library(prodlim)

function_to_run <- function() {
    x <- structure(list(quantiles.survival = structure(list(q = 0.5, quantile = 5.25787199056587, lower = 4.44729303005845,
        upper = 9.15741788589595), class = "data.frame", row.names = c(NA, -1L))), model = "survival", reverse = FALSE, cotype = 1,
        class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




