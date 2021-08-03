library(prodlim)

function_to_run <- function() {
    times <- c(0, 0.35, 0.4, 0.51, 0.7, 0.73)
    jTimes <- c(0.35, 0.4, 0.51, 0.7, 0.73)
    prodlim:::sindex(jump.times = jTimes, eval.times = times)
}




