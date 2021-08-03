library(prodlim)

function_to_run <- function() {
    time <- c(0, 1, 2, 3, 4, 0, 1, 2, 0, 1)
    id <- c(1, 1, 1, 1, 2, 2, 2, 2, 3, 3)
    event <- c(1, 2, 3, 0, 1, 2, 4, 2, 1, 2)
    prodlim:::Hist(time = time, event = event, id = id)
}




