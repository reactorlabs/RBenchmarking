library(bit64)

function_to_run <- function() {
    x <- structure(list(a = 1:12, b = structure(c(4.94065645841247e-324, 9.88131291682493e-324, 1.48219693752374e-323, 1.97626258336499e-323, 
        2.47032822920623e-323, 2.96439387504748e-323, 3.45845952088873e-323, 3.95252516672997e-323, 4.44659081257122e-323, 
        4.94065645841247e-323, 5.43472210425371e-323, 5.92878775009496e-323), class = "integer64")), class = "data.frame", 
        row.names = c(NA, -12L))
    justify <- "none"
    i <- 2L
    bit64:::format.integer64(x = x[[i]], justify = justify, digits = NULL, na.encode = FALSE)
}




