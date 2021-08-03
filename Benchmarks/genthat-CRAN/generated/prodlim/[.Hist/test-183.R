library(prodlim)

function_to_run <- function() {
    sorted <- 1:10
    response <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1), .Dim = c(10L, 2L), .Dimnames = list(c("1",
        "2", "3", "4", "5", "6", "7", "8", "9", "10"), c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored",
        cens.code = "0", model = "survival", entry.type = "")
    prodlim:::`[.Hist`(x = response, i = sorted)
}




