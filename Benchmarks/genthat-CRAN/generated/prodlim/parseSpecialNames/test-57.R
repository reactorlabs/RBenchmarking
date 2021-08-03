library(prodlim)

function_to_run <- function() {
    termLabels <- c("age", "prop(factor(edema))", "timevar(sex, test = 0)", "prop(bili, power = 1)", "prop(albumin)")
    spc <- "prop"
    hit.s <- c(2L, 4L, 5L)
    arguments <- list(prop = list(power = 0), timevar = list(test = 0))
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




