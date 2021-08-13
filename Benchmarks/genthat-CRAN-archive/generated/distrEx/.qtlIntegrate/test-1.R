

genthat_extracted_call <- function() {
    fun <- genthat::with_env(function(x) {
        2 * x^2
    }, env = list2env(list(), parent = baseenv()))
    upperTruncQuantile <- 1e-07
    upp <- NULL
    rel.tol <- 0.0001220703125
    object <- .ext.1
    lowerTruncQuantile <- 1e-07
    low <- NULL
    IQR.fac <- 10000
    diagnostic <- FALSE
    distrEx:::.qtlIntegrate(object = object, fun = fun, low = low, upp = upp, rel.tol = rel.tol, lowerTruncQuantile = lowerTruncQuantile, 
        upperTruncQuantile = upperTruncQuantile, IQR.fac = IQR.fac, .withLeftTail = TRUE, .withRightTail = TRUE, diagnostic = diagnostic)
}




