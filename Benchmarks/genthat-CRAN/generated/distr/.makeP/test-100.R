library(distr)

function_to_run <- function() {
    e1 <- .ext.1
    distr:::.makeP(object = substitute(e1, list(e1 = e1)), argList = substitute(alist(q = log(q * (q > 0) + (q <= 0)))), 
        fac = substitute((q > 0)), fac2 = substitute((q <= 0) & !lower.tail))
}




