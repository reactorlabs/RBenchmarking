library(deSolve)

function_to_run <- function() {
    Dotpoints <- list(type = "l")
    deSolve:::extractdots(dots = Dotpoints, index = 1)
}




