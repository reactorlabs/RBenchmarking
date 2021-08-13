

genthat_extracted_call <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::log10.integer64(x = as.integer64(10)^(0:18))
}




