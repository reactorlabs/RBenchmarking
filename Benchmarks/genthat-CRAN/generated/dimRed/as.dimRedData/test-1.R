library(dimRed)

function_to_run <- function() {
    iris <- datasets::iris
    dimRed:::as.dimRedData(formula = Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, iris)
}




