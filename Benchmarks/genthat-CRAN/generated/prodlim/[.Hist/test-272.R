library(prodlim)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 2, 3, 12, 8, 9, 10, 7, 12, 12, 12, 2, 2, 0, 2, 2, 2, 1, 0, 0, 0),
        .Dim = c(10L, 3L), .Dimnames = list(NULL, c("L", "R", "status")), class = "Hist", states = "1", cens.type = "intervalCensored",
        cens.code = "0", model = "survival", entry.type = "")
    column <- "status"
    prodlim:::`[.Hist`(x = object, j = column)
}




