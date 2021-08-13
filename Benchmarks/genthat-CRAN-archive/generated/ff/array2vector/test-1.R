

genthat_extracted_call <- function() {
    ret <- structure(c(1L, 5L, 9L, 2L, 6L, 10L, 3L, 7L, 11L, 4L, 8L, 12L), .Dim = 3:4)
    indexdim <- 3:4
    bydim <- c(2, 1)
    ff:::array2vector(x = ret, dim = indexdim, dimorder = bydim)
}




