library(FBN)

function_to_run <- function() {
    rawDataFileName <- "./../data/hmcls.txt"
    normDataFileName <- "hmcls_NORM.txt"
    fishProbesFileName <- "./../data/FISHprobes.txt"
    FBN:::FBNormalization(rawDataFileName = rawDataFileName, fishProbesFileName = fishProbesFileName, normDataFileName = normDataFileName, 
        debugFlag = FALSE)
}




