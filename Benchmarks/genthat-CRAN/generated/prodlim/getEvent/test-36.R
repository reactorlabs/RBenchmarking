library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 1, 1, 1, 1, 1, 2, 2, 3, 3), .Dim = 3:4, .Dimnames = list(NULL, c("time", "status", "from",
        "to")), class = "Hist", states = c("1", "2", "3"), model = "multi.states", cens.type = "uncensored", cens.code = "0",
        entry.type = "")
    prodlim:::getEvent(object = object, mode = "factor", column = "to")
}




