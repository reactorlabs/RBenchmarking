

genthat_extracted_call <- function() {
    iris <- datasets::iris
    caret:::confusionMatrix.default(data = iris$Species, reference = sample(iris$Species))
}




