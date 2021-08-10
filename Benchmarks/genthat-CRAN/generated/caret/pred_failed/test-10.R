library(caret)

function_to_run <- function() {
    predicted <- structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 2L, 3L, 3L), .Label = c("setosa", "versicolor", 
        "virginica"), class = "factor")
    caret:::pred_failed(x = predicted)
}




