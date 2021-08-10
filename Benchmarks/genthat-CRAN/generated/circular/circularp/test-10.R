library(circular)

function_to_run <- function() {
    mu1 <- structure(1.5707963267949, circularp = list(type = "angles", units = "radians", template = "none", modulo = "asis", 
        zero = 0, rotation = "counter"), class = c("circular", "numeric"))
    circular:::circularp(x = mu1)
}




