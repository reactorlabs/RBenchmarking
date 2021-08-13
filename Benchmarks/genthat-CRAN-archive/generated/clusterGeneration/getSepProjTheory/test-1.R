

genthat_extracted_call <- function() {
    SigmaArray <- structure(c(2, 1, 1, 5, 5, -1, -1, 2), .Dim = c(2L, 2L, 2L))
    muMat <- structure(c(0, 10, 0, 0), .Dim = c(2L, 2L), .Dimnames = list(c("mu1", "mu2"), NULL))
    clusterGeneration:::getSepProjTheory(muMat = muMat, SigmaArray = SigmaArray, iniProjDirMethod = "SL")
}




