library(dendextend)

function_to_run <- function() {
    dend2 <- structure(list(structure(list(structure(list(structure(1L, label = 1, members = 1L, height = 0, leaf = TRUE), 
        structure(2L, label = 3, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), structure(list(structure(3L, 
        label = 2, members = 1L, height = 0, leaf = TRUE), structure(4L, label = 4, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 1)), members = 4L, midpoint = 1.5, height = 3), structure(list(structure(list(structure(9L, 
        label = 5, members = 1L, height = 0, leaf = TRUE), structure(10L, label = 6, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 1), structure(list(structure(list(structure(5L, label = 7, members = 1L, height = 0, 
        leaf = TRUE), structure(6L, label = 8, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), 
        structure(list(structure(7L, label = 9, members = 1L, height = 0, leaf = TRUE), structure(8L, label = 10, members = 1L, 
            height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), members = 4L, midpoint = 1.5, height = 3)), 
        members = 6L, midpoint = 2, height = 5)), members = 10L, midpoint = 3.75, height = 9, class = "dendrogram")
    dend <- structure(list(structure(list(structure(list(structure(1L, label = 1L, members = 1L, height = 0, leaf = TRUE), 
        structure(2L, label = 2L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), structure(list(structure(3L, 
        label = 3L, members = 1L, height = 0, leaf = TRUE), structure(4L, label = 4L, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 1)), members = 4L, midpoint = 1.5, height = 3), structure(list(structure(list(structure(9L, 
        label = 9L, members = 1L, height = 0, leaf = TRUE), structure(10L, label = 10L, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 1), structure(list(structure(list(structure(5L, label = 5L, members = 1L, 
        height = 0, leaf = TRUE), structure(6L, label = 6L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, 
        height = 1), structure(list(structure(7L, label = 7L, members = 1L, height = 0, leaf = TRUE), structure(8L, label = 8L, 
        members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), members = 4L, midpoint = 1.5, 
        height = 3)), members = 6L, midpoint = 2, height = 5)), members = 10L, midpoint = 3.75, height = 9, class = "dendrogram")
    dendextend:::highlight_distinct_edges.dendrogram(dend = dend, dend2 = dend2)
}




