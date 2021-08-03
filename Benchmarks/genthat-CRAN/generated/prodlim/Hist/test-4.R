library(prodlim)

function_to_run <- function() {
    to <- c(2, 3, 1, 2, 4, 2, 3, 2, 4, 4)
    time <- 1:10
    from <- c(1, 1, 3, 1, 2, 4, 1, 1, 2, 1)
    prodlim:::Hist(time = time, event = list(from, to))
}




