library(dummies)

function_to_run <- function() {
    iris <- datasets::iris
    dummies:::dummy.data.frame(data = iris)
}




