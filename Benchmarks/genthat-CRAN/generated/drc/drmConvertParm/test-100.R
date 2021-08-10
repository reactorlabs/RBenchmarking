library(drc)

function_to_run <- function() {
    startVec <- c(2.36941937852678, -0.658738872234458, 7.71142842407854, 4.86537323413376)
    startMat <- structure(c(2.36941937852678, -0.658738872234458, 7.71142842407854, 4.86537323413376), .Dim = c(1L, 4L))
    pmodelsList2 <- list(structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(20L, 1L)), structure(c(1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(20L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), .Dim = c(20L, 1L)), structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1), .Dim = c(20L, 1L)))
    assayNo <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
    drc:::drmConvertParm(startVec = startVec, startMat = startMat, factor1 = assayNo, colList = pmodelsList2)
}




