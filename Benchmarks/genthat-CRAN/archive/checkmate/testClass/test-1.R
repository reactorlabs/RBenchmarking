library(checkmate)

function_to_run <- function() {
    x <- structure(1, class = c("foo", "bar"))
    checkmate:::testClass(x = x, classes = "bar", ordered = TRUE)
}




