library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5), .Dim = c(5L, 3L), .Dimnames = list(NULL, c("time",
        "status", "event")), class = "Hist", states = c("a", "b", "c", "d", "e"), cens.type = "uncensored", cens.code = "0",
        model = "competing.risks", entry.type = "")
    column <- "event"
    prodlim:::`[.Hist`(x = object, j = column)
}




