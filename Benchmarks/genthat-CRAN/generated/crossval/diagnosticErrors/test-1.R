library(crossval)

function_to_run <- function() {
    cm <- structure(c(1L, 2L, 3L, 1L), names = c("FP", "TP", "TN", "FN"), negative = "control")
    crossval:::diagnosticErrors(cm = cm)
}




