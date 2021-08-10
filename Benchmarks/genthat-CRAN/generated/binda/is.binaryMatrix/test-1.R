library(binda)

function_to_run <- function() {
    Xtest <- structure(c(1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1), .Dim = c(2L, 6L), .Dimnames = list(NULL, c("V1", "V2", "V3", 
        "V4", "V5", "V6")))
    binda:::is.binaryMatrix(m = Xtest)
}




