library(caret)

function_to_run <- function() {
    iris <- datasets::iris
    caret:::knn3.formula(formula = Species ~ ., data = iris)
}




