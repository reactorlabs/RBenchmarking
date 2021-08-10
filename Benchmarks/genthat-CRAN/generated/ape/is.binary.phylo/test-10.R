library(ape)

function_to_run <- function() {
    rtree <- ape::rtree
    ape:::is.binary.phylo(phy = rtree(10))
}




