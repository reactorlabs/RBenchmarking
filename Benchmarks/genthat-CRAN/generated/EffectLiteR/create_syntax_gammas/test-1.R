library(EffectLiteR)

function_to_run <- function() {
    nz <- 1L
    nk <- 2L
    ng <- 3L
    gammas <- structure(c("g000", "g001", "g010", "g011", "g100", "g101", "g110", "g111", "g200", "g201", "g210", "g211"), 
        .Dim = c(2L, 2L, 3L))
    betas <- structure(c("b000", "b001", "b010", "b011", "b100", "b101", "b110", "b111", "b200", "b201", "b210", "b211"), 
        .Dim = c(2L, 2L, 3L))
    EffectLiteR:::create_syntax_gammas(gammas = gammas, betas = betas, ng = ng, nk = nk, nz = nz)
}




