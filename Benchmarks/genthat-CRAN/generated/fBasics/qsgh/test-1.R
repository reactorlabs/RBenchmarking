library(fBasics)

function_to_run <- function() {
    psgh <- fBasics::psgh
    fBasics:::qsgh(p = psgh(seq(-5, 5, 1), zeta = 1, rho = 0.5), zeta = 1, rho = 0.5)
}




