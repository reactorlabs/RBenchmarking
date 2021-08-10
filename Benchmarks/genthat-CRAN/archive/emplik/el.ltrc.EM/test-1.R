library(emplik)

function_to_run <- function() {
    ypsy <- c(51, 58, 55, 28, 25, 48, 47, 25, 31, 30, 33, 43, 45, 35, 36)
    xpsy <- c(52, 59, 57, 50, 57, 59, 61, 61, 62, 67, 68, 69, 69, 65, 76)
    dpsy <- c(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1)
    emplik:::el.ltrc.EM(y = ypsy, x = xpsy, d = dpsy, mu = 64)
}




