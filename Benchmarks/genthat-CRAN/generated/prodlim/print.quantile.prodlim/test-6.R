library(prodlim)

function_to_run <- function() {
    x <- structure(list(`X1=0` = structure(list(q = c(0, 0.25, 0.5, 0.75, 1), quantile = c(2.98238881121391, 5.50815483111756,
        NA, NA, NA), lower = c(2.98238881121391, 2.98238881121391, 5.50815483111756, NA, NA), upper = c(5.50815483111756,
        NA, NA, NA, NA)), class = "data.frame", row.names = c(NA, -5L)), `X1=1` = structure(list(q = c(0, 0.25, 0.5, 0.75,
        1), quantile = c(1.61161863007241, 2.98370116873598, 5.20447069014526, 8.74373969479748, NA), lower = c(1.61161863007241,
        1.83485239447402, 3.61436242996879, 5.20447069014526, NA), upper = c(1.91565441661776, 4.98296000227596, 8.74373969479748,
        NA, NA)), class = "data.frame", row.names = c(NA, -5L))), model = "competing.risks", reverse = FALSE, cotype = 2,
        class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




