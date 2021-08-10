library(distr)

function_to_run <- function() {
    upper <- 10.1885218236247
    lower <- -10.1885218236247
    h <- 0.00497486417169173
    e1 <- .ext.1
    distr:::.discretizeP(D = e1, lower = lower, upper = upper, h = h)
}




