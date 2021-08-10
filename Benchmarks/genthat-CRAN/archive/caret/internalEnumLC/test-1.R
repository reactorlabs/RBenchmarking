library(caret)

function_to_run <- function() {
    object <- structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0), .Dim = c(6L, 4L))
    caret:::internalEnumLC(qrObj = qr(object))
}




