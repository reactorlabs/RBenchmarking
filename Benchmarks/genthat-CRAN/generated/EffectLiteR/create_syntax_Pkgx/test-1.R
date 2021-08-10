library(EffectLiteR)

function_to_run <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    px <- c("Px0", "Px1", "Px2")
    Pkgx <- c("Pk0gx0", "Pk1gx0", "Pk0gx1", "Pk1gx1", "Pk0gx2", "Pk1gx2")
    nk <- 2L
    ng <- 3L
    EffectLiteR:::create_syntax_Pkgx(ng = ng, nk = nk, relfreq = relfreq, Pkgx = Pkgx, px = px)
}




