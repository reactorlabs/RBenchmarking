library(ff)

function_to_run <- function() {
    x <- 1:60
    dim <- c(5L, 3L, 4L)
    ff:::vectorIndex2arrayIndex(x = x, dim = dim)
}




