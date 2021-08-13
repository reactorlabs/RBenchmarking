library(circular)

function_to_run <- function() {
    zeros <- structure(c(0, 5.5872350041755, 0.531620032206544, 6.28318530717959), .Dim = c(2L, 2L), circularp = list(type = "angles", 
        units = "radians", template = "none", modulo = "asis", zero = 0, rotation = "counter"), class = c("circular", "matrix"))
    j <- 2L
    i <- 1L
    breaks <- structure(c(3.14159265358979, 3.40339204138894), .Dim = 1:2)
    circular:::IntersectIntervalRad(x = zeros[j, ], y = breaks[i, ])
}




