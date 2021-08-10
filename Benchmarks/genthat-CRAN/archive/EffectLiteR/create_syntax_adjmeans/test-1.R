library(EffectLiteR)

function_to_run <- function() {
    pk <- c("Pk0", "Pk1")
    nz <- 1L
    nk <- 2L
    ng <- 3L
    meanz <- "Ez1"
    gammas <- structure(c("g000", "g001", "g010", "g011", "g100", "g101", "g110", "g111", "g200", "g201", "g210", "g211"), 
        .Dim = c(2L, 2L, 3L))
    Ezk <- c("Ez1k0", "Ez1k1")
    adjmeans <- c("adjmean0", "adjmean1", "adjmean2")
    EffectLiteR:::create_syntax_adjmeans(ng = ng, nk = nk, nz = nz, pk = pk, meanz = meanz, Ezk = Ezk, adjmeans = adjmeans, 
        gammas = gammas)
}




