library(prodlim)

function_to_run <- function() {
    time <- c(0.35, 0.4, 0.51, 0.51, 0.7, 0.73)
    status <- c(0, 1, 1, 0, 0, 1)
    prodlim:::Hist(time = time, event = status)
}




