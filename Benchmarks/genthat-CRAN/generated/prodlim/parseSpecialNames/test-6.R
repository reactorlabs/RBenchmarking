library(prodlim)

function_to_run <- function() {
    termLabels <- c("X1", "cluster(X3)", "X4")
    spc <- "cluster"
    hit.s <- 2L
    arguments <- NULL
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




