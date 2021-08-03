library(prodlim)

function_to_run <- function() {
    x <- structure(list(quantiles.survival = structure(list(q = c(0, 0.25, 0.5, 0.75, 1), quantile = c(NA, 11.2753806784844,
        5.25787199056587, 3.4939918159165, 0.492967146723343), lower = c(NA, 6.41999506940776, 4.44729303005845, 2.49957953925262,
        0.492967146723343), upper = c(NA, NA, 9.15741788589595, 4.99979038448156, 2.49957953925262)), class = "data.frame",
        row.names = c(NA, -5L))), model = "survival", reverse = FALSE, cotype = 1, class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




