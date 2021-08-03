library(prodlim)

function_to_run <- function() {
    x <- structure(list(`X1=0` = structure(list(q = c(0, 0.25, 0.5, 0.75, 1), quantile = c(NA, 11.2753806784844, 9.15741788589595,
        4.99979038448156, 1.55066740292543), lower = c(NA, 9.15741788589595, 6.41999506940776, 3.09566675772413, 1.55066740292543),
        upper = c(NA, NA, NA, 9.15741788589595, 4.99979038448156)), class = "data.frame", row.names = c(NA, -5L)), `X1=1` = structure(list(q = c(0,
        0.25, 0.5, 0.75, 1), quantile = c(NA, 5.25787199056587, 4.44729303005845, 2.72813843472151, 0.492967146723343), lower = c(NA,
        3.71105077263798, 2.72813843472151, 0.751028491262217, 0.492967146723343), upper = c(NA, NA, 5.0854691947226, 4.44729303005845,
        2.49957953925262)), class = "data.frame", row.names = c(NA, -5L))), model = "survival", reverse = FALSE, cotype = 2,
        class = "quantile.prodlim")
    prodlim:::print.quantile.prodlim(x = x)
}




