library(ffbase)

function_to_run <- function() {
    runif <- stats::runif
    ffbase:::ffrandom(n = 10, rfun = runif)
}




