library(caret)

function_to_run <- function() {
    sparse <- FALSE
    levels <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
    caret:::.RDiag(nms = levels, sparse = sparse)
}




