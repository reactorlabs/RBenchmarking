library(ape)

function_to_run <- function() {
    x <- 0:10
    ape:::dbd(x = x, lambda = 0.1, mu = 0.05, t = 10, conditional = TRUE)
}




