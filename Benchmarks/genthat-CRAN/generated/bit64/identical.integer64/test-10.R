

genthat_extracted_call <- function() {
    as.integer64 <- bit64::as.integer64
    bit64:::identical.integer64(x = as.integer64(cummax(c(2, 3, NA, 1, 4))), y = cummax(as.integer64(c(2, 3, NA, 1, 4))))
}




