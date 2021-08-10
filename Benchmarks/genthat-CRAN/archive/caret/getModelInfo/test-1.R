library(caret)

function_to_run <- function() {
    method <- "knn"
    caret:::getModelInfo(model = method, regex = FALSE)
}




