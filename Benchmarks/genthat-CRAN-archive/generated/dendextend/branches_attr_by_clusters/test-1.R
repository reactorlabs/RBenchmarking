

genthat_extracted_call <- function() {
    dend <- structure(list(structure(list(structure(5L, label = 5L, members = 1L, height = 0, leaf = TRUE), structure(6L, 
        label = 6L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), structure(list(structure(list(structure(1L, 
        label = 1L, members = 1L, height = 0, leaf = TRUE), structure(2L, label = 2L, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 1), structure(list(structure(3L, label = 3L, members = 1L, height = 0, leaf = TRUE), 
        structure(4L, label = 4L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), members = 4L, 
        midpoint = 1.5, height = 3)), members = 6L, midpoint = 2, height = 5, class = "dendrogram")
    col <- c("#CC476B", "#228B00", "#0082CE")
    clusters <- c(1, 1, 2, 2, 3, 3)
    dendextend:::branches_attr_by_clusters(dend = dend, clusters = clusters, values = col, attr = "col", branches_changed_have_which_labels = "all")
}




