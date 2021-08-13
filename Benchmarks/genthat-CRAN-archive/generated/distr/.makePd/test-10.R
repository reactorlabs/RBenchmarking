library(distr)

function_to_run <- function() {
    x.u <- 0
    p.u <- 0
    nm <- 1
    distr:::.makePd(x = x.u, y = p.u, yleft = nm, yright = 0)
}




