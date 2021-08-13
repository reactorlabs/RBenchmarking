

genthat_extracted_call <- function() {
    dend_pruned_reindexed <- structure(list(structure(3L, members = 1L, height = 0, label = "Arkansas", leaf = TRUE), structure(list(structure(2L, 
        label = "Arizona", members = 1L, height = 0, leaf = TRUE), structure(1L, label = "Alabama", members = 1L, height = 0, 
        leaf = TRUE)), members = 2, midpoint = 0.5, height = 52.556951983821)), members = 3, midpoint = 0.75, height = 82.639870094527, 
        class = "dendrogram")
    dend_pruned <- structure(list(structure(4L, members = 1L, height = 0, label = "Arkansas", leaf = TRUE), structure(list(structure(3L, 
        label = "Arizona", members = 1L, height = 0, leaf = TRUE), structure(1L, label = "Alabama", members = 1L, height = 0, 
        leaf = TRUE)), members = 2, midpoint = 0.5, height = 52.556951983821)), members = 3, midpoint = 0.75, height = 82.639870094527, 
        class = "dendrogram")
    dendextend:::all.equal.dendrogram(target = dend_pruned, current = dend_pruned_reindexed)
}




