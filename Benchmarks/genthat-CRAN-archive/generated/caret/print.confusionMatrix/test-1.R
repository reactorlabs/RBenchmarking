

genthat_extracted_call <- function() {
    x <- structure(list(positive = NULL, table = structure(c(19L, 18L, 13L, 16L, 17L, 17L, 15L, 15L, 20L), .Dim = c(3L, 3L), 
        .Dimnames = list(Prediction = c("setosa", "versicolor", "virginica"), Reference = c("setosa", "versicolor", "virginica")), 
        class = "table"), overall = structure(c(0.373333333333333, 0.06, 0.295812415226385, 0.45596435920558, 0.333333333333333, 
        0.170145214038583, 0.943220437791666), names = c("Accuracy", "Kappa", "AccuracyLower", "AccuracyUpper", "AccuracyNull", 
        "AccuracyPValue", "McnemarPValue")), byClass = structure(c(0.38, 0.34, 0.4, 0.69, 0.67, 0.7, 0.38, 0.34, 0.4, 0.69, 
        0.67, 0.7, 0.38, 0.34, 0.4, 0.38, 0.34, 0.4, 0.38, 0.34, 0.4, 0.333333333333333, 0.333333333333333, 0.333333333333333, 
        0.126666666666667, 0.113333333333333, 0.133333333333333, 0.333333333333333, 0.333333333333333, 0.333333333333333, 
        0.535, 0.505, 0.55), .Dim = c(3L, 11L), .Dimnames = list(c("Class: setosa", "Class: versicolor", "Class: virginica"), 
        c("Sensitivity", "Specificity", "Pos Pred Value", "Neg Pred Value", "Precision", "Recall", "F1", "Prevalence", "Detection Rate", 
            "Detection Prevalence", "Balanced Accuracy"))), mode = "sens_spec", dots = list()), class = "confusionMatrix")
    caret:::print.confusionMatrix(x = x)
}




