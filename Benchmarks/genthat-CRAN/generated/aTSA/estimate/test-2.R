library(aTSA)

function_to_run <- function() {
    lh <- datasets::lh
    aTSA:::estimate(x = lh, p = c(1, 3))
}




