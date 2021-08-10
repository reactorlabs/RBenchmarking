library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::`!.integer64`(x = c(as.integer64(NA), -1:1))
}




