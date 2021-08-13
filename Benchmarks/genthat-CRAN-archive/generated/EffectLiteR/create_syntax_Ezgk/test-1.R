

genthat_extracted_call <- function() {
    Pxgk <- c("Px0gk0", "Px1gk0", "Px2gk0", "Px0gk1", "Px1gk1", "Px2gk1")
    nz <- 1L
    nk <- 2L
    ng <- 3L
    Ezgk <- c("Ez1gk0", "Ez1gk1")
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_Ezgk(ng = ng, nk = nk, nz = nz, cellmeanz = cellmeanz, Ezgk = Ezgk, Pxgk = Pxgk)
}




