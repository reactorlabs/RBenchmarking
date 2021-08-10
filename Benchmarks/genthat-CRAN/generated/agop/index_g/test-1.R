library(agop)

function_to_run <- function() {
    X <- list(9, c(9, 0), c(9, 0, 0), c(9, 0, 0, 0))
    i <- 3L
    agop:::index_g(x = X[[i]])
}




