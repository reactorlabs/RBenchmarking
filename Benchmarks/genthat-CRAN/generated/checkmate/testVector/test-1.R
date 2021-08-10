library(checkmate)

function_to_run <- function() {
    checkmate:::testVector(x = letters, any.missing = FALSE, min.len = 1L)
}




