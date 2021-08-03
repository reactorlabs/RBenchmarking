library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 3, 4, 1, 1, 1, 1, 2, 3), .Dim = c(3L, 3L), .Dimnames = list(NULL, c("time", "status", "event")),
        class = "Hist", states = c("1", "3", "4"), model = "competing.risks", cens.type = "rightCensored", cens.code = "2",
        entry.type = "")
    prodlim:::`[.Hist`(x = object, j = "status", drop = TRUE)
}




