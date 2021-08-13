library(car)

function_to_run <- function() {
    X <- c(17.0139304246945, 17.0139304246945, 46.2486579041134, 125.71688637137, 125.71688637137, 125.71688637137, 341.733927753746)
    i <- 2L
    car:::nice(x = X[[i]], direction = "round", lead.digits = 1)
}




