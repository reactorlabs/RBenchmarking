library(BBmisc)

function_to_run <- function() {
    xs <- 1:10
    BBmisc:::chunk(x = xs, n.chunks = 2, shuffle = TRUE)
}




