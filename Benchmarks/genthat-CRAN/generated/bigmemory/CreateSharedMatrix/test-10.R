

genthat_extracted_call <- function() {
    typeVal <- 1
    separated <- FALSE
    rownames <- NULL
    nrow <- 5
    ncol <- 2L
    init <- NA
    colnames <- NULL
    bigmemory:::CreateSharedMatrix(row = as.double(nrow), col = as.double(ncol), colnames = as.character(colnames), rownames = as.character(rownames), 
        typeLength = as.integer(typeVal), ini = as.double(init), separated = as.logical(separated))
}




