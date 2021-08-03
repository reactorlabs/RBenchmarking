library(prodlim)

function_to_run <- function() {
    x <- structure(c(1, 2, 4, 6, 7, 8, 9, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 1, 2, 1, 2, 1), .Dim = c(8L, 3L), .Dimnames = list(NULL,
        c("time", "status", "event")), class = "Hist", states = c("1", "2", "3"), model = "competing.risks", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    verbose <- FALSE
    prodlim:::summary.Hist(object = x, verbose = verbose)
}




