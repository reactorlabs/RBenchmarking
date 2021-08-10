library(bit64)

function_to_run <- function() {
    ret <- structure(4.94065645841247e-324, class = "integer64")
    bit64:::remcache(x = ret)
}




