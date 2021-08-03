library(prodlim)

function_to_run <- function() {
    ehf <- structure(list(event.history = structure(c(1, 2, 3, 4, 5, 6, 7, 1, 0, 1, 1, 1, 1, 0, 1, 3, 2, 1, 2, 2, 3), .Dim = c(7L,
        3L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7"), c("time", "status", "event")), class = "Hist", states = c("cause1",
        "cause2"), cens.type = "rightCensored", cens.code = "0", model = "competing.risks", entry.type = ""), design = structure(c(2.24,
        3.22, 9.59, 4.4, 3.54, 6.81, 5.05, 44.69, 37.41, 68.54, 38.85, 35.9, 27.02, 41.84), .Dim = c(7L, 2L), .Dimnames = list(c("1",
        "2", "3", "4", "5", "6", "7"), c("X2", "X4")), .Label = structure(list(), names = character())), prop = structure(list(X1 = structure(c(2L,
        3L, 2L, 1L, 1L, 2L, 3L), .Label = c("c", "a", "b"), class = "factor")), terms = ~X1, row.names = c(NA, 7L), class = "data.frame",
        .Label = list(X1 = c("c", "a", "b"))), cluster = structure(list(X3 = c(1, 1, 1, 1, 0, 0, 1)), terms = ~X3, row.names = c(NA,
        7L), class = "data.frame", .Label = structure(list(), names = character()))), Terms = Hist(time, outcome) ~ X1 +
        X2 + X3 + X4, class = "EventHistory.frame")
    prodlim:::getEvent(object = ehf$event.history)
}




