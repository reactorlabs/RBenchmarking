library(fBasics)

function_to_run <- function() {
    pnig <- fBasics::pnig
    fBasics:::qnig(p = pnig(seq(-5, 5, 1), alpha = 1, beta = 0.3, delta = 1), alpha = 1, beta = 0.3, delta = 1)
}




