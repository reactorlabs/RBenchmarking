

genthat_extracted_call <- function() {
    . <- structure(list(structure(list(structure(1L, label = "1", members = 1L, height = 0, leaf = TRUE), structure(5L, label = "5", 
        members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.141421356237309), structure(list(structure(2L, 
        members = 1L, height = 0, label = "2", leaf = TRUE), structure(list(structure(3L, label = "3", members = 1L, height = 0, 
        leaf = TRUE), structure(4L, label = "4", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.244948974278318)), 
        members = 3L, midpoint = 0.75, height = 0.331662479035541)), members = 5L, midpoint = 1.625, height = 0.648074069840786, 
        class = "dendrogram")
    dendextend:::as.phylo.dendrogram(x = .)
}




