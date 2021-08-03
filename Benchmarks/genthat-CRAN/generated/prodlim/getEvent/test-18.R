library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 2, 4, 3, 4, 1, 2, 1, 2, 1), .Dim = c(10L,
        3L), .Dimnames = list(NULL, c("time", "status", "event")), class = "Hist", states = c("1", "2", "3"), cens.type = "rightCensored",
        cens.code = "0", model = "competing.risks", entry.type = "")
    prodlim:::getEvent(object = object)
}




