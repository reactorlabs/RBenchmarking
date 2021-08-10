library(bit64)

function_to_run <- function() {
    to <- structure(4.94065645841247e-323, class = "integer64")
    from <- 1
    bit64:::sign.integer64(x = to - from)
}




