

genthat_extracted_call <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::match.integer64(x = as.integer64(2), table = as.integer64(0:3))
}




