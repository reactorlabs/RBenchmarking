library(clusterGeneration)

function_to_run <- function() {
    Sigma1 <- structure(c(5, -1, -1, 2), .Dim = c(2L, 2L))
    clusterGeneration:::Q1Fun(Sigma1 = Sigma1)
}




