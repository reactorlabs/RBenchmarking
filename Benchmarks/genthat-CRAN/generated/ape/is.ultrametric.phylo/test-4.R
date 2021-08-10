library(ape)

function_to_run <- function() {
    rtree <- ape::rtree
    ape:::is.ultrametric.phylo(phy = rtree(10))
}




