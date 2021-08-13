

genthat_extracted_call <- function() {
    USArrests <- datasets::USArrests
    fastcluster:::hclust.vector(X = USArrests, method = "cen")
}




