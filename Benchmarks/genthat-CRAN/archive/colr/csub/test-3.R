library(colr)

function_to_run <- function() {
    iris <- datasets::iris
    colr:::csub(x = iris, pattern = "\\.", replacement = "-")
}




