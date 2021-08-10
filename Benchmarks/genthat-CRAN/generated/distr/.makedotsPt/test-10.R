library(distr)

function_to_run <- function() {
    dots <- alist(lwd = 3, col = "red", lty = 3, las = 2)
    distr:::.makedotsPt(dots = dots)
}




