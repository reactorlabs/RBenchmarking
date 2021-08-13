

genthat_extracted_call <- function() {
    i <- 1L
    heiget_to_add <- 100
    dend <- structure(list(structure(8L, members = 1L, height = 0, label = "Florida", leaf = TRUE), structure(list(structure(list(structure(2L, 
        label = "Arizona", members = 1L, height = 0, leaf = TRUE), structure(4L, label = "California", members = 1L, height = 0, 
        leaf = TRUE)), members = 2L, midpoint = 0.5, height = 23.1941803045505), structure(list(structure(1L, label = "Alaska", 
        members = 1L, height = 0, leaf = TRUE), structure(7L, label = "Delaware", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 45.1829613903294)), members = 4L, midpoint = 1.5, height = 58.6163799632833)), 
        members = 5L, midpoint = 1.25, height = 99.1083245746794, class = "dendrogram")
    dendextend:::raise.dendrogram(dend = dend[[i]], heiget_to_add = heiget_to_add)
}




