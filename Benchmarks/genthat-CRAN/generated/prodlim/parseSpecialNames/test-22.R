library(prodlim)

function_to_run <- function() {
    termLabels <- "group2"
    spc <- "strata"
    hit.s <- integer(0)
    arguments <- list(strata = NULL, NN = NULL, cluster = NULL)
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




