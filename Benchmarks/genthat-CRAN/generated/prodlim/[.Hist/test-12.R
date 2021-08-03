library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 3, 4, 1, 1, 3, 1, 3, 2,
        1, 3, 4, 3, 2, 3, 4, 4), .Dim = c(10L, 4L), .Dimnames = list(NULL, c("time", "status", "from", "to")), class = "Hist",
        states = c("1", "3", "2", "4"), cens.type = "uncensored", cens.code = "0", model = "multi.states", entry.type = "")
    prodlim:::`[.Hist`(x = object, j = "status", drop = TRUE)
}




