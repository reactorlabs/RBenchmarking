library(deSolve)

function_to_run <- function() {
    X <- list(lwd = 2)
    i <- 1L
    deSolve:::repdots(dots = X[[i]], n = 3)
}




