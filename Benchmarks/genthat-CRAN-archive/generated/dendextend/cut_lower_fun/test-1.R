

genthat_extracted_call <- function() {
    dend <- structure(list(structure(1L, members = 1L, height = 0, label = "1", leaf = TRUE), structure(list(structure(2L, 
        members = 1L, height = 0, label = "2", leaf = TRUE), structure(list(structure(3L, label = "3", members = 1L, height = 0, 
        leaf = TRUE), structure(4L, label = "4", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.244948974278318)), 
        members = 3L, midpoint = 0.75, height = 0.331662479035541)), members = 4L, midpoint = 0.875, height = 0.648074069840786, 
        class = "dendrogram")
    dendextend:::cut_lower_fun(dend = dend, h = 0.4, FUN = labels)
}




