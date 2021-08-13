library(distrEx)

function_to_run <- function() {
    upperTruncQuantile <- 1e-07
    upp <- Inf
    object <- .ext.1
    lowerTruncQuantile <- 1e-07
    low <- -Inf
    IQR.fac <- 15
    distrEx:::.getIntbounds(object = object, low = low, upp = upp, lowTQ = lowerTruncQuantile, uppTQ = upperTruncQuantile, 
        IQR.fac = IQR.fac)
}




