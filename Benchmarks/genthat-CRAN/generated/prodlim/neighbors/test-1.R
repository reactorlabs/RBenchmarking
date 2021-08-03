library(prodlim)

function_to_run <- function() {
    y <- c(1, 10, 100, 1000, 1001, 1001, 1001, 1002, 1002, 1002)
    x <- 1:10
    prodlim:::neighbors(x = x, y = y)
}




