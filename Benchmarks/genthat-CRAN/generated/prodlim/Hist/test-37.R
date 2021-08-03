library(prodlim)

function_to_run <- function() {
    time <- c(1, 2, 3, 3, 3, 4, 5, 5, 6, 7)
    status <- c(1, 0, 0, 1, 0, 1, 0, 1, 1, 0)
    prodlim:::Hist(time = time, event = status)
}




