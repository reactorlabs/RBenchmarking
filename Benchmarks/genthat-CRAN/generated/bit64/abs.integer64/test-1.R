

genthat_extracted_call <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::abs.integer64(x = as.integer64(c(NA, -1:1)))
}




