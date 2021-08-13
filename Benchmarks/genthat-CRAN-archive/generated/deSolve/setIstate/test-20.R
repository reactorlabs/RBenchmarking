library(deSolve)

function_to_run <- function() {
    istate <- c(-2L, 10L, 1L, 1L, 1L, 0L, 1L)
    iout <- c(1, 3, 4, 2, 13, 13, 10)
    iin <- 1:7
    deSolve:::setIstate(istate = istate, iin = iin, iout = iout)
}




