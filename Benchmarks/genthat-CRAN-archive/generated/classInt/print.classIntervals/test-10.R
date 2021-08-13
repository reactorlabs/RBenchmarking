

genthat_extracted_call <- function() {
    x <- c(0, 0, 0, 1, 2, 50)
    classIntervals <- classInt::classIntervals
    classInt:::print.classIntervals(x = classIntervals(x, n = 3, style = "fisher"))
}




