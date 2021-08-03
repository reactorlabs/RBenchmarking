library(prodlim)

function_to_run <- function() {
    x <- structure(list(table = structure(c(0, 1, 5, 10, 1, 5, 10, 12, 50, 50, 28, 9, 0, 13, 9, 4, 0, 9, 10, 1, 100, 70.2789460890693,
        42.1152125914089, 22.4614467154181, 0, 6.98850294314273, 8.86653958241849, 8.69576206480022, 0, 56.5817320146574,
        24.7371143423698, 5.41806625027998, 100, 83.9761601634812, 59.4933108404479, 39.5048271805561), .Dim = c(4L, 9L),
        .Dimnames = list(c("1", "2", "3", "4"), c("time0", "time1", "n.risk", "n.event", "n.lost", "surv", "se.surv", "lower",
            "upper"))), model = "survival", cotype = 1, asMatrix = FALSE, percent = TRUE), class = "summary.prodlim")
    prodlim:::print.summary.prodlim(x = x)
}




