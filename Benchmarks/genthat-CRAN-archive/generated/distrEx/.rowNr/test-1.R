

genthat_extracted_call <- function() {
    usupp <- structure(c(1, 3, 5, 3, 2, 4, 3, 3), .Dim = c(4L, 2L))
    supp <- structure(c(1, 3, 5, 3, 3, 2, 4, 3, 3, 3), .Dim = c(5L, 2L))
    distrEx:::.rowNr(x = supp, y = usupp)
}




