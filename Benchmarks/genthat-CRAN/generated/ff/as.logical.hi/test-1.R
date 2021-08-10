library(ff)

function_to_run <- function() {
    as.hi <- ff::as.hi
    ff:::as.logical.hi(x = as.hi(c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE)))
}




