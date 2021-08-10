library(effects)

function_to_run <- function() {
    args <- list(row = 1L, col = 1L, nrow = 2, ncol = 2, more = TRUE)
    effects:::isFALSE(x = args)
}




