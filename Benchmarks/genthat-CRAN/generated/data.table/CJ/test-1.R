library(data.table)

function_to_run <- function() {
    y <- c(4, 6, 4)
    x <- c(1, 1, 2)
    data.table:::CJ(x, y, unique = TRUE)
}




