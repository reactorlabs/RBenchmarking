library(prodlim)

function_to_run <- function() {
    time <- 10:20
    status <- c(1, 0, 2, 2, 0, 0, 1, 2, 0, 2, 0)
    entry <- c(7, 3, 11, 12, 11, 2, 1, 7, 15, 17, 3)
    prodlim:::Hist(time = time, event = status, entry = entry)
}




