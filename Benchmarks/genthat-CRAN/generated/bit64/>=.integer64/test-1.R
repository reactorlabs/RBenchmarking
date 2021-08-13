

genthat_extracted_call <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::`>=.integer64`(e1 = as.integer64(rep(c(NA, -1:1), 4)), e2 = as.integer64(rep(c(NA, -1:1), rep(4, 4))))
}




