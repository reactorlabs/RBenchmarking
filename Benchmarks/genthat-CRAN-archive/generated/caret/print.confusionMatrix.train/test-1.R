

genthat_extracted_call <- function() {
    x <- structure(list(table = structure(c(5, 0, 0, 0, 4.8, 0.2, 0, 0.3, 4.7), .Dim = c(3L, 3L), .Dimnames = list(Prediction = c("setosa", 
        "versicolor", "virginica"), Reference = c("setosa", "versicolor", "virginica")), class = "table"), norm = "average", 
        B = 10L, text = "Cross-Validated (10 fold) Confusion Matrix"), class = "confusionMatrix.train")
    caret:::print.confusionMatrix.train(x = x)
}




