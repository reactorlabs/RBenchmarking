library(prodlim)

function_to_run <- function() {
    prodlim <- prodlim::prodlim
    SurvFrame <- structure(list(time = 1:10, status = c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L)), class = "data.frame", row.names = c(NA,
        -10L))
    x <- structure(list(time = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), n.risk = c(10, 9, 8, 7, 6, 5, 4, 3, 2, 1), n.event = c(1,
        1, 0, 1, 1, 1, 1, 0, 1, 1), n.lost = c(0, 0, 1, 0, 0, 0, 0, 1, 0, 0), surv = c(0.9, 0.8, 0.8, 0.685714285714286,
        0.571428571428572, 0.457142857142857, 0.342857142857143, 0.342857142857143, 0.171428571428571, 0), se.surv = c(0.0948683298050514,
        0.126491106406735, 0.126491106406735, 0.151494017432321, 0.163774715491746, 0.166178098285707, 0.159152273198154,
        0.159152273198154, 0.14500427258207, NaN), hazard = c(0.1, 0.111111111111111, 0, 0.142857142857143, 0.166666666666667,
        0.2, 0.25, 0, 0.5, 1), first.strata = 1L, size.strata = 10L, model = "survival", maxtime = 10, lower = c(0.714061490308632,
        0.552081987078175, 0.552081987078175, 0.388791467673654, 0.250436027486455, 0.131439769483513, 0.0309244193310812,
        0.0309244193310812, 0, NaN), upper = c(1, 1, 1, 0.982637103754917, 0.892421115370688, 0.782845944802201, 0.654789866383205,
        0.654789866383205, 0.455631723293858, NaN), call = prodlim(formula = Hist(time = time, status != 0) ~ 1, data = SurvFrame),
        formula = Hist(time = time, status != 0) ~ 1, model.response = structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 1, 0,
            1, 1, 1, 1, 0, 1, 1), .Dim = c(10L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"),
            c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored", cens.code = "0",
            entry.type = ""), originalDataOrder = 1:10, X = NULL, model.matrix = NULL, discrete.predictors = NULL, continuous.predictors = NULL,
        xlevels = NULL, clustervar = NULL, covariate.type = 1, cens.type = "rightCensored", conf.int = 0.95, reverse = FALSE,
        type = "surv", na.action = NULL), class = "prodlim")
    prodlim:::predictSurvIndividual(object = x, lag = 1)
}




