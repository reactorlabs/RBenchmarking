library(prodlim)

function_to_run <- function() {
    x <- structure(c(1, 2, 3, 4, 5, 0, 1, 1, 1, 1, 1, 1, 2, 2, 1, 4, 2, 1, 3, 3), .Dim = 5:4, .Dimnames = list(NULL, c("time",
        "status", "from", "to")), class = "Hist", states = c("Disease\nfree", "Diseased", "Dead"), cens.type = "rightCensored",
        cens.code = "0", model = "multi.states", entry.type = "")
    prodlim:::`[.Hist`(x = x, i = x[, "status"] != 0, drop = FALSE)
}




