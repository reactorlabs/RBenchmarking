

genthat_extracted_call <- function() {
    iris <- datasets::iris
    checkmate:::testList(x = as.list(iris), types = c("numeric", "factor"))
}




