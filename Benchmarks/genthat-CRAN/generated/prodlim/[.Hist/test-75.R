library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 4, 3, 4), .Dim = 5:4, .Dimnames = list(NULL,
        c("time", "status", "from", "to")), class = "Hist", states = c("1", "2", "3", "4"), model = "multi.states", cens.type = "uncensored",
        cens.code = "0", entry.type = "")
    column <- "to"
    prodlim:::`[.Hist`(x = object, j = column)
}




