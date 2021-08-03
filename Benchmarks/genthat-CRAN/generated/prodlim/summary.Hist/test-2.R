library(prodlim)

function_to_run <- function() {
    x <- structure(c(1, 2, 3, 4, 5, 6, 7, 0, 1, 1, 0, 0, 0, 1), .Dim = c(7L, 2L), .Dimnames = list(NULL, c("time", "status")),
        class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0", model = "survival", entry.type = "")
    prodlim:::summary.Hist(object = x)
}




