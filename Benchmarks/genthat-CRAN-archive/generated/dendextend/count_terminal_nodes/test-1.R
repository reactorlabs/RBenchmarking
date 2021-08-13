library(dendextend)

function_to_run <- function() {
    i <- 2L
    dend_node <- structure(list(structure(1L, label = "Alabama", members = 1L, height = 0, leaf = TRUE), structure(2L, label = "Alaska", 
        members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 37.1770090243957, class = "dendrogram")
    dendextend:::count_terminal_nodes(dend_node = dend_node[[i]])
}




