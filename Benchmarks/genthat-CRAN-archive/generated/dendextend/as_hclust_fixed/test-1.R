

genthat_extracted_call <- function() {
    dist <- stats::dist
    hclust <- stats::hclust
    USArrests <- datasets::USArrests
    hc <- structure(list(merge = structure(c(-1L, -3L, -2L, 1L), .Dim = c(2L, 2L)), height = c(37.1770090243957, 54.8004107236398), 
        order = c(3L, 1L, 2L), labels = c("Alabama", "Alaska", "Arizona"), method = "average", call = hclust(d = dist(USArrests[1:3, 
            ]), method = "ave"), dist.method = "euclidean"), class = "hclust")
    dend <- structure(list(structure(3L, members = 1L, height = 0, label = "Arizona", leaf = TRUE), structure(list(structure(1L, 
        label = "Alabama", members = 1L, height = 0, leaf = TRUE), structure(2L, label = "Alaska", members = 1L, height = 0, 
        leaf = TRUE)), members = 2L, midpoint = 0.5, height = 37.1770090243957)), members = 3L, midpoint = 0.75, height = 54.8004107236398, 
        class = "dendrogram")
    dendextend:::as_hclust_fixed(x = dend, hc = hc)
}




