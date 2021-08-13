

genthat_extracted_call <- function() {
    x <- c(4L, 2L, 7L, 11L, 11L, 3L, 1L, 2L, 9L, 2L, 2L, 2L, 1L, 0L, 1L, 2L, 2L, 0L, 0L, 3L, 1L, 1L, 2L, 2L, 1L, 0L, 0L, 
        0L, 0L, 6L, 4L, 5L, 4L, 3L, 3L, 6L, 4L, 5L, 2L, 2L, 2L, 6L, 3L, 9L, 6L, 3L, 3L, 10L, 6L, 5L, 3L, 2L, 3L, 5L, 3L, 
        7L, 9L, 0L, 0L, 1L, 2L, 2L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 3L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2L, 1L, 
        1L, 0L)
    minprob <- 0.1
    maxprob <- 0.9
    coin:::maxstat_trafo(x = x, minprob = minprob, maxprob = maxprob)
}




