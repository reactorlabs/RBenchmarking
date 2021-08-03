library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 1, 3, 4, 6, 2, Inf, 3, 6, 9, 2, 0, 1, 2, 2, 1, 1, 1, 2, 2), .Dim = 5:4, .Dimnames = list(NULL,
        c("L", "R", "status", "event")), class = "Hist", states = c("1", "2"), cens.type = "intervalCensored", cens.code = "0",
        model = "competing.risks", entry.type = "")
    prodlim:::getEvent(object = object)
}




