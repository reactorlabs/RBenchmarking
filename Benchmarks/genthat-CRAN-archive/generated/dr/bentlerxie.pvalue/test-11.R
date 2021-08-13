library(dr)

function_to_run <- function() {
    f <- 6.31806346617003
    coef <- c(0.520739323574926, 0.119984732004048)
    dr:::bentlerxie.pvalue(coef = coef, f = f)
}




