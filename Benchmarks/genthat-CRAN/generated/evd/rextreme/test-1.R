library(evd)

function_to_run <- function() {
    qgamma <- stats::qgamma
    evd:::rextreme(n = 5, quantfun = qgamma, shape = 1, mlen = 10)
}




