

genthat_extracted_call <- function() {
    x <- c(101.370958447147, 99.4353018286039, 100.363128411337, 100.632862604961, 100.404268323141, 99.8938754839085, 101.511521997439, 
        99.9053409615869, 102.018423713877, 99.9372859009476, 101.304869654223, 102.286645392701, 98.6111392988877, 99.7212112331826, 
        99.8666786636063, 100.63595039807, 99.7157470785839, 97.3435445790952, 97.5595330714245, 101.32011334573, 99.6933614059215, 
        98.21869156602, 99.8280826442404)
    phyInit <- structure(list(edge = structure(c(24L, 25L, 26L, 26L, 25L, 27L, 28L, 28L, 27L, 24L, 29L, 29L, 30L, 30L, 31L, 
        32L, 32L, 33L, 34L, 34L, 33L, 35L, 35L, 31L, 36L, 36L, 37L, 37L, 38L, 38L, 39L, 40L, 41L, 41L, 40L, 42L, 42L, 39L, 
        43L, 44L, 44L, 45L, 45L, 43L, 25L, 26L, 1L, 2L, 27L, 28L, 3L, 4L, 5L, 29L, 6L, 30L, 7L, 31L, 32L, 8L, 33L, 34L, 9L, 
        10L, 35L, 11L, 12L, 36L, 13L, 37L, 14L, 38L, 15L, 39L, 40L, 41L, 16L, 17L, 42L, 18L, 19L, 43L, 44L, 20L, 45L, 21L, 
        22L, 23L), .Dim = c(44L, 2L)), Nnode = 22L, tip.label = c("Struthioniformes", "Tinamiformes", "Craciformes", "Galliformes", 
        "Anseriformes", "Turniciformes", "Piciformes", "Galbuliformes", "Bucerotiformes", "Upupiformes", "Trogoniformes", 
        "Coraciiformes", "Coliiformes", "Cuculiformes", "Psittaciformes", "Apodiformes", "Trochiliformes", "Musophagiformes", 
        "Strigiformes", "Columbiformes", "Gruiformes", "Ciconiiformes", "Passeriformes"), edge.length = c(2.1, 4.1, 21.8, 
        21.8, 3, 1.3, 21.6, 21.6, 22.9, 1, 27, 0.7, 26.3, 1.3, 0.6, 24.4, 1, 2.6, 20.8, 20.8, 1.3, 22.1, 22.1, 0.5, 24.5, 
        0.8, 23.7, 0.6, 23.1, 0.6, 0.6, 0.6, 21.3, 21.3, 1.5, 20.4, 20.4, 0.9, 0.8, 20.8, 0.7, 20.1, 20.1, 21.6)), class = "phylo")
    ape:::glsBM(phy = phyInit, x = x, CI = F)
}




