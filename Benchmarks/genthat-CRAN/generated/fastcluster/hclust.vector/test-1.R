library(fastcluster)

function_to_run <- function() {
    USArrests <- datasets::USArrests
    fastcluster:::hclust.vector(X = USArrests, method = "cen")
}




