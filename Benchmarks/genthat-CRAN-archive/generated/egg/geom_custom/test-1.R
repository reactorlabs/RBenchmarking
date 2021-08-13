

genthat_extracted_call <- function() {
    unit <- grid::unit
    rasterGrob <- grid::rasterGrob
    dummy <- structure(list(f = structure(1:4, .Label = c("a", "b", "c", "d"), class = "factor"), data = structure(list(structure(c("black", 
        "cyan", "black", "black", "red", "blue", "red", "red", "black"), .Dim = c(3L, 3L)), structure(c("gray", "yellow", 
        "gray", "yellow", "blue", "black", "cyan", "magenta", "blue"), .Dim = c(3L, 3L)), structure(c("red", "red", "yellow", 
        "green3", "black", "black", "green3", "blue", "cyan"), .Dim = c(3L, 3L)), structure(c("yellow", "cyan", "cyan", "blue", 
        "red", "blue", "gray", "green3", "red"), .Dim = c(3L, 3L))), class = "AsIs")), class = "data.frame", row.names = c(NA, 
        -4L))
    data <- utils::data
    aes <- ggplot2::aes
    egg:::geom_custom(mapping = aes(data = data, y = 2), data = dummy, grob_fun = function(x) rasterGrob(x, interpolate = FALSE, 
        width = unit(1, "cm"), height = unit(1, "cm")))
}




