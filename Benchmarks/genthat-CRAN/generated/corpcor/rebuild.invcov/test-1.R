library(corpcor)

function_to_run <- function() {
    tmp <- list(pr = structure(c(1, 0.5, 0.5, 1), .Dim = c(2L, 2L)), pv = c(1.5, 2.25))
    corpcor:::rebuild.invcov(pr = tmp$pr, pv = tmp$pv)
}




