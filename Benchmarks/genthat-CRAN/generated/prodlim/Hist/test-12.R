library(prodlim)

function_to_run <- function() {
    to <- c(2, 3, 1, 0, 2, 2, 3, 2, 0, 4)
    time <- 1:10
    from <- c(1, 1, 3, 2, 1, 4, 1, 1, 3, 1)
    prodlim:::Hist(time = time, event = list(from, to))
}




