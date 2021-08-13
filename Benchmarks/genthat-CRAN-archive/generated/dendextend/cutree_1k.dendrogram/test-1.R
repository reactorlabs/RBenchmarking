

genthat_extracted_call <- function() {
    dend <- structure(list(structure(5L, members = 1L, height = 0, label = "Minnesota", leaf = TRUE), structure(list(structure(4L, 
        members = 1L, height = 0, label = "Maryland", leaf = TRUE), structure(list(structure(2L, members = 1L, height = 0, 
        label = "Colorado", leaf = TRUE), structure(list(structure(1L, label = "Alabama", members = 1L, height = 0, leaf = TRUE), 
        structure(3L, label = "Illinois", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 28.4548765592121)), 
        members = 3L, midpoint = 0.75, height = 44.8008162247113)), members = 4L, midpoint = 0.875, height = 71.9624675420893)), 
        members = 5L, midpoint = 0.9375, height = 176.539460641984, class = "dendrogram")
    dendextend:::cutree_1k.dendrogram(dend = dend, k = 3, order_clusters_as_data = TRUE)
}




