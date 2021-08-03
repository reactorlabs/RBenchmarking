library(prodlim)

function_to_run <- function() {
    sorted <- 1:6
    response <- structure(c(0.35, 0.4, 0.51, 0.51, 0.7, 0.73, 0, 1, 1, 0, 0, 1), .Dim = c(6L, 2L), .Dimnames = list(c("1",
        "2", "3", "4", "5", "6"), c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0",
        model = "survival", entry.type = "")
    prodlim:::`[.Hist`(x = response, i = sorted)
}




