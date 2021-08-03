library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 1, 1, 1, 1, 1, 1, 2, 1, 3, 4, 2, 1, 3, 4, 1), .Dim = 5:4, .Dimnames = list(NULL,
        c("time", "status", "from", "to")), class = "Hist", states = c("1", "2", "3", "4"), model = "multi.states", cens.type = "uncensored",
        cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = object, j = "from")
}




