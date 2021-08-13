

genthat_extracted_call <- function() {
    x <- structure(1:12, .Dim = c(6L, 2L))
    as.hi <- ff::as.hi
    ff:::as.matrix.hi(x = as.hi(rbind(c(1, 1), c(1, 2), c(2, 1)), dim = dim(x)), dim = dim(x))
}




