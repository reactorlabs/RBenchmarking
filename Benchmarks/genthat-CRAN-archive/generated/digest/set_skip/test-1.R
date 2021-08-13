

genthat_extracted_call <- function() {
    object <- as.raw(c(88, 10, 0, 0, 0, 2, 0, 3, 6, 3, 0, 2, 3, 0, 0, 0, 0, 13, 0, 0, 0, 1, 0, 0, 0, 1))
    ascii <- FALSE
    digest:::set_skip(object = object, ascii = ascii)
}




