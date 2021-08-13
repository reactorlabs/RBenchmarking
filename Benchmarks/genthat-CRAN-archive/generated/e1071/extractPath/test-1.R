

genthat_extracted_call <- function() {
    z <- list(length = structure(c(0, NA, NA, NA, NA, 30, 0, NA, NA, NA, 10, NA, 0, NA, NA, 40, 50, 30, 0, 10, 30, 40, 20, 
        60, 0), .Dim = c(5L, 5L)), middlePoints = structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 0, 0, 
        3, 0, 0, 0, 0), .Dim = c(5L, 5L)))
    e1071:::extractPath(obj = z, start = 1, end = 4)
}




