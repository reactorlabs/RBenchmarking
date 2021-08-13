

genthat_extracted_call <- function() {
    as.integer64 <- bit64::as.integer64
    bit64:::as.double.integer64(x = as.integer64(c(NA, seq(0, 9, 0.25))))
}




