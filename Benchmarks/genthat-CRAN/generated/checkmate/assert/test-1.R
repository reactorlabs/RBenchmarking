library(checkmate)

function_to_run <- function() {
    x <- 1:10
    checkNull <- checkmate::checkNull
    checkInteger <- checkmate::checkInteger
    checkmate:::assert(checkNull(x), checkInteger(x, any.missing = FALSE))
}




