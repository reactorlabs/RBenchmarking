library(deldir)

function_to_run <- function() {
    y <- c(1, 1, 0.688664, 0.837013)
    x <- c(0.181481, 0, 0, 0.270955)
    ry <- c(0, 1)
    rx <- c(0, 1)
    jnext <- 3
    j <- 2L
    deldir:::mid.in(x = x[c(j, jnext)], y = y[c(j, jnext)], rx = rx, ry = ry)
}




