library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::log.integer64(x = as.integer64(3)^(0:39), base = 3)
}




