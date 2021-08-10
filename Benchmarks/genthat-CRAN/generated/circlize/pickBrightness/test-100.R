library(circlize)

function_to_run <- function() {
    S <- 93.7075413297862
    luminosity <- "random"
    H <- 329.330175658688
    circlize:::pickBrightness(H = H, S = S, luminosity = luminosity)
}




