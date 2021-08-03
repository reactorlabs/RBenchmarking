library(prodlim)

function_to_run <- function() {
    event.history <- structure(c(1, 1, 5, 5, 2, 7, 9, 1, 0, 1, 0, 1, 1, 0), .Dim = c(7L, 2L), .Dimnames = list(c("1", "2",
        "3", "4", "5", "6", "7"), c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0",
        model = "survival", entry.type = "")
    prodlim:::`[.Hist`(x = event.history, j = "time")
}




