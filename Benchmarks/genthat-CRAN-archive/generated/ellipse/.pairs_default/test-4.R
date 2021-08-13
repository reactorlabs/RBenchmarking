library(ellipse)

function_to_run <- function() {
    iris <- datasets::iris
    ellipse:::.pairs_default(x = iris[-5], log = "xy")
}




