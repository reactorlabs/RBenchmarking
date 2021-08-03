library(prodlim)

function_to_run <- function() {
    x <- structure(list(table = list(`1` = list(`X1=0` = structure(c(0, 1, 2, 1, 2, 5, 17, 14, 14, 2, 0, 2, 0, 0, 1, 0.117647058823529,
        0.117647058823529, 0.235294117647059, 0.0781424899005966, 0.0781424899005966, 0.102879368493554, 0, 0, 0.0336542606474689,
        0.270803524690984, 0.270803524690984, 0.436933974646649), .Dim = c(3L, 9L), .Dimnames = list(c("1", "2", "3"), c("time0",
        "time1", "n.risk", "n.event", "n.lost", "cuminc", "se.cuminc", "lower", "upper"))), `X1=1` = structure(c(0, 1, 2,
        1, 2, 5, 13, 13, 12, 0, 0, 3, 0, 1, 2, 0, 0, 0.259259259259259, 0, 0, 0.129482573848167, 0, 0, 0.00547807789130444,
        0, 0, 0.513040440627214), .Dim = c(3L, 9L), .Dimnames = list(c("1", "2", "3"), c("time0", "time1", "n.risk", "n.event",
        "n.lost", "cuminc", "se.cuminc", "lower", "upper"))))), model = "competing.risks", cotype = 2, asMatrix = FALSE,
        percent = FALSE, cause = "1"), class = "summary.prodlim")
    prodlim:::print.summary.prodlim(x = x)
}




