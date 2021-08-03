library(prodlim)

function_to_run <- function() {
    times <- c(0, 1, 2, 3, 7, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
    jTimes <- c(1, 2, 3, 7, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
    prodlim:::sindex(jump.times = jTimes, eval.times = times)
}




