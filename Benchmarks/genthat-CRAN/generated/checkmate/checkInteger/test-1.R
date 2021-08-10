library(checkmate)

function_to_run <- function() {
    x <- 1:10
    checkmate:::checkInteger(x = x, any.missing = FALSE)
}




