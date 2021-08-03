library(prodlim)

function_to_run <- function() {
    stateLabels <- c("a", "b\nc", "d")
    idHist <- structure(c(1, 2, 3, 1, 1, 1, 1, 1, 2, 2, 3, 3), .Dim = 3:4, .Dimnames = list(NULL, c("time", "status", "from",
        "to")), class = "Hist", states = c("1", "2", "3"), cens.type = "uncensored", cens.code = "0", model = "multi.states",
        entry.type = "")
    prodlim:::plot.Hist(x = idHist, stateLabels = stateLabels, box1.col = "yellow", box2.col = "green", box3.col = "red")
}




