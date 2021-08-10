library(boot)

function_to_run <- function() {
    strata <- c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L)
    R <- 999
    n <- 26L
    boot:::ordinary.array(n = n, R = R, strata = strata)
}




