library(deSolve)

function_to_run <- function() {
    Which <- "O2"
    varnames <- c("time", "O2", "depo")
    deSolve:::selectvar(Which = Which, var = varnames)
}




