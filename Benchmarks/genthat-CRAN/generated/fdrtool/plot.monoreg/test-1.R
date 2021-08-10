library(fdrtool)

function_to_run <- function() {
    y <- c(1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0)
    x <- 1:12
    runif <- stats::runif
    monoreg <- fdrtool::monoreg
    fdrtool:::plot.monoreg(x = monoreg(x + runif(1, -1000, 1000), y + runif(1, -1000, 1000)))
}




