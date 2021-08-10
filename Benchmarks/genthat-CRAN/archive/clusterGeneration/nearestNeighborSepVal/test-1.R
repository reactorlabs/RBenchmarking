library(clusterGeneration)

function_to_run <- function() {
    sepValMat <- structure(c(-1, 0.166985814684389, 0.289159216202544, 0.166985814684389, -1, 0.372336698460334, 0.289159216202544, 
        0.372336698460334, -1), .Dim = c(3L, 3L), .Dimnames = list(c("cluster1", "cluster2", "cluster3"), c("cluster1", "cluster2", 
        "cluster3")))
    clusterGeneration:::nearestNeighborSepVal(sepValMat = sepValMat)
}




