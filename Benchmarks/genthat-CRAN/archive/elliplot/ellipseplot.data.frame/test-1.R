library(elliplot)

function_to_run <- function() {
    iris <- datasets::iris
    elliplot:::ellipseplot.data.frame(x = iris[c(5, 1)], y = iris[c(5, 2)])
}




