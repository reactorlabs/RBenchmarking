library(prodlim)

function_to_run <- function() {
    response <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1), .Dim = c(10L, 2L), .Dimnames = list(c("1",
        "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("time", "status")), class = "Hist", states = "1", model = "survival",
        cens.type = "rightCensored", cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = response, j = "status")
}




