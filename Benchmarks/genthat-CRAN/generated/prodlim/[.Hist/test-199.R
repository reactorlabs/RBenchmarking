library(prodlim)

function_to_run <- function() {
    response <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 3, 3, 1, 1, 2, 2), .Dim = c(10L,
        3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("time", "status", "event")), class = "Hist",
        states = c("1", "2", "5"), model = "competing.risks", cens.type = "uncensored", cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = response, j = "event")
}




