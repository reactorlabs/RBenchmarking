library(checkmate)

function_to_run <- function() {
    iris <- datasets::iris
    checkmate:::testDataFrame(x = iris)
}




