library(DPBBM)

function_to_run <- function() {
    L <- c(1, 1, 2, 1, 1, 2, 2)
    C <- c(2, 2, 1, 2, 2, 1, 1)
    alpha <- 0.5
    DPBBM:::BCubed_metric(L = L, C = C, alpha = alpha)
}




