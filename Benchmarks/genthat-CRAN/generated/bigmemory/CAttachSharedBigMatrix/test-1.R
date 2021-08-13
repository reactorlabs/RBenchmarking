

genthat_extracted_call <- function() {
    typeLength <- 4
    readOnly <- FALSE
    info <- list(sharedType = "SharedMemory", sharedName = "VWoRHAMhIKxLWnyWYgyDVhZX", totalRows = 3L, totalCols = 3L, rowOffset = c(0, 
        3), colOffset = c(0, 3), nrow = 3, ncol = 3, rowNames = NULL, colNames = NULL, type = "integer", separated = FALSE)
    bigmemory:::CAttachSharedBigMatrix(sharedName = as.character(info$sharedName), rows = as.double(info$totalRows), cols = as.double(info$totalCols), 
        rowNames = as.character(info$rowNames), colNames = as.character(info$colNames), typeLength = as.integer(typeLength), 
        separated = as.logical(info$separated), readOnly = as.logical(readOnly))
}




