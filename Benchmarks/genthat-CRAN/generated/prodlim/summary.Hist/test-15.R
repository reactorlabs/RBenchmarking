library(prodlim)

function_to_run <- function() {
    x <- structure(c(2, 3, 4, 1, 1, 1, 1, 2, 1, 2, 3, 3), .Dim = 3:4, .Dimnames = list(NULL, c("time", "status", "from",
        "to")), class = "Hist", states = c("Disease\nfree", "Diseased", "Dead"), model = "multi.states", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    verbose <- FALSE
    prodlim:::summary.Hist(object = x, verbose = verbose)
}




