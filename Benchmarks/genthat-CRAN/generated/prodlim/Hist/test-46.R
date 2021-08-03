library(prodlim)

function_to_run <- function() {
    time <- c(1, 1, 5, 5, 2, 7, 9)
    status <- c(1, 0, 1, 0, 1, 1, 0)
    prodlim:::Hist(time = time, event = status)
}




