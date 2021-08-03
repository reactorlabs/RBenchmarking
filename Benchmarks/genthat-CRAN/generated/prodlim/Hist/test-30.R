library(prodlim)

function_to_run <- function() {
    time <- 1:10
    status <- c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L)
    prodlim:::Hist(time = time, event = status != 0)
}




