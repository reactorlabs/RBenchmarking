library(circlize)

function_to_run <- function() {
    convert_height <- circlize::convert_height
    circlize:::circos.par(track.margin = c(0, convert_height(2, "mm")))
}




