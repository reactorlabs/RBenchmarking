library(prodlim)

function_to_run <- function() {
    times <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    jTimes <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    prodlim:::sindex(jump.times = jTimes, eval.times = times)
}




