library(prodlim)

function_to_run <- function() {
    response <- structure(c(0.35, 0.4, 0.51, 0.51, 0.7, 0.73, 0, 1, 1, 0, 0, 1), .Dim = c(6L, 2L), .Dimnames = list(c("1",
        "2", "3", "4", "5", "6"), c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = response, j = "status")
}




