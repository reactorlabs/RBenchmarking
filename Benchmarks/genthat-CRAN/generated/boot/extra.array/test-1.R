library(boot)

function_to_run <- function() {
    strata <- c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L)
    R <- 999
    n <- 32L
    m <- 1
    boot:::extra.array(n = n, R = R, m = m, strata = strata)
}




