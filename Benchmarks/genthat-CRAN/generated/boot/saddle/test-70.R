library(boot)

function_to_run <- function() {
    city <- boot::city
    boot:::saddle(A = city$x - 1.25 * city$u, u = 0)
}




