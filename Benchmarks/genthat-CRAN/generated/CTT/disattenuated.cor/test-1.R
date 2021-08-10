library(CTT)

function_to_run <- function() {
    rxx1 <- c(0.8, 0.8, 0.81, 0.9)
    new.rxx1 <- c(0.9, 0.97, 0.8, 0.7)
    cor1 <- structure(c(1, 0.2439129, 0.2812319, 0.0525105, 0.24391288, 1, 0.1652985, 0.08126448, 0.2812319, 0.1652985, 1, 
        0.2797163, 0.0525105, 0.08126448, 0.2797163, 1), .Dim = c(4L, 4L))
    CTT:::disattenuated.cor(r.xy = cor1, r.xx = rxx1, new.r.xx = new.rxx1)
}




