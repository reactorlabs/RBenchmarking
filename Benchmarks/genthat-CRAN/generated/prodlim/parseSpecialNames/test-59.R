library(prodlim)

function_to_run <- function() {
    termLabels <- c("age", "prop(factor(edema))", "timevar(sex, test = 0)", "prop(bili, power = 1)")
    spc <- "prop"
    hit.s <- c(2L, 4L)
    arguments <- NULL
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




