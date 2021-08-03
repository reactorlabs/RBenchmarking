library(prodlim)

function_to_run <- function() {
    time <- 1:10
    status <- c(1, 2, 1, 2, 5, 5, 1, 1, 2, 2)
    prodlim:::Hist(time = time, event = status)
}




