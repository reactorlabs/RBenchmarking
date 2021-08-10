library(bbmle)

function_to_run <- function() {
    trace <- FALSE
    start <- list(slope = 1)
    parnames <- NULL
    parameters <- NULL
    minuslogl <- y ~ dpois(lambda = (x + 1) * slope)
    data <- structure(list(x = 0:10, y = c(26, 17, 13, 12, 20, 5, 9, 8, 5, 4, 8)), class = "data.frame", row.names = c(NA, 
        -11L))
    bbmle:::calc_mle2_function(formula = minuslogl, parameters = parameters, start = start, parnames = parnames, data = data, 
        trace = trace)
}




