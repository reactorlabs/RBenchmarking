

genthat_extracted_call <- function() {
    rtree <- ape::rtree
    n <- 100
    ape:::compute.brlen(phy = rtree(n = n), method = "Grafen", power = 1)
}




