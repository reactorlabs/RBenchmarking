

genthat_extracted_call <- function() {
    random_weights <- c(7L, 8L, 3L, 6L, 2L, 4L, 5L, 1L)
    dend <- structure(list(structure(list(structure(list(structure(3L, label = "Arizona", members = 1L, height = 0, leaf = TRUE, 
        nodePar = list(lab.col = "#CC476B", pch = NA), edgePar = list(col = "#CC476B")), structure(5L, label = "California", 
        members = 1L, height = 0, leaf = TRUE, nodePar = list(lab.col = "#AF6700", pch = NA), edgePar = list(col = "#CC476B"))), 
        members = 2L, midpoint = 0.5, height = 23.1941803045505, edgePar = list(col = "#CC476B")), structure(list(structure(2L, 
        members = 1L, height = 0, label = "Alaska", leaf = TRUE, nodePar = list(lab.col = "#767F00", pch = NA), edgePar = list(col = "#917600")), 
        structure(list(structure(1L, label = "Alabama", members = 1L, height = 0, leaf = TRUE, nodePar = list(lab.col = "#008F00", 
            pch = NA), edgePar = list(col = "#009232")), structure(8L, label = "Delaware", members = 1L, height = 0, leaf = TRUE, 
            nodePar = list(lab.col = "#009681", pch = NA), edgePar = list(col = "#009232"))), members = 2L, midpoint = 0.5, 
            height = 16.8062488378579, edgePar = list(col = "#009232"))), members = 3L, midpoint = 0.75, height = 45.1829613903294)), 
        members = 5L, midpoint = 1.625, height = 63.0083327822598), structure(list(structure(7L, members = 1L, height = 0, 
        label = "Connecticut", leaf = TRUE, nodePar = list(lab.col = "#008BC1", pch = NA), edgePar = list(col = "#008FB7")), 
        structure(list(structure(4L, label = "Arkansas", members = 1L, height = 0, leaf = TRUE, nodePar = list(lab.col = "#7866D8", 
            pch = NA), edgePar = list(col = "#A352D1")), structure(6L, label = "Colorado", members = 1L, height = 0, leaf = TRUE, 
            nodePar = list(lab.col = "#C53BB6", pch = NA), edgePar = list(col = "#A352D1"))), members = 2L, midpoint = 0.5, 
            height = 36.734860827285, edgePar = list(col = "#A352D1"))), members = 3L, midpoint = 0.75, height = 98.0811908573708)), 
        members = 8L, midpoint = 3.6875, height = 185.159525814904, class = "dendrogram")
    dendextend:::rotate.dendrogram(x = dend, order = random_weights)
}




