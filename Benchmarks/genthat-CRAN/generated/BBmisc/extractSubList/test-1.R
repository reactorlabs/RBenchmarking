

genthat_extracted_call <- function() {
    xs <- list(list(a = 1, b = 2), list(a = 5, b = 7))
    BBmisc:::extractSubList(xs = xs, element = "a", simplify = FALSE)
}




