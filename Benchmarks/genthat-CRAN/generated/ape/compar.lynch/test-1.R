library(ape)

function_to_run <- function() {
    Y <- c(4.74493, 3.3322, 3.3673, 2.89037, 2.30259)
    X <- c(4.09434, 3.61092, 2.37024, 2.02815, -1.46968)
    vcv.phylo <- ape::vcv.phylo
    tree.primates <- structure(list(edge = structure(c(6L, 7L, 8L, 9L, 9L, 8L, 7L, 6L, 7L, 8L, 9L, 1L, 2L, 3L, 4L, 5L), .Dim = c(8L, 
        2L)), edge.length = c(0.38, 0.13, 0.28, 0.21, 0.21, 0.49, 0.62, 1), Nnode = 4L, tip.label = c("Homo", "Pongo", "Macaca", 
        "Ateles", "Galago")), class = "phylo", order = "cladewise")
    ape:::compar.lynch(x = cbind(X, Y), G = vcv.phylo(tree.primates, cor = TRUE))
}




