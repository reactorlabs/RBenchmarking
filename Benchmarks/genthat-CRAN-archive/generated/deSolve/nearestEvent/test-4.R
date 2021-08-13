library(deSolve)

function_to_run <- function() {
    times <- 1:365
    eventtimes <- c(50.1, 200, 210.5)
    deSolve:::nearestEvent(times = times, eventtimes = eventtimes)
}




