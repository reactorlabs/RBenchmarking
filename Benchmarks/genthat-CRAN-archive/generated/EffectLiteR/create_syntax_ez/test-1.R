

genthat_extracted_call <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    nz <- 1L
    meanz <- "Ez1"
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_ez(nz = nz, meanz = meanz, cellmeanz = cellmeanz, relfreq = relfreq)
}




