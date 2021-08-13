

genthat_extracted_call <- function() {
    iris <- datasets::iris
    caret:::spatialSign.data.frame(x = iris[, -5])
}




