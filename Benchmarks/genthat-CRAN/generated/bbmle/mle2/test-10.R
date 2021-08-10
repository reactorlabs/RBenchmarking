library(bbmle)

function_to_run <- function() {
    d <- structure(list(x = 0:10, y = c(26, 17, 13, 12, 20, 5, 9, 8, 5, 4, 8)), class = "data.frame", row.names = c(NA, -11L))
    bbmle:::mle2(minuslogl = y ~ dpois(lambda = exp(lymax)/(1 + x/exp(lhalf))), start = list(lymax = 0, lhalf = 0), data = d)
}




