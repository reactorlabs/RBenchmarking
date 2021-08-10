library(bit64)

function_to_run <- function() {
    as.integer64 <- bit64::as.integer64
    bit64:::as.double.integer64(x = as.integer64(c(NA, seq(0, 9, 0.25))))
}




