library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    bit64:::seq.integer64(from = as.integer64(1), to = 12, by = 2)
}




