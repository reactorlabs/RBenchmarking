

genthat_extracted_call <- function() {
    y <- c(4, 4.7, 4, 1.3, -1.1, -3, -2.5, 1.3)
    x <- c(0.7, 3.3, 5.6, 7.5, 6.4, 4.4, 0.3, -1.1)
    init <- NULL
    circular:::LsfitCircleRad(x = x, y = y, init = init)
}




