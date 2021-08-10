library(ape)

function_to_run <- function() {
    rtree <- ape::rtree
    n <- 100
    ape:::compute.brlen(phy = rtree(n = n), method = "Grafen", power = 1)
}




