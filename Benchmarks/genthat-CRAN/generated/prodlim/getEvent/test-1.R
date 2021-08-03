library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 0, 1, 1, 0, 0, 0, 1), .Dim = c(7L, 2L), .Dimnames = list(c("1", "2", "3",
        "4", "5", "6", "7"), c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0",
        model = "survival", entry.type = "")
    model <- "survival"
    prodlim:::getEvent(object = object, mode = "factor", column = ifelse(model == "survival", "status", "event"))
}




