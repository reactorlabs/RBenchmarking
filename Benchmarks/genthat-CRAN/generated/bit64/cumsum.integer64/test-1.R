library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    bit64:::cumsum.integer64(x = as.integer64(c(2, 3, NA, 1, 4)))
}




