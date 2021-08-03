library(prodlim)

function_to_run <- function() {
    X <- list(`1` = list(`X1=0` = structure(c(1, 2, 5, 14, 14, 7, 0, 0, 0, 0, 0, 0, 0.117647058823529, 0.117647058823529,
        0.235294117647059, 0.0781424899005966, 0.0781424899005966, 0.102879368493554, 0, 0, 0.0336542606474689, 0.270803524690984,
        0.270803524690984, 0.436933974646649), .Dim = c(3L, 8L), .Dimnames = list(c("1", "2", "3"), c("time", "n.risk", "n.event",
        "n.lost", "cuminc", "se.cuminc", "lower", "upper"))), `X1=1` = structure(c(1, 2, 5, 13, 12, 6, 0, 0, 0, 0, 0, 0,
        0, 0, 0.259259259259259, 0, 0, 0.129482573848167, 0, 0, 0.00547807789130444, 0, 0, 0.513040440627214), .Dim = c(3L,
        8L), .Dimnames = list(c("1", "2", "3"), c("time", "n.risk", "n.event", "n.lost", "cuminc", "se.cuminc", "lower",
        "upper")))))
    i <- 1L
    prodlim:::List2Matrix(list = X[[i]], depth = 1, names = "X")
}




