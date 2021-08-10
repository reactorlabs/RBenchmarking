library(fdrtool)

function_to_run <- function() {
    y <- c(1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0)
    fdrtool:::monoreg(x = -y, type = "a")
}




