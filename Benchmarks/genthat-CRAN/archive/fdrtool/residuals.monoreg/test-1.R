library(fdrtool)

function_to_run <- function() {
    age <- c(14, 14, 8, 8, 8, 10, 10, 10, 12, 12, 12)
    monoreg <- fdrtool::monoreg
    size <- c(23.5, 25, 21, 23.5, 23, 24, 21, 25, 21.5, 22, 19)
    mr <- structure(list(x = c(8, 10, 12, 14), y = c(22.5, 23.3333333333333, 20.8333333333333, 24.25), w = c(3, 3, 3, 2), 
        yf = c(22.2222222222222, 22.2222222222222, 22.2222222222222, 24.25), type = "isotonic", call = monoreg(x = age, y = size)), 
        class = "monoreg")
    fdrtool:::residuals.monoreg(object = mr)
}




