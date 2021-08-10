library(colorspace)

function_to_run <- function() {
    colorspace:::HLS(H = seq(0, 360, length = 13)[-13], L = 0.5, S = 1)
}




