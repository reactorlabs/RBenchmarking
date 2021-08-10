library(boot)

function_to_run <- function() {
    x <- 1:10
    boot:::sample0(x = x, length(x))
}




