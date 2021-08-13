

genthat_extracted_call <- function() {
    k <- as.raw(c(11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11))
    blocksize <- 64
    digest:::makeRaw.default(object = c(k, rep(0, blocksize - length(k))))
}




