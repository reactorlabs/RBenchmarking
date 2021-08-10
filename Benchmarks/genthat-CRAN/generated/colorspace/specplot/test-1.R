library(colorspace)

function_to_run <- function() {
    rainbow <- grDevices::rainbow
    colorspace:::specplot(x = rainbow(10), plot = FALSE)
}




