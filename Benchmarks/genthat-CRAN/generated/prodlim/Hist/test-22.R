library(prodlim)

function_to_run <- function() {
    to <- c(2, 1, 3, 4, 1)
    time <- 1:5
    from <- c(1, 2, 1, 3, 4)
    prodlim:::Hist(time = time, event = list(from = from, to = to))
}




