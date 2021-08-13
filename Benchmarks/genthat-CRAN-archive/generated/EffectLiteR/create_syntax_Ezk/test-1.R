

genthat_extracted_call <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    nz <- 1L
    nk <- 2L
    ng <- 3L
    Ezk <- c("Ez1k0", "Ez1k1")
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_Ezk(ng = ng, nk = nk, nz = nz, Ezk = Ezk, cellmeanz = cellmeanz, relfreq = relfreq)
}




