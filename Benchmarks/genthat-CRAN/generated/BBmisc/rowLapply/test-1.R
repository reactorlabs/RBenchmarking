

genthat_extracted_call <- function() {
    iris <- datasets::iris
    BBmisc:::rowLapply(df = iris, fun = function(x) x$Sepal.Length + x$Sepal.Width)
}




