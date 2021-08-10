library(elliplot)

function_to_run <- function() {
    iris <- datasets::iris
    elliplot:::ellipseplot.numeric(x = iris[, 1], y = iris[, 2], xlab = "Sepal.Length", ylab = "Sepal.Width")
}




