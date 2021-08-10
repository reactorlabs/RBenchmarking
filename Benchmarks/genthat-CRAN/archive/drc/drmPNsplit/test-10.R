library(drc)

function_to_run <- function() {
    parmVec2 <- c("c:(Intercept)", "d:(Intercept)", "e:(Intercept)")
    drc:::drmPNsplit(parmVec = parmVec2, sep = ":")
}




