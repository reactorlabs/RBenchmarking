

genthat_extracted_call <- function() {
    test1 <- structure(c(0.5, 0.8, 0.5, 0.1, 0.2, 0.05, 0.1, 0.1, 0.2, 0.05, 0.2, 0.1, 0.1, 0.1, 0.2, 0.7), .Dim = c(4L, 
        4L))
    initial <- c(0.25, 0.25, 0.25, 0.25)
    DySeq:::simSeq(trans = test1, initial = initial, length = 30)
}




