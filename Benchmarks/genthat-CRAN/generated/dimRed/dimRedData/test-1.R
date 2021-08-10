library(dimRed)

function_to_run <- function() {
    iris <- datasets::iris
    dimRed:::dimRedData(iris[, 1:4])
}




