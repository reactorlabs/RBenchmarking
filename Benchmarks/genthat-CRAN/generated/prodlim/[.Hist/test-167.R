library(prodlim)

function_to_run <- function() {
    x <- structure(c(1, 2, 3, 1, 1, 1, 1, 1, 2, 2, 3, 3), .Dim = 3:4, .Dimnames = list(NULL, c("time", "status", "from",
        "to")), class = "Hist", states = c("1", "2", "3"), cens.type = "uncensored", cens.code = "0", model = "multi.states",
        entry.type = "")
    prodlim:::`[.Hist`(x = x, i = x[, "status"] != 0, drop = FALSE)
}




