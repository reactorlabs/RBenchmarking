

genthat_extracted_call <- function() {
    Xtrain <- structure(c(1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1), .Dim = c(4L, 6L), .Dimnames = list(NULL, 
        c("V1", "V2", "V3", "V4", "V5", "V6")))
    L <- structure(c(2L, 2L, 1L, 1L), .Label = c("Control", "Treatment"), class = "factor")
    binda:::binda(Xtrain = Xtrain, L = L)
}




