library(checkmate)

function_to_run <- function() {
    checkmate:::testAtomic(x = letters, any.missing = FALSE, min.len = 1L)
}




