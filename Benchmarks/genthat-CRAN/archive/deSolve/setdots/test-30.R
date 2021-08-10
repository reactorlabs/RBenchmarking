library(deSolve)

function_to_run <- function() {
    np <- 2L
    ldots <- list()
    deSolve:::setdots(dots = ldots, n = np)
}




