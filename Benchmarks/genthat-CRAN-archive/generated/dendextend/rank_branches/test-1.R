

genthat_extracted_call <- function() {
    dend <- structure(list(structure(4L, members = 1L, height = 0, label = "Arkansas", leaf = TRUE), structure(list(structure(list(structure(3L, 
        label = "Arizona", members = 1L, height = 0, leaf = TRUE), structure(5L, label = "California", members = 1L, height = 0, 
        leaf = TRUE)), members = 2L, midpoint = 0.5, height = 23.1941803045505), structure(list(structure(1L, label = "Alabama", 
        members = 1L, height = 0, leaf = TRUE), structure(2L, label = "Alaska", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 37.1770090243957)), members = 4L, midpoint = 1.5, height = 63.0083327822598)), 
        members = 5L, midpoint = 1.25, height = 108.851917759863, class = "dendrogram")
    dendextend:::rank_branches(dend = dend)
}




