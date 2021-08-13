

genthat_extracted_call <- function() {
    dist <- stats::dist
    hclust <- stats::hclust
    USArrests <- datasets::USArrests
    hc <- structure(list(merge = structure(c(-1L, -3L, -2L, 1L), .Dim = c(2L, 2L)), height = c(37.1770090243957, 54.8004107236398), 
        order = c(3L, 1L, 2L), labels = c("b", "c", "a"), method = "average", call = hclust(d = dist(USArrests[1:3, ]), method = "ave"), 
        dist.method = "euclidean"), class = "hclust")
    dendextend:::labels.hclust(object = hc)
}




