

genthat_extracted_call <- function() {
    Pkgx <- c("Pk0gx0", "Pk1gx0", "Pk0gx1", "Pk1gx1", "Pk0gx2", "Pk1gx2")
    nz <- 1L
    nk <- 2L
    ng <- 3L
    Ezkgx <- c("Ez1k0gx0", "Ez1k1gx0", "Ez1k0gx1", "Ez1k1gx1", "Ez1k0gx2", "Ez1k1gx2")
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_Ezkgx(ng = ng, nk = nk, nz = nz, Ezkgx = Ezkgx, cellmeanz = cellmeanz, Pkgx = Pkgx)
}




