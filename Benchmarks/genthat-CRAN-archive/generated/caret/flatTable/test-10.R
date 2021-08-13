

genthat_extracted_call <- function() {
    tmp <- structure(list(pred = structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), .Label = c("setosa", 
        "versicolor", "virginica"), class = "factor"), obs = structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 
        3L, 3L, 3L), .Label = c("setosa", "versicolor", "virginica"), class = "factor"), rowIndex = c(10L, 19L, 34L, 38L, 
        43L, 53L, 69L, 81L, 93L, 98L, 102L, 116L, 126L, 133L, 148L)), row.names = c(NA, -15L), class = "data.frame")
    caret:::flatTable(pred = tmp$pred, obs = tmp$obs)
}




