library(prodlim)

function_to_run <- function() {
    x <- structure(list(quantiles.risk = structure(list(q = c(0, 0.25, 0.5, 0.75, 1), quantile = c(1.61161863007241, 3.61436242996879,
        8.07326603318642, NA, NA), lower = c(1.61161863007241, 1.91565441661776, 4.26075540575908, 8.74373969479748, NA),
        upper = c(1.91565441661776, 5.50815483111756, NA, NA, NA)), class = "data.frame", row.names = c(NA, -5L))), model = "competing.risks",
        reverse = FALSE, cotype = 1, class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




