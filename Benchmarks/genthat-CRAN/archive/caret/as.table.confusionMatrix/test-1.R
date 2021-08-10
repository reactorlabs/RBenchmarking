library(caret)

function_to_run <- function() {
    results <- structure(list(positive = "abnormal", table = structure(c(231L, 27L, 32L, 54L), .Dim = c(2L, 2L), .Dimnames = list(pred = c("abnormal", 
        "normal"), truth = c("abnormal", "normal")), class = "table"), overall = structure(c(0.828488372093023, 0.533596837944664, 
        0.784413437985499, 0.866798520709829, 0.75, 0.00030969833403687, 0.602537006105314), names = c("Accuracy", "Kappa", 
        "AccuracyLower", "AccuracyUpper", "AccuracyNull", "AccuracyPValue", "McnemarPValue")), byClass = structure(c(0.895348837209302, 
        0.627906976744186, 0.878326996197719, 0.666666666666667, 0.878326996197719, 0.895348837209302, 0.886756238003839, 
        0.75, 0.671511627906977, 0.76453488372093, 0.761627906976744), names = c("Sensitivity", "Specificity", "Pos Pred Value", 
        "Neg Pred Value", "Precision", "Recall", "F1", "Prevalence", "Detection Rate", "Detection Prevalence", "Balanced Accuracy")), 
        mode = "sens_spec", dots = list()), class = "confusionMatrix")
    caret:::as.table.confusionMatrix(x = results)
}




