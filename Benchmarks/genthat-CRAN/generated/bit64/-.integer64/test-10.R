library(bit64)

function_to_run <- function() {
    i64 <- structure(c(-8.98846567431158e+307, NaN, NaN, 0, 4.94065645841247e-324, 1.06099789498857e-314, 4.4501477170144e-308), 
        class = "integer64")
    bit64:::`-.integer64`(e1 = i64, e2 = 1)
}




