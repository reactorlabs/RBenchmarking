library(entropy)

function_to_run <- function() {
    y2 <- c(2, 3, 7, 1, 4, 3)
    y1 <- c(4, 2, 3, 1, 10, 4)
    entropy:::chi2.shrink(y1 = y1, y2 = y2)
}




