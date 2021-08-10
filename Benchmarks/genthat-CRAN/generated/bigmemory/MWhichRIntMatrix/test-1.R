library(bigmemory)

function_to_run <- function() {
    x <- structure(1:30, .Dim = c(10L, 3L))
    testCol <- 1:2
    opVal <- 1
    minVal <- c(2, 11)
    maxVal <- c(3, 17)
    chkmin <- c(0, 1)
    chkmax <- c(0, 1)
    bigmemory:::MWhichRIntMatrix(matrixVector = x, nrow = nrow(x), selectColumn = as.double(testCol), minVal = as.double(minVal), 
        maxVal = as.double(maxVal), chkMin = as.integer(chkmin), chkMax = as.integer(chkmax), opVal = as.integer(opVal))
}




