library(clusterGeneration)

function_to_run <- function() {
    Q1 <- structure(c(0.462250163521024, 0.0924500327042048, 0.0924500327042048, 0.739600261633639), .Dim = c(2L, 2L))
    mu2 <- c(0, 0)
    mu1 <- c(10, 0)
    clusterGeneration:::Q2c1Fun(Q1 = Q1, mu1 = mu1, mu2 = mu2)
}




