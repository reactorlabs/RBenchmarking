library(prodlim)

function_to_run <- function() {
    object <- structure(c(7.01683334615683, 6.62193815242765, 1.18584085113217, 2.60362780309618, 8.41890206264328, 2.93390938057572,
        2.0218172051354, 4.25597499977827, 3.73718130924339, 6.57162398483766, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 2, 1, 2, 1,
        3, 1, 2, 1, 1, 2), .Dim = c(10L, 3L), .Dimnames = list(NULL, c("time", "status", "event")), class = "Hist", states = c("1",
        "2"), cens.type = "rightCensored", cens.code = "0", model = "competing.risks", entry.type = "")
    prodlim:::`[.Hist`(x = object, j = "status", drop = TRUE)
}




