library(prodlim)

function_to_run <- function() {
    SurvHist <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0), .Dim = c(10L, 2L), .Dimnames = list(NULL,
        c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored", cens.code = "0", model = "survival",
        entry.type = "")
    prodlim:::plot.Hist(x = SurvHist)
}




