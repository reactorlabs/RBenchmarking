library(BASIX)

function_to_run <- function() {
    vec <- c(1, 3, 5, 7, 9, 10)
    to <- 8
    from <- 5
    BASIX:::BASIX.find.interval(vec = vec, from = from, to = to, start = 1)
}




