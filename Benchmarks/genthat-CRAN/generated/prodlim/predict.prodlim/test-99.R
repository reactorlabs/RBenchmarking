library(prodlim)

function_to_run <- function() {
    prodlim <- prodlim::prodlim
    time <- stats::time
    times <- c(0, 0.35, 0.4, 0.51, 0.7, 0.73)
    object <- structure(list(time = c(0.35, 0.4, 0.51, 0.7, 0.73), n.risk = c(6, 5, 4, 2, 1), n.event = c(0, 1, 1, 0, 1),
        n.lost = c(1, 0, 1, 1, 0), surv = c(1, 0.8, 0.6, 0.6, 0), se.surv = c(0, 0.178885438199983, 0.219089023002066, 0.219089023002066,
            NaN), hazard = c(0, 0.2, 0.25, 0, 1), first.strata = 1L, size.strata = 5L, model = "survival", maxtime = 0.73,
        lower = c(0, 0.449390983769367, 0.170593405507882, 0.170593405507882, NaN), upper = c(1, 1, 1, 1, NaN), call = prodlim(formula = Hist(time,
            status) ~ 1, data = data.frame(time, status)), formula = Hist(time, status) ~ 1, model.response = structure(c(0.35,
            0.4, 0.51, 0.51, 0.7, 0.73, 0, 1, 1, 0, 0, 1), .Dim = c(6L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5",
            "6"), c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored", cens.code = "0",
            entry.type = ""), originalDataOrder = 1:6, X = NULL, model.matrix = NULL, discrete.predictors = NULL, continuous.predictors = NULL,
        xlevels = NULL, clustervar = NULL, covariate.type = 1, cens.type = "rightCensored", conf.int = 0.95, reverse = FALSE,
        type = "surv", na.action = NULL), class = "prodlim")
    newdata <- NULL
    prodlim:::predict.prodlim(object = object, times = times, newdata = newdata, level.chaos = 0, type = "list")
}




