library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 2, 3, 1, 4, 1, 1, 2, 1, 3, 2,
        1, 5, 3, 3, 2, 3, 5, 4), .Dim = c(10L, 4L), .Dimnames = list(NULL, c("time", "status", "from", "to")), class = "Hist",
        states = c("1", "3", "2", "4"), cens.type = "rightCensored", cens.code = "0", model = "multi.states", entry.type = "")
    column <- "to"
    prodlim:::`[.Hist`(x = object, j = column)
}




