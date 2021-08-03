library(prodlim)

function_to_run <- function() {
    sorted <- 1:11
    response <- structure(c(7, 3, 11, 12, 11, 2, 1, 7, 15, 17, 3, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 0, 1, 1,
        0, 0, 1, 1, 0, 1, 0, 1, 3, 2, 2, 3, 3, 1, 2, 3, 2, 3), .Dim = c(11L, 4L), .Dimnames = list(c("1", "2", "3", "4",
        "5", "6", "7", "8", "9", "10", "11"), c("entry", "time", "status", "event")), class = "Hist", states = c("1", "2"),
        cens.type = "rightCensored", cens.code = "0", model = "competing.risks", entry.type = "leftTruncated")
    prodlim:::`[.Hist`(x = response, i = sorted)
}




