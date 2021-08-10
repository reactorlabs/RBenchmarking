library(fBasics)

function_to_run <- function() {
    param <- "rs"
    lambdas <- c(0.00591044980091578, -0.977679826892086, -0.125259517469846, -0.113603390487503)
    fBasics:::.qgld(p = c(0, 1), lambda1 = lambdas, param = param)
}




