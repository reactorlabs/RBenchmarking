

genthat_extracted_call <- function() {
    key <- as.raw(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16))
    iv <- c(48L, 228L, 64L, 152L, 73L, 227L, 145L, 121L, 48L, 127L, 46L, 23L, 70L, 99L, 88L, 164L)
    digest:::AES(key = key, mode = "CBC", IV = iv)
}




