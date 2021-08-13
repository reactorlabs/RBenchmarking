

genthat_extracted_call <- function() {
    X <- structure(c(1, 1, 1, 1, 1, 1, 0, 0, 1, 2, 1, 1, 1.75, 2, 1, 0.5, 0.4, 0.4, 0.5, 0.6, 0, 0.09, 0.1, 0.1), .Dim = c(4L, 
        6L), .Dimnames = list(c("Treatment1", "Treatment2", "Control1", "Control2"), c("V1", "V2", "V3", "V4", "V5", "V6")))
    L <- structure(c(2L, 2L, 1L, 1L), .Label = c("Control", "Treatment"), class = "factor")
    binda:::optimizeThreshold(X = X, L = L)
}




