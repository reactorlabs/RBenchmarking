

genthat_extracted_call <- function() {
    iris <- datasets::iris
    caret:::knn3.formula(formula = Species ~ ., data = iris)
}




