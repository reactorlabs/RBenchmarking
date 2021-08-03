library(prodlim)

function_to_run <- function() {
    termLabels <- c("x", "SP(z)", "factor(v)")
    spc <- "SP"
    hit.s <- 2L
    arguments <- NULL
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




