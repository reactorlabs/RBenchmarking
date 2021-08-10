library(checkmate)

function_to_run <- function() {
    x <- structure(1, class = "bar")
    checkmate:::checkMultiClass(x = x, classes = c("foo", "foobar"))
}




