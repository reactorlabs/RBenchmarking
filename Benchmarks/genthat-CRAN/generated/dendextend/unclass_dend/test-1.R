library(dendextend)

function_to_run <- function() {
    dend <- structure(list(structure(3L, members = 1L, height = 0, label = "Arizona", leaf = TRUE, class = "dendrogram"), 
        structure(list(structure(1L, label = "Alabama", members = 1L, height = 0, leaf = TRUE, class = "dendrogram"), structure(2L, 
            label = "Alaska", members = 1L, height = 0, leaf = TRUE, class = "dendrogram")), members = 2L, midpoint = 0.5, 
            height = 37.1770090243957, class = "dendrogram")), members = 3L, midpoint = 0.75, height = 54.8004107236398, 
        class = "dendrogram")
    dendextend:::unclass_dend(dend = dend)
}




