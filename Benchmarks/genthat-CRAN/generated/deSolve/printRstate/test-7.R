library(deSolve)

function_to_run <- function() {
    rstate <- c(1, 1, 100.785995725064, 0, NA)
    deSolve:::printRstate(rstate = rstate)
}




