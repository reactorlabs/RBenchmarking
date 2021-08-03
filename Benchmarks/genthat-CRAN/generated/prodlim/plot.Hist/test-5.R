library(prodlim)

function_to_run <- function() {
    CRHist <- structure(c(1, 2, 3, 1, 0, 1, 1, 3, 2), .Dim = c(3L, 3L), .Dimnames = list(NULL, c("time", "status", "event")),
        class = "Hist", states = c("1", "3"), cens.type = "rightCensored", cens.code = "2", model = "competing.risks", entry.type = "")
    prodlim:::plot.Hist(x = CRHist, nrow = 2, ncol = 3, box1.label = "Alive", box2.label = "Dead\n cause 1", box3.label = "Dead\n cause 2",
        arrow1.label = paste(expression(gamma[1](t))), arrow2.label = paste(expression(eta[2](t))), box1.col = 2, box2.col = 3,
        box3.col = 4, box1.row = 1, box1.column = 2, box2.row = 2, box2.column = 1, box3.row = 2, box3.column = 3)
}




