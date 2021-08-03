library(prodlim)

function_to_run <- function() {
    time <- 1:10
    status <- c(0, 1, 1, 0, 0, 1, 0, 0, 1, 0)
    prodlim:::Hist(time = time, event = status)
}




