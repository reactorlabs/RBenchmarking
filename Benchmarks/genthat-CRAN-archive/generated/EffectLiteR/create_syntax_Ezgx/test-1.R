

genthat_extracted_call <- function() {
    Pkgx <- c("Pk0gx0", "Pk1gx0", "Pk0gx1", "Pk1gx1", "Pk0gx2", "Pk1gx2")
    nz <- 1L
    nk <- 2L
    ng <- 3L
    Ezgx <- c("Ez1gx0", "Ez1gx1", "Ez1gx2")
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_Ezgx(ng = ng, nk = nk, nz = nz, Ezgx = Ezgx, Pkgx = Pkgx, cellmeanz = cellmeanz)
}




