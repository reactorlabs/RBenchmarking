library(caret)

function_to_run <- function() {
    prev <- 0.333333333333333
    neg <- c("setosa", "virginica")
    data <- structure(c(19L, 18L, 13L, 16L, 17L, 17L, 15L, 15L, 20L), .Dim = c(3L, 3L), .Dimnames = list(Prediction = c("setosa", 
        "versicolor", "virginica"), Reference = c("setosa", "versicolor", "virginica")), class = "table")
    caret:::negPredValue.table(data = data, negative = neg, prevalence = prev)
}




