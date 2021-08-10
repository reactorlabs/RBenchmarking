library(CVST)

function_to_run <- function() {
    doppler <- CVST::doppler
    CVST:::noisyDonoho(n = 1000, fun = doppler)
}




