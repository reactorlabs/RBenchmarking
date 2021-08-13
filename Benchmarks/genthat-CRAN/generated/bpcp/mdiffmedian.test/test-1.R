

genthat_extracted_call <- function() {
    trtB <- c(9L, 4L, 6L, 3L, 4L, 5L, 1L, 5L, 8L, 4L, 5L, 6L, 5L, 3L, 8L, 6L, 7L, 3L, 7L, 5L, 8L, 6L, 7L)
    trtA <- c(1L, 1L, 2L, 3L, 0L, 3L, 4L, 2L, 2L, 0L, 0L, 0L, 2L, 1L, 2L, 1L, 2L, 5L, 1L, 2L)
    bpcp:::mdiffmedian.test(x1 = trtA, x2 = trtB)
}




