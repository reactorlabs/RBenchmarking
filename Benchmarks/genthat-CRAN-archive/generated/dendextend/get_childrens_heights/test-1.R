library(dendextend)

function_to_run <- function() {
    dend <- structure(list(structure(4L, members = 1L, height = 0, label = "Arkansas", leaf = TRUE), structure(list(structure(3L, 
        members = 1L, height = 0, label = "Arizona", leaf = TRUE), structure(list(structure(1L, label = "Alabama", members = 1L, 
        height = 0, leaf = TRUE), structure(2L, label = "Alaska", members = 1L, height = 0, leaf = TRUE)), members = 2L, 
        midpoint = 0.5, height = 37.1770090243957)), members = 3L, midpoint = 0.75, height = 54.8004107236398)), members = 4L, 
        midpoint = 0.875, height = 77.6591545307423, class = "dendrogram")
    dendextend:::get_childrens_heights(dend = dend)
}




