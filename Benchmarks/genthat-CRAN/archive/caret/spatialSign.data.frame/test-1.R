library(caret)

function_to_run <- function() {
    iris <- datasets::iris
    caret:::spatialSign.data.frame(x = iris[, -5])
}




