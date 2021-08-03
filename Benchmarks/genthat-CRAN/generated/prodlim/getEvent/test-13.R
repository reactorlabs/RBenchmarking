library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 1, 2, 4, 1, 1, 1, 0, 1, 1, 1, 1, 1, 2, 3, 2, 4, 2, 1, 2, 3, 5, 4, 2, 1, 2, 1, 1, 1, 2,
        2, 2, 3), .Dim = c(7L, 5L), .Dimnames = list(NULL, c("time", "status", "from", "to", "id")), class = "Hist", states = c("1",
        "2", "3", "4"), cens.type = "rightCensored", cens.code = "0", model = "multi.states", entry.type = "")
    prodlim:::getEvent(object = object, mode = "factor", column = "from")
}




