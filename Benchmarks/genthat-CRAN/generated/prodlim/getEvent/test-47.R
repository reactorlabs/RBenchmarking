library(prodlim)

function_to_run <- function() {
    object <- structure(c(5, 5, 1.18584085113217, 2.60362780309618, 5, 2.93390938057572, 2.0218172051354, 4.25597499977827,
        3.73718130924339, 5, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 3, 3, 2, 1, 3, 1, 2, 1, 1, 3, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1), .Dim = c(10L,
        4L), .Dimnames = list(NULL, c("time", "status", "event", "stopped")), stop.time = 5, class = "Hist", states = c("1",
        "2"), model = "competing.risks", cens.type = "rightCensored", cens.code = "0", entry.type = "")
    prodlim:::getEvent(object = object)
}




