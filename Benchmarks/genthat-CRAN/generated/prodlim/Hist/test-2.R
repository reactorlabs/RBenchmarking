library(prodlim)

function_to_run <- function() {
    time <- 1:7
    status <- c(0, 1, 1, 0, 0, 0, 1)
    prodlim:::Hist(time = time, event = status)
}




