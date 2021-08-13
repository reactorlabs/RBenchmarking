

genthat_extracted_call <- function() {
    which <- NULL
    varnames <- "Aphid"
    obs <- list(dat = NULL, pos = NULL, name = NULL, length = 0)
    nspec <- 1
    deSolve:::WhichVarObs(Which = which, obs = obs, nvar = nspec, varnames = varnames, remove1st = FALSE)
}




