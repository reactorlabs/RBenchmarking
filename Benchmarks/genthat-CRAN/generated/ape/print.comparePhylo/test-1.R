

genthat_extracted_call <- function() {
    x <- structure(list(messages = c("=> Comparing c with d.", "Both trees have the same number of tips: 5.", "Both trees have the same tip labels.", 
        "Both trees have the same number of nodes: 3.", "Both trees are unrooted.", "Both trees are not ultrametric.", "No split in common.")), 
        class = "comparePhylo")
    ape:::print.comparePhylo(x = x)
}




