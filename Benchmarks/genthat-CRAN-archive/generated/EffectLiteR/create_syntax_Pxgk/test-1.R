

genthat_extracted_call <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    Pxgk <- c("Px0gk0", "Px1gk0", "Px2gk0", "Px0gk1", "Px1gk1", "Px2gk1")
    pk <- c("Pk0", "Pk1")
    nk <- 2L
    ng <- 3L
    EffectLiteR:::create_syntax_Pxgk(ng = ng, nk = nk, relfreq = relfreq, Pxgk = Pxgk, pk = pk)
}




