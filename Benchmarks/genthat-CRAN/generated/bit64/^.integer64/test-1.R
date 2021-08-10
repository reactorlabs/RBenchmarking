library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    `:` <- bit64::`:`
    bit64:::`^.integer64`(e1 = as.integer64(10), e2 = (0:18))
}




