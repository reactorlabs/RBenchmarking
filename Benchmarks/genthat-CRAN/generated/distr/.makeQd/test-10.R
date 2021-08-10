library(distr)

function_to_run <- function() {
    yy <- c(0, 1, 2, 3)
    yR <- 3
    yL <- 0
    xx <- c(0.1, 0.45, 0.85, 1)
    distr:::.makeQd(x = xx, y = yy, yleft = yL, yright = yR)
}




