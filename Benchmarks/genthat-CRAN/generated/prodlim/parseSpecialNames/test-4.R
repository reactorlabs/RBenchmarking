library(prodlim)

function_to_run <- function() {
    termLabels <- c("prop(X1)", "cluster(X3)", "X4")
    spc <- "prop"
    hit.s <- 1L
    arguments <- NULL
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




