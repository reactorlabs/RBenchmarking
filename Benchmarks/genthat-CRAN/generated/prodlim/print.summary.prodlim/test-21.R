library(prodlim)

function_to_run <- function() {
    x <- structure(list(table = structure(c(0, 1, 5, 10, 1, 5, 10, 12, 50, 50, 28, 9, 0, 13, 9, 4, 0, 9, 10, 1, 0, 29.7210539109307,
        57.8847874085911, 77.5385532845819, 0, 6.98850294314273, 8.86653958241849, 8.69576206480022, 0, 16.0238398365188,
        40.5066891595521, 60.4951728194439, 100, 43.4182679853426, 75.2628856576302, 94.58193374972), .Dim = c(4L, 9L), .Dimnames = list(c("1",
        "2", "3", "4"), c("time0", "time1", "n.risk", "n.event", "n.lost", "cuminc", "se.cuminc", "lower", "upper"))), model = "survival",
        cotype = 1, asMatrix = FALSE, percent = TRUE), class = "summary.prodlim")
    prodlim:::print.summary.prodlim(x = x)
}




