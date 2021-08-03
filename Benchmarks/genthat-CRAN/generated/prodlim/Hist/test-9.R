library(prodlim)

function_to_run <- function() {
    time <- 1:10
    event <- c(1, 2, 0, 3, 0, 1, 2, 1, 2, 1)
    prodlim:::Hist(time = time, event = event)
}




