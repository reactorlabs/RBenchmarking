library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::xor.integer64(x = as.integer64(rep(c(NA, -1:1), 4)), y = as.integer64(rep(c(NA, -1:1), rep(4, 4))))
}




