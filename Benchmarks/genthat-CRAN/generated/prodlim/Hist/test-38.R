library(prodlim)

function_to_run <- function() {
    time <- 1:100
    event <- c(0L, 0L, 0L, 1L, 2L, 0L, 2L, 1L, 0L, 2L, 1L, 0L, 2L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 2L, 2L, 2L, 0L, 1L, 1L,
        0L, 2L, 1L, 1L, 2L, 0L, 2L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 2L, 1L, 0L, 1L, 2L, 1L, 0L, 1L, 1L, 2L, 0L, 1L, 0L, 0L,
        0L, 2L, 1L, 2L, 2L, 2L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 0L, 2L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 2L, 1L, 1L,
        0L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 0L)
    prodlim:::Hist(time = time, event = event)
}




