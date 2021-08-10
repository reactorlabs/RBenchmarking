library(checkmate)

function_to_run <- function() {
    x <- 1:3
    checkmate:::testNames(x = x, type = "unnamed")
}




