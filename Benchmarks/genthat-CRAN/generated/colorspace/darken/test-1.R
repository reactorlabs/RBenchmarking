library(colorspace)

function_to_run <- function() {
    cl <- c("#FFC5D0", "#E2D4A8", "#A8E1BF", "#A4DDEF", "#E4CBF9")
    colorspace:::darken(col = cl, amount = 0.3, space = "HLS")
}




