library(bigmemory)

function_to_run <- function() {
    nc <- 3L
    cols <- -3
    bigmemory:::CCleanIndices(indices = as.double(cols), rc = as.double(nc))
}




