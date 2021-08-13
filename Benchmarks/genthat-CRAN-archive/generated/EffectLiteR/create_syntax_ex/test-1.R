

genthat_extracted_call <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    px <- c("Px0", "Px1", "Px2")
    nk <- 2L
    ng <- 3L
    EffectLiteR:::create_syntax_ex(px = px, ng = ng, nk = nk, relfreq = relfreq)
}




