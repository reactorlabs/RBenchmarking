library(distr)

function_to_run <- function() {
    obj <- .ext.1
    distr:::.modifyqgaps(pfun = obj@p, qfun = obj@q, gaps = obj@gaps)
}




