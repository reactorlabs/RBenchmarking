library(prodlim)

function_to_run <- function() {
    object <- structure(c(2, 3, 6, 9, 1, 1, 1, 1), .Dim = c(4L, 2L), .Dimnames = list(NULL, c("time", "status")), class = "Hist",
        states = "1", model = "survival", cens.type = "rightCensored", cens.code = "0", entry.type = "")
    model <- "survival"
    prodlim:::getEvent(object = object, mode = "factor", column = ifelse(model == "survival", "status", "event"))
}




