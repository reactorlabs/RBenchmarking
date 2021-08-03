library(prodlim)

function_to_run <- function() {
    event.history <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 2, 3, 12, 8, 9, 10, 7, 12, 12, 12, 2, 2, 2, 2, 2, 2, 1, 2,
        2, 2), .Dim = c(10L, 3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("L", "R", "status")),
        class = "Hist", states = "1", cens.type = "intervalCensored", cens.code = "0", model = "survival", entry.type = "")
    prodlim:::`[.Hist`(x = event.history, j = "status")
}




