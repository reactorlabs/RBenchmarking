library(bit64)

function_to_run <- function() {
    lim.integer64 <- bit64::lim.integer64
    bit64:::as.integer64.character(x = as.character(lim.integer64()))
}




