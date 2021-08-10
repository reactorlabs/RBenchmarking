library(collpcm)

function_to_run <- function() {
    n <- 18L
    d <- 2
    control <- list(verbose = TRUE, sample = 2500, interval = 1, burn = 500)
    collpcm:::collpcm.control(x = control, n = n, d = d)
}




