library(EffectLiteR)

function_to_run <- function() {
    z <- "z1"
    sampmeanz <- structure(c(-0.103292179374063, 0.04538812198229, 0.046935924709704, -0.0740161773551341, 0.0473785227999266, 
        0.0513137667436014), .Dim = c(1L, 6L), .Dimnames = list("z1", c("00", "01", "10", "11", "20", "21")))
    nz <- 1L
    fixed.z <- TRUE
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_cellmeanz(z = z, nz = nz, fixed.z = fixed.z, cellmeanz = cellmeanz, sampmeanz = sampmeanz)
}




