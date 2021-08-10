library(caret)

function_to_run <- function() {
    prevalence <- NULL
    positive <- NULL
    mode <- "sens_spec"
    classTable <- structure(c(19L, 18L, 13L, 16L, 17L, 17L, 15L, 15L, 20L), .Dim = c(3L, 3L), .Dimnames = list(Prediction = c("setosa", 
        "versicolor", "virginica"), Reference = c("setosa", "versicolor", "virginica")), class = "table")
    caret:::confusionMatrix.table(data = classTable, positive = positive, prevalence = prevalence, mode = mode)
}




