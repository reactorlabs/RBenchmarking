library(colorspace)

function_to_run <- function() {
    cl <- c("#E16A86", "#AA9000", "#00AA5A", "#00A6CA", "#B675E0")
    colorspace:::lighten(col = cl, amount = 0.3)
}




