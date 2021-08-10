library(deSolve)

function_to_run <- function() {
    xWhich <- 1L
    varnames <- "Aphid"
    obs <- list(dat = NULL, pos = NULL, name = NULL, length = 0)
    deSolve:::updateObs(obs = obs, varnames = varnames, xWhich = xWhich)
}




