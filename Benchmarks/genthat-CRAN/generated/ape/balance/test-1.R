

genthat_extracted_call <- function() {
    rbdtree <- ape::rbdtree
    ape:::balance(phy = rbdtree(0.15, 0.1, Tmax = 35))
}




