

genthat_extracted_call <- function() {
    x <- structure(1, class = "bar")
    checkmate:::checkMultiClass(x = x, classes = c("foo", "foobar"))
}




