library(bit64)

function_to_run <- function() {
    e2 <- structure(1.69759663277222e-313, class = "integer64")
    e1 <- 2
    bit64:::binattr(e1 = e1, e2 = e2)
}




