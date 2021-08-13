library(EffectLiteR)

function_to_run <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    pk <- c("Pk0", "Pk1")
    nk <- 2L
    EffectLiteR:::create_syntax_pk(nk = nk, pk = pk, relfreq = relfreq)
}




