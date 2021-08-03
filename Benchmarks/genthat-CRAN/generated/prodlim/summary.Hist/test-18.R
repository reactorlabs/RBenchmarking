library(prodlim)

function_to_run <- function() {
    x <- structure(c(2, 3, 6, 9, 1, 1, 1, 1), .Dim = c(4L, 2L), .Dimnames = list(NULL, c("time", "status")), class = "Hist",
        states = "1", model = "survival", cens.type = "rightCensored", cens.code = "0", entry.type = "")
    verbose <- FALSE
    prodlim:::summary.Hist(object = x, verbose = verbose)
}




