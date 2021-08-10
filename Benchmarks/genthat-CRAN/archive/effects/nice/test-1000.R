library(effects)

function_to_run <- function() {
    X <- c(0, 8, 16, 24)
    i <- 3L
    effects:::nice(x = X[[i]], direction = "round", lead.digits = 1)
}




