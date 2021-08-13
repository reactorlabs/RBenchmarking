

genthat_extracted_call <- function() {
    y <- structure(c(37, 29, 6, 232, 121, 77, 25), names = c("001", "010", "011", "100", "101", "110", "111"))
    rainbow <- grDevices::rainbow
    labels <- c("A", "B", "C")
    colorfulVennPlot:::plotVenn(x = y, labels, Colors = rainbow(7))
}




