library(prodlim)

function_to_run <- function() {
    x <- structure(c(1, 2, 3, 4, 0, 1, 1, 1, 1, 1, 2, 1, 4, 2, 3, 3), .Dim = c(4L, 4L), .Dimnames = list(NULL, c("time",
        "status", "from", "to")), class = "Hist", states = c("Disease\nfree", "Diseased", "Dead"), cens.type = "rightCensored",
        cens.code = "0", model = "multi.states", entry.type = "")
    prodlim:::`[.Hist`(x = x, j = "status")
}




