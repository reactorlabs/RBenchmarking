

genthat_extracted_call <- function() {
    qgamma <- stats::qgamma
    evd:::rextreme(n = 5, quantfun = qgamma, shape = 1, mlen = 10)
}




