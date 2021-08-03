library(prodlim)

function_to_run <- function() {
    dat <- structure(list(time = 1:10, status = c(1, 2, 1, 2, 5, 5, 1, 1, 2, 2)), class = "data.frame", row.names = c(NA,
        -10L))
    prodlim <- prodlim::prodlim
    times <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    object <- structure(list(time = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), n.risk = c(10, 9, 8, 7, 6, 5, 4, 3, 2, 1), n.event = list(`1` = c(1,
        0, 1, 0, 0, 0, 1, 1, 0, 0), `5` = c(0, 0, 0, 0, 1, 1, 0, 0, 0, 0)), n.lost = c(0, 1, 0, 1, 0, 0, 0, 0, 1, 1), cuminc = list(`1` = c(0.1,
        0.1, 0.2125, 0.2125, 0.2125, 0.2125, 0.34375, 0.475, 0.475, 0.475), `5` = c(0, 0, 0, 0, 0.13125, 0.2625, 0.2625,
        0.2625, 0.2625, 0.2625)), var.cuminc = list(`1` = c(0.009, 0.009, 0.01796484375, 0.01796484375, 0.01796484375, 0.01796484375,
        0.0268310546875, 0.030953125, 0.030953125, 0.030953125), `5` = c(0, 0, 0, 0, 0.0148544921875, 0.02496484375, 0.02496484375,
        0.02496484375, 0.02496484375, 0.02496484375)), se.cuminc = list(`1` = c(0.0948683298050514, 0.0948683298050514, 0.134032995004961,
        0.134032995004961, 0.134032995004961, 0.134032995004961, 0.163801876324723, 0.175935002202518, 0.175935002202518,
        0.175935002202518), `5` = c(0, 0, 0, 0, 0.121879006344407, 0.158002670072376, 0.158002670072376, 0.158002670072376,
        0.158002670072376, 0.158002670072376)), surv = c(0.9, 0.9, 0.7875, 0.7875, 0.65625, 0.525, 0.39375, 0.2625, 0.2625,
        0.2625), cause.hazard = list(`1` = c(0.1, 0, 0.125, 0, 0, 0, 0.25, 0.333333333333333, 0, 0), `5` = c(0, 0, 0, 0,
        0.166666666666667, 0.2, 0, 0, 0, 0)), first.strata = 1L, size.strata = 10L, model = "competing.risks", maxtime = 10,
        lower = list(`1` = c(0, 0, 0, 0, 0, 0, 0.0227042218034579, 0.13017373206309, 0.13017373206309, 0.13017373206309),
            `5` = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)), upper = list(`1` = c(0.285938509691368, 0.285938509691368, 0.475199842949761,
            0.475199842949761, 0.475199842949761, 0.475199842949761, 0.664795778196542, 0.81982626793691, 0.81982626793691,
            0.81982626793691), `5` = c(0, 0, 0, 0, 0.370128462906566, 0.572179542803021, 0.572179542803021, 0.572179542803021,
            0.572179542803021, 0.572179542803021)), call = prodlim(formula = Hist(time, status, cens.code = "2") ~ 1, data = dat),
        formula = Hist(time, status, cens.code = "2") ~ 1, model.response = structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1,
            0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 3, 1, 3, 2, 2, 1, 1, 3, 3), .Dim = c(10L, 3L), .Dimnames = list(c("1", "2", "3",
            "4", "5", "6", "7", "8", "9", "10"), c("time", "status", "event")), class = "Hist", states = c("1", "5"), model = "competing.risks",
            cens.type = "rightCensored", cens.code = "2", entry.type = ""), originalDataOrder = 1:10, X = NULL, model.matrix = NULL,
        discrete.predictors = NULL, continuous.predictors = NULL, xlevels = NULL, clustervar = NULL, covariate.type = 1,
        cens.type = "rightCensored", conf.int = 0.95, reverse = FALSE, type = "risk", na.action = NULL), class = "prodlim")
    newdata <- NULL
    level.chaos <- 0
    prodlim:::predictList(object = object, times = times, newdata = newdata, level.chaos = level.chaos)
}




