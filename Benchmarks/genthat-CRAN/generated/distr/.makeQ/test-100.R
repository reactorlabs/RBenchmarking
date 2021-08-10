library(distr)

function_to_run <- function() {
    e1 <- .ext.1
    distr:::.makeQ(object = substitute(e1, list(e1 = e1)), lastCall = substitute(log(q0)), Cont = FALSE)
}




