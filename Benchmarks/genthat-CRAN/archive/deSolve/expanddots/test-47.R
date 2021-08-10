library(deSolve)

function_to_run <- function() {
    nx <- 1
    ldots <- list()
    deSolve:::expanddots(dots = ldots$bg, default = 1:nx, n = nx)
}




