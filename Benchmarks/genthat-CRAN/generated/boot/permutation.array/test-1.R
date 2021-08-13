

genthat_extracted_call <- function() {
    strata <- c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L)
    R <- 40
    n <- 10L
    boot:::permutation.array(n = n, R = R, strata = strata)
}




