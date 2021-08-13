

genthat_extracted_call <- function() {
    sparse <- FALSE
    levels <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
    caret:::.RDiag(nms = levels, sparse = sparse)
}




