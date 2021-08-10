library(bit64)

function_to_run <- function() {
    deparse.level <- 1
    bit64:::cbind.integer64(deparse.level, structure(c(4.94065645841247e-324, 9.88131291682493e-324, 1.48219693752374e-323), 
        class = "integer64"), 1:3)
}




