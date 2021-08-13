

genthat_extracted_call <- function() {
    iris <- datasets::iris
    dimRed:::as.dimRedData(formula = Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, iris)
}




