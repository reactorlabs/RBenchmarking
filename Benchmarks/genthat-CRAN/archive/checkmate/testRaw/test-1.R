library(checkmate)

function_to_run <- function() {
    checkmate:::testRaw(x = as.raw(2), min.len = 1L)
}




