library(bit64)

function_to_run <- function() {
    na.rm <- FALSE
    e <- 3
    bit64:::as.integer64.double(x = sum(e, na.rm = na.rm))
}




