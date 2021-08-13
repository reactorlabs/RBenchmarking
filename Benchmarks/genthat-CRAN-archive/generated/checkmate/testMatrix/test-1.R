

genthat_extracted_call <- function() {
    x <- structure(1:9, .Dim = c(3L, 3L), .Dimnames = list(NULL, c("a", "b", "c")))
    checkmate:::testMatrix(x = x, min.cols = 1, nrows = 3, col.names = "named")
}




