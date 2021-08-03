library(prodlim)

function_to_run <- function() {
    termLabels <- c("factor(edema)", "age", "strata(I(log(bili) > 1))", "strata(sex)", "factor(edema):age")
    spc <- "strata"
    hit.s <- 3:4
    arguments <- NULL
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




