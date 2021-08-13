library(caret)

function_to_run <- function() {
    rnorm <- stats::rnorm
    caret:::spatialSign.matrix(x = matrix(rnorm(12), ncol = 3))
}




