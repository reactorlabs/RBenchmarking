library(DRR)

function_to_run <- function() {
    nobs <- 1000L
    nblocks <- 4
    DRR:::make_blocks(nobs = nobs, nblocks = nblocks)
}




