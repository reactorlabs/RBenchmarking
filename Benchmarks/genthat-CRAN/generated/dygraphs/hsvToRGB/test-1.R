library(dygraphs)

function_to_run <- function() {
    val <- 0.5
    sat <- 1
    hue <- 0.25
    dygraphs:::hsvToRGB(hue = hue, saturation = sat, value = val)
}




