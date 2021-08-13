library(caret)

function_to_run <- function() {
    neg <- c("setosa", "versicolor")
    data <- structure(c(18L, 16L, 16L, 20L, 17L, 13L, 12L, 17L, 21L), .Dim = c(3L, 3L), .Dimnames = list(Prediction = c("setosa", 
        "versicolor", "virginica"), Reference = c("setosa", "versicolor", "virginica")), class = "table")
    caret:::specificity.table(data = data, negative = neg)
}




