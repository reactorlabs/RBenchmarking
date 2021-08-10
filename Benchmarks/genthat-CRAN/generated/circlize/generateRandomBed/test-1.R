library(circlize)

function_to_run <- function() {
    runif <- stats::runif
    circlize:::generateRandomBed(fun = function(k) runif(k))
}




