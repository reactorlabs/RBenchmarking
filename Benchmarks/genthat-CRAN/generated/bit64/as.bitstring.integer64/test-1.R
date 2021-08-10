library(bit64)

function_to_run <- function() {
    lim.integer64 <- bit64::lim.integer64
    bit64:::as.bitstring.integer64(x = lim.integer64())
}




