library(ff)

function_to_run <- function() {
    v <- "integer"
    n <- 8L
    BATCHBYTES <- 536870912
    ff:::ffindexordersize(length = n, vmode = v, BATCHBYTES = BATCHBYTES)
}




