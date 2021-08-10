library(bigmemory)

function_to_run <- function() {
    x <- .ext.1
    retList <- list(structure(c(2L, 3L, 4L, 5L, 6L, 12L, 13L, 14L, 15L, 16L, 22L, 23L, 24L, 25L, 26L), .Dim = c(5L, 3L)), 
        NULL, c("A", "B", "C"))
    i <- c(2, 3, 4, 5, 6)
    drop <- TRUE
    bigmemory:::.addDimnames(retList = retList, nrow = length(i), ncol = ncol(x), drop = drop)
}




