library(EffectLiteR)

function_to_run <- function() {
    nz <- 1L
    nk <- 2L
    ng <- 3L
    gammas <- structure(c("g000", "g001", "g010", "g011", "g100", "g101", "g110", "g111", "g200", "g201", "g210", "g211"), 
        .Dim = c(2L, 2L, 3L))
    Egxgxk <- c("Eg1gx0k0", "Eg2gx0k0", "Eg1gx1k0", "Eg2gx1k0", "Eg1gx2k0", "Eg2gx2k0", "Eg1gx0k1", "Eg2gx0k1", "Eg1gx1k1", 
        "Eg2gx1k1", "Eg1gx2k1", "Eg2gx2k1")
    cellmeanz <- c("mz001", "mz011", "mz101", "mz111", "mz201", "mz211")
    EffectLiteR:::create_syntax_Egxgxk(ng = ng, nk = nk, nz = nz, Egxgxk = Egxgxk, gammas = gammas, cellmeanz = cellmeanz)
}




