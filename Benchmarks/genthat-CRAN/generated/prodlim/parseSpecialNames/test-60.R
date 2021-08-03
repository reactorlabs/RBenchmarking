library(prodlim)

function_to_run <- function() {
    termLabels <- c("prop(age)", "prop(factor(edema))", "timevar(sex, test = 0)", "prop(bili, power = 1)")
    spc <- "prop"
    hit.s <- c(1L, 2L, 4L)
    arguments <- list(prop = list(power = 0), timevar = list(test = 0))
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




