library(dendextend)

function_to_run <- function() {
    dend <- structure(list(structure(list(structure(9L, members = 1L, height = 0, label = 1L, leaf = TRUE), structure(list(structure(list(structure(2L, 
        label = 2L, members = 1L, height = 0, leaf = TRUE), structure(10L, label = 3L, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0.173205080756888), structure(list(structure(7L, members = 1L, height = 0, 
        label = 4L, leaf = TRUE), structure(list(structure(3L, label = 5L, members = 1L, height = 0, leaf = TRUE), structure(4L, 
        label = 6L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.244948974278318)), 
        members = 3L, midpoint = 0.75, height = 0.33166247903554)), members = 5L, midpoint = 1.625, height = 0.509901951359279)), 
        members = 6L, midpoint = 1.3125, height = 0.556776436283002), structure(list(structure(6L, members = 1L, height = 0, 
        label = 7L, leaf = TRUE), structure(list(structure(8L, members = 1L, height = 0, label = 8L, leaf = TRUE), structure(list(structure(1L, 
        label = 9L, members = 1L, height = 0, leaf = TRUE), structure(5L, label = 10L, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0.141421356237309)), members = 3L, midpoint = 0.75, height = 0.223606797749979)), 
        members = 4L, midpoint = 0.875, height = 0.7)), members = 10L, midpoint = 4.09375, height = 1.45945195193264, class = "dendrogram")
    dendextend:::which_node(dend = dend, labels = c(2, 3), max_id = FALSE)
}




