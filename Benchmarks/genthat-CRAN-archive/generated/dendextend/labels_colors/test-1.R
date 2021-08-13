library(dendextend)

function_to_run <- function() {
    dend <- structure(list(structure(3L, members = 1L, height = 0, label = "Arizona", leaf = TRUE, nodePar = list(pch = NA)), 
        structure(list(structure(1L, label = "Alabama", members = 1L, height = 0, leaf = TRUE, nodePar = list(pch = NA)), 
            structure(2L, label = "Alaska", members = 1L, height = 0, leaf = TRUE, nodePar = list(pch = NA))), members = 2L, 
            midpoint = 0.5, height = 37.1770090243957)), members = 3L, midpoint = 0.75, height = 54.8004107236398, class = "dendrogram")
    dendextend:::labels_colors(dend = dend)
}




