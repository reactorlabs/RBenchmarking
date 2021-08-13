

genthat_extracted_call <- function() {
    x <- 1:10
    checkNull <- checkmate::checkNull
    checkInteger <- checkmate::checkInteger
    checkmate:::assert(checkNull(x), checkInteger(x, any.missing = FALSE))
}




