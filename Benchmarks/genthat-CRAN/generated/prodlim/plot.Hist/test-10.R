library(prodlim)

function_to_run <- function() {
    SurvHist <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0), .Dim = c(10L, 2L), .Dimnames = list(NULL,
        c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0", model = "survival",
        entry.type = "")
    prodlim:::plot.Hist(x = SurvHist, oneFitsAll = FALSE, box2.col = 2, box1.label = "newby", box2.label = "experienced\nR user",
        arrow1.length = 0.5, arrow1.label = "", arrow1.lwd = 4, label1.cex = 1, label2.cex = 2)
}




