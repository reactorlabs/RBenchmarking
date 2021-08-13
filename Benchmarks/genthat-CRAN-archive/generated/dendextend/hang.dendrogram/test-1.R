library(dendextend)

function_to_run <- function() {
    . <- structure(list(structure(list(structure(list(structure(3L, label = "3", members = 1L, height = 0, leaf = TRUE), 
        structure(4L, label = "4", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.244948974278318), 
        structure(2L, members = 1L, height = 0, label = "2", leaf = TRUE)), members = 3L, midpoint = 1.25, height = 0.331662479035541), 
        structure(1L, label = "1", members = 1L, height = 0, leaf = TRUE), structure(5L, label = "5", members = 1L, height = 0, 
            leaf = TRUE)), members = 5L, midpoint = 2.125, height = 0.648074069840786, class = "dendrogram")
    dendextend:::hang.dendrogram(dend = ., hang = 0)
}




