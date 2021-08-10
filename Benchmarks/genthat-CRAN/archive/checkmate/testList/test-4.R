library(checkmate)

function_to_run <- function() {
    iris <- datasets::iris
    checkmate:::testList(x = as.list(iris), types = c("numeric", "factor"))
}




