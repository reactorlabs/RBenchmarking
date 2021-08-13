library(colorspace)

function_to_run <- function() {
    RGB <- structure(c(255, 0, 0, 0, 255, 0, 0, 0, 255), .Dim = c(3L, 3L), .Dimnames = list(c("R", "G", "B"), NULL))
    colorspace:::deutan(col = RGB)
}




