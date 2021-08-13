library(dendextend)

function_to_run <- function() {
    dend2 <- structure(list(structure(list(structure(1L, label = 1L, members = 1L, height = 0, leaf = TRUE), structure(2L, 
        label = 2L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), structure(list(structure(5L, 
        members = 1L, height = 0, label = 5L, leaf = TRUE), structure(list(structure(3L, label = 3L, members = 1L, height = 0, 
        leaf = TRUE), structure(4L, label = 4L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), 
        members = 3L, midpoint = 0.75, height = 2)), members = 5L, midpoint = 1.625, height = 4, class = "dendrogram")
    dend <- structure(list(structure(list(structure(1L, label = 5L, members = 1L, height = 0, leaf = TRUE), structure(2L, 
        label = 4L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), structure(list(structure(5L, 
        members = 1L, height = 0, label = 3L, leaf = TRUE), structure(list(structure(3L, label = 2L, members = 1L, height = 0, 
        leaf = TRUE), structure(4L, label = 1L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), 
        members = 3L, midpoint = 0.75, height = 2)), members = 5L, midpoint = 1.625, height = 4, class = "dendrogram")
    dendextend:::dendlist(dend, dend2)
}




