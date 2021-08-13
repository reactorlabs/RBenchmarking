library(caret)

function_to_run <- function() {
    data <- structure(list(pred = structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), .Label = c("setosa", 
        "versicolor", "virginica"), class = "factor"), obs = structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 
        3L, 3L, 3L), .Label = c("setosa", "versicolor", "virginica"), class = "factor"), rowIndex = c(1L, 22L, 32L, 33L, 
        40L, 62L, 67L, 80L, 85L, 89L, 104L, 109L, 128L, 146L, 147L)), row.names = c(NA, -15L), class = "data.frame")
    caret:::postResample(pred = data[, "pred"], obs = data[, "obs"])
}




