library(coin)

function_to_run <- function() {
    x <- structure(c(1L, 2L, 3L, 4L, 1L, 2L, 3L, 4L, 1L, 2L, 3L, 4L, 1L, 2L, 3L, 4L, 1L, 2L, 3L, 4L, 1L, 2L, 3L, 4L, 1L, 
        2L, 3L, 4L, 1L, 2L, 3L, 4L), .Label = c("<5000", "5000-15000", "15000-25000", ">25000"), class = c("ordered", "factor"), 
        scores = 1:4)
    minprob <- 0.1
    maxprob <- 0.9
    coin:::ofmaxstat_trafo(x = x, minprob = minprob, maxprob = maxprob)
}




