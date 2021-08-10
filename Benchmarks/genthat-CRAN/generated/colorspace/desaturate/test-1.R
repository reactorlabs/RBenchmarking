library(colorspace)

function_to_run <- function() {
    rainbow <- grDevices::rainbow
    colorspace:::desaturate(col = rainbow(12))
}




