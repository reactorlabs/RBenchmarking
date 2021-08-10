library(distr)

function_to_run <- function() {
    e2 <- .ext.1
    e1 <- .ext.2
    distr:::.makeD(object = substitute(e1, list(e1 = e1)), argList = substitute(alist(x = x/e2), list(e2 = e2)), stand = abs(e2))
}




