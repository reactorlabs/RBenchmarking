library(prodlim)

function_to_run <- function() {
    to <- c(2, 3, 4, 3, 4)
    time <- 1:5
    from <- c(1, 1, 1, 2, 2)
    prodlim:::Hist(time = time, event = list(from, to))
}




