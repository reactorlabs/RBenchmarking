library(caret)

function_to_run <- function() {
    iris <- datasets::iris
    caret:::confusionMatrix.default(data = iris$Species, reference = sample(iris$Species))
}




