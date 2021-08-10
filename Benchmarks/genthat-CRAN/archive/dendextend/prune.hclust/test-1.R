library(dendextend)

function_to_run <- function() {
    dist <- stats::dist
    hclust <- stats::hclust
    USArrests <- datasets::USArrests
    hc <- structure(list(merge = structure(c(-3L, -1L, 1L, -4L, -5L, -2L, 2L, 3L), .Dim = c(4L, 2L)), height = c(23.1941803045505, 
        37.1770090243957, 52.556951983821, 82.639870094527), order = c(4L, 3L, 5L, 1L, 2L), labels = c("Alabama", "Alaska", 
        "Arizona", "Arkansas", "California"), method = "average", call = hclust(d = dist(USArrests[1:5, ]), method = "ave"), 
        dist.method = "euclidean"), class = "hclust")
    dendextend:::prune.hclust(dend = hc, leaves = c("Alaska", "California"))
}




