library(EffectLiteR)

function_to_run <- function() {
    z <- "z1"
    nz <- 1L
    fixed.z <- TRUE
    EffectLiteR:::create_syntax_covz(z = z, nz = nz, fixed.z = fixed.z)
}




