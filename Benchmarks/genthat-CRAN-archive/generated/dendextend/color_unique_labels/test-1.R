library(dendextend)

function_to_run <- function() {
    dend <- structure(list(structure(list(structure(7L, members = 1L, height = 0, label = "2015", leaf = TRUE), structure(list(structure(5L, 
        label = "2015", members = 1L, height = 0, leaf = TRUE), structure(6L, label = "2015", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0)), members = 3L, midpoint = 0.75, height = 0), structure(list(structure(list(structure(1L, 
        label = "2011", members = 1L, height = 0, leaf = TRUE), structure(2L, label = "2011", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0), structure(list(structure(3L, label = "2012", members = 1L, height = 0, 
        leaf = TRUE), structure(4L, label = "2012", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, 
        height = 0)), members = 4L, midpoint = 1.5, height = 1)), members = 7L, midpoint = 2.625, height = 4, class = "dendrogram")
    dendextend:::color_unique_labels(dend = dend)
}




