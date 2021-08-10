library(binda)

function_to_run <- function() {
    L <- structure(c(2L, 2L, 1L, 1L), .Label = c("Control", "Treatment"), class = "factor")
    binda:::getClassSamples(L = L)
}




