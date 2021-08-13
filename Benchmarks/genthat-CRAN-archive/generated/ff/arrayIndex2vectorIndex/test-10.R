

genthat_extracted_call <- function() {
    x <- 1:60
    vw <- NULL
    vectorIndex2arrayIndex <- ff::vectorIndex2arrayIndex
    dimorder <- c(2L, 3L, 1L)
    dim <- c(4L, 5L, 3L)
    ff:::arrayIndex2vectorIndex(x = vectorIndex2arrayIndex(x, dim = dim), dim = dim, dimorder = dimorder, vw = vw)
}




