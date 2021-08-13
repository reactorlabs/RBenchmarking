library(fBasics)

function_to_run <- function() {
    psght <- fBasics::psght
    fBasics:::qsght(p = psght(seq(-5, 5, 1), beta = 0.1, delta = 1, mu = 0, nu = 10), beta = 0.1, delta = 1, mu = 0, nu = 10)
}




