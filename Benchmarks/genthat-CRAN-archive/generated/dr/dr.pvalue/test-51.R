

genthat_extracted_call <- function() {
    wts <- c(0.8127936357402, 0.0847662314254328)
    st <- 31.4037896354494
    chi2approx <- "wood"
    dr:::dr.pvalue(coef = wts[wts > 0], f = st, chi2approx = chi2approx)
}




