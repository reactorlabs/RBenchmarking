library(prodlim)

function_to_run <- function() {
    x <- structure(c(1, 2, 3, 1, 0, 1, 1, 3, 2), .Dim = c(3L, 3L), .Dimnames = list(NULL, c("time", "status", "event")),
        class = "Hist", states = c("1", "3"), cens.type = "rightCensored", cens.code = "2", model = "competing.risks", entry.type = "")
    prodlim:::`[.Hist`(x = x, j = "status")
}




