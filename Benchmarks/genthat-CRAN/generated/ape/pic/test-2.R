

genthat_extracted_call <- function() {
    Y <- structure(c(4.74493, 3.3322, 3.3673, 2.89037, 2.30259), names = c("Homo", "Pongo", "Macaca", "Ateles", "Galago"))
    tree.primates <- structure(list(edge = structure(c(6L, 7L, 8L, 9L, 9L, 8L, 7L, 6L, 7L, 8L, 9L, 1L, 2L, 3L, 4L, 5L), .Dim = c(8L, 
        2L)), edge.length = c(0.38, 0.13, 0.28, 0.21, 0.21, 0.49, 0.62, 1), Nnode = 4L, tip.label = c("Homo", "Pongo", "Macaca", 
        "Ateles", "Galago")), class = "phylo", order = "cladewise")
    ape:::pic(x = Y, phy = tree.primates)
}




