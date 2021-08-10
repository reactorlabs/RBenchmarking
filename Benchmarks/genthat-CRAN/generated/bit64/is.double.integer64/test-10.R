library(bit64)

function_to_run <- function() {
    e2 <- structure(8.69169475979376e-311, class = "integer64")
    bit64:::is.double.integer64(x = e2)
}




