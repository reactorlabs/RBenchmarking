library(fda)

function_to_run <- function() {
    period <- 1
    nderiv <- 1
    nbasis <- 5
    evalarg <- 0.5
    fda:::fourier(x = evalarg, nbasis = nbasis, period = period, nderiv = nderiv)
}




