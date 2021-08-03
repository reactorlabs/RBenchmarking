library(prodlim)

function_to_run <- function() {
    CRHist2 <- structure(c(1, 2, 3, 4, 1, 0, 1, 1, 1, 4, 2, 3), .Dim = 4:3, .Dimnames = list(NULL, c("time", "status", "event")),
        class = "Hist", states = c("1", "3", "4"), cens.type = "rightCensored", cens.code = "2", model = "competing.risks",
        entry.type = "")
    prodlim:::plot.Hist(x = CRHist2, box1.row = 2)
}




