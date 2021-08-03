library(prodlim)

function_to_run <- function() {
    x <- structure(list(`X1=0` = structure(list(q = 0.5, quantile = 9.15741788589595, lower = 6.41999506940776, upper = NA_real_),
        class = "data.frame", row.names = c(NA, -1L)), `X1=1` = structure(list(q = 0.5, quantile = 4.44729303005845, lower = 2.72813843472151,
        upper = 5.0854691947226), class = "data.frame", row.names = c(NA, -1L))), model = "survival", reverse = FALSE, cotype = 2,
        class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




