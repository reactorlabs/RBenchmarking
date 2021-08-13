

genthat_extracted_call <- function() {
    lwds <- c(10, 3.97297297297297, 1, 2.18018018018018, 1, 1, 6.42342342342342, 2.45945945945946, 1, 1.84684684684685, 1, 
        1, 2.88288288288288, 1, 2.69369369369369, 1, 1.90990990990991, 1, 1)
    dend <- structure(list(structure(list(structure(7L, members = 1L, height = 0, label = "123", leaf = TRUE), structure(list(structure(4L, 
        label = "111", members = 1L, height = 0, leaf = TRUE), structure(8L, label = "145", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0.812403840463596)), members = 3L, midpoint = 0.75, height = 2.03960780543711, 
        edgePar = list(lty = 3)), structure(list(structure(list(structure(9L, members = 1L, height = 0, label = "25", leaf = TRUE), 
        structure(list(structure(1L, label = "29", members = 1L, height = 0, leaf = TRUE), structure(3L, label = "17", members = 1L, 
            height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.58309518948453)), members = 3L, midpoint = 0.75, 
        height = 1.00498756211209), structure(list(structure(5L, members = 1L, height = 0, label = "80", leaf = TRUE), structure(list(structure(2L, 
        members = 1L, height = 0, label = "85", leaf = TRUE), structure(list(structure(6L, label = "88", members = 1L, height = 0, 
        leaf = TRUE), structure(10L, label = "74", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, 
        height = 0.62449979983984)), members = 3L, midpoint = 0.75, height = 1.16189500386222)), members = 4L, midpoint = 0.875, 
        height = 1.29614813968157, edgePar = list(lty = 3))), members = 7L, midpoint = 2.3125, height = 3.72827037646145, 
        edgePar = list(lty = 3))), members = 10L, midpoint = 3.03125, height = 6.18223260642949, class = "dendrogram")
    dendextend:::set.dendrogram(dend = dend, what = "branches_lwd", value = lwds)
}




