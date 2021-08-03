library(prodlim)

function_to_run <- function() {
    termLabels <- c("age", "factor(edema)", "timevar(sex, test = 0)", "bili")
    spc <- "timevar"
    hit.s <- 3L
    arguments <- NULL
    prodlim:::parseSpecialNames(x = termLabels[hit.s], special = spc, arguments = arguments[[spc]])
}




