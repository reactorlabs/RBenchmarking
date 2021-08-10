library(deSolve)

function_to_run <- function() {
    times <- 1:365
    eventtime <- c(50.1, 200, 210.5)
    deSolve:::cleanEventTimes(times = times, eventtimes = eventtime)
}




