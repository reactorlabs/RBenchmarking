library(checkmate)

function_to_run <- function() {
    x <- structure(1L, .Label = c("a", "b"), class = "factor")
    checkmate:::testFactor(x = x)
}




