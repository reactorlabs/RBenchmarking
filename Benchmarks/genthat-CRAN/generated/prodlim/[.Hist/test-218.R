library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 3, 1, 3, 2, 2, 1, 1, 3, 3), .Dim = c(10L,
        3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("time", "status", "event")), class = "Hist",
        states = c("1", "5"), model = "competing.risks", cens.type = "rightCensored", cens.code = "2", entry.type = "")
    column <- "event"
    prodlim:::`[.Hist`(x = object, j = column)
}




