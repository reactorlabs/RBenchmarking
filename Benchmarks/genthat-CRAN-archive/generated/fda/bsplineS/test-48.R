library(fda)

function_to_run <- function() {
    fda:::bsplineS(x = seq(0, 1, 0.2), breaks = 0:1, norder = 1, nderiv = 0)
}




