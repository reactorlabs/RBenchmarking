library(circular)

function_to_run <- function() {
    x <- structure(2.95096371146728, circularp = list(type = "angles", units = "radians", template = "none", modulo = "asis", 
        zero = 0, rotation = "counter"), class = c("circular", "numeric"))
    circular:::is.circular(x = x)
}




