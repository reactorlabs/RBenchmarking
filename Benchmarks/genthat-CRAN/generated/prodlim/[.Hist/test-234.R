library(prodlim)

function_to_run <- function() {
    event.history <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 3, 1, 3, 2, 2, 1, 1, 3,
        3), .Dim = c(10L, 3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("time", "status",
        "event")), class = "Hist", states = c("1", "5"), cens.type = "rightCensored", cens.code = "2", model = "competing.risks",
        entry.type = "")
    prodlim:::`[.Hist`(x = event.history, j = "time")
}




