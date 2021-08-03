library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 1, 0, 1, 1, 1, 1, 0, 1, 3, 2, 1, 2, 2, 3), .Dim = c(7L, 3L), .Dimnames = list(c("1",
        "2", "3", "4", "5", "6", "7"), c("time", "status", "event")), class = "Hist", states = c("cause1", "cause2"), cens.type = "rightCensored",
        cens.code = "0", model = "competing.risks", entry.type = "")
    column <- "event"
    prodlim:::`[.Hist`(x = object, j = column)
}




