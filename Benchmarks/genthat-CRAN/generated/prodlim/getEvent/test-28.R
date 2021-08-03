library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 3, 1, 1, 1, 2), .Dim = 2:3, .Dimnames = list(NULL, c("time", "status", "event")), class = "Hist",
        states = c("1", "3"), model = "competing.risks", cens.type = "rightCensored", cens.code = "2", entry.type = "")
    model <- "competing.risks"
    prodlim:::getEvent(object = object, mode = "factor", column = ifelse(model == "survival", "status", "event"))
}




