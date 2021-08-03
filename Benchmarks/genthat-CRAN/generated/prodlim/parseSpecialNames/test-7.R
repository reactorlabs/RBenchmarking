library(prodlim)

function_to_run <- function() {
    termLabels <- c("x", "treat(z, power = 2)", "treat(v, power = -1)")
    spc <- "treat"
    hit.s <- 2:3
    arguments <- list(treat = list("power"))
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




