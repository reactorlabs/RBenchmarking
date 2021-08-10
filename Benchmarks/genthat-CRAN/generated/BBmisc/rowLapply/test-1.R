library(BBmisc)

function_to_run <- function() {
    iris <- datasets::iris
    BBmisc:::rowLapply(df = iris, fun = function(x) x$Sepal.Length + x$Sepal.Width)
}




