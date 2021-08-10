library(deSolve)

function_to_run <- function() {
    np <- 1L
    ldots <- list(type = "l", mfrow = NULL)
    ask <- NULL
    deSolve:::setplotpar(ldots = ldots, nv = np, ask = ask)
}




