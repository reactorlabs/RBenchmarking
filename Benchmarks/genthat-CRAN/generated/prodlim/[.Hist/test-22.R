library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 1, 3, 4, 6, 2, Inf, 3, 6, 9, 2, 0, 1, 2, 2), .Dim = c(5L, 3L), .Dimnames = list(NULL, c("L",
        "R", "status")), class = "Hist", states = "1", cens.type = "intervalCensored", cens.code = "0", model = "survival",
        entry.type = "")
    column <- "status"
    prodlim:::`[.Hist`(x = object, j = column)
}




