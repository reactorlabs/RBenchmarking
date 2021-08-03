library(prodlim)

function_to_run <- function() {
    response <- structure(c(1, 1, 2, 5, 5, 7, 9, 1, 0, 1, 1, 0, 1, 0), .Dim = c(7L, 2L), .Dimnames = list(c("1", "2", "5",
        "3", "4", "6", "7"), c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = response, j = "time")
}




