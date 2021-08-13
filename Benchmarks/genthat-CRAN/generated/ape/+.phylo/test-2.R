

genthat_extracted_call <- function() {
    tree.bird2 <- structure(list(edge = structure(c(19L, 19L, 20L, 20L, 21L, 22L, 22L, 23L, 24L, 24L, 23L, 25L, 25L, 21L, 
        26L, 26L, 27L, 27L, 28L, 28L, 29L, 30L, 31L, 31L, 30L, 32L, 32L, 29L, 33L, 34L, 34L, 35L, 35L, 33L, 1L, 20L, 2L, 
        21L, 22L, 3L, 23L, 24L, 4L, 5L, 25L, 6L, 7L, 26L, 8L, 27L, 9L, 28L, 10L, 29L, 30L, 31L, 11L, 12L, 32L, 13L, 14L, 
        33L, 34L, 15L, 35L, 16L, 17L, 18L), .Dim = c(34L, 2L)), edge.length = c(27, 0.7, 26.3, 1.3, 0.6, 24.4, 1, 2.6, 20.8, 
        20.8, 1.3, 22.1, 22.1, 0.5, 24.5, 0.8, 23.7, 0.6, 23.1, 0.6, 0.6, 0.6, 21.3, 21.3, 1.5, 20.4, 20.4, 0.9, 0.8, 20.8, 
        0.7, 20.1, 20.1, 21.6), Nnode = 17L, tip.label = c("Turniciformes", "Piciformes", "Galbuliformes", "Bucerotiformes", 
        "Upupiformes", "Trogoniformes", "Coraciiformes", "Coliiformes", "Cuculiformes", "Psittaciformes", "Apodiformes", 
        "Trochiliformes", "Musophagiformes", "Strigiformes", "Columbiformes", "Gruiformes", "Ciconiiformes", "Passeriformes"), 
        root.edge = 1), class = "phylo", order = "cladewise")
    tree.bird1 <- structure(list(edge = structure(c(6L, 7L, 7L, 6L, 8L, 9L, 9L, 8L, 7L, 1L, 2L, 8L, 9L, 3L, 4L, 5L), .Dim = c(8L, 
        2L)), edge.length = c(4.1, 21.8, 21.8, 3, 1.3, 21.6, 21.6, 22.9), Nnode = 4L, tip.label = c("Struthioniformes", "Tinamiformes", 
        "Craciformes", "Galliformes", "Anseriformes"), root.edge = 2.1), class = "phylo", order = "cladewise")
    ape:::`+.phylo`(x = tree.bird1, y = tree.bird2)
}




