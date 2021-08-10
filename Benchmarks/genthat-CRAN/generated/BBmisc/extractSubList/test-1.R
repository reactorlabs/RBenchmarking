library(BBmisc)

function_to_run <- function() {
    xs <- list(list(a = 1, b = 2), list(a = 5, b = 7))
    BBmisc:::extractSubList(xs = xs, element = "a", simplify = FALSE)
}




