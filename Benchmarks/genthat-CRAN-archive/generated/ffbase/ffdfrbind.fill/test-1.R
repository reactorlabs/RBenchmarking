library(ffbase)

function_to_run <- function() {
    iris <- datasets::iris
    as.ffdf <- ff::as.ffdf
    ffbase:::ffdfrbind.fill(as.ffdf(iris), as.ffdf(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length")]))
}




