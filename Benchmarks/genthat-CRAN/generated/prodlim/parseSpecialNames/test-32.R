library(prodlim)

function_to_run <- function() {
    termLabels <- c("X1", "cluster(patnr)")
    spc <- "cluster"
    hit.s <- 2L
    arguments <- list(strata = NULL, NN = NULL, cluster = NULL)
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




