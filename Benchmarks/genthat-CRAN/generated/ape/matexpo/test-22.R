library(ape)

function_to_run <- function() {
    t <- 1
    m <- structure(c(-0.3, 0.1, 0.1, 0.1, 0.1, -0.3, 0.1, 0.1, 0.1, 0.1, -0.3, 0.1, 0.1, 0.1, 0.1, -0.3), .Dim = c(4L, 4L))
    ape:::matexpo(x = m * t)
}




