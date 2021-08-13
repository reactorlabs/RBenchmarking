

genthat_extracted_call <- function() {
    nz <- 1L
    nk <- 2L
    ng <- 3L
    betas <- structure(c("b000", "b001", "b010", "b011", "b100", "b101", "b110", "b111", "b200", "b201", "b210", "b211"), 
        .Dim = c(2L, 2L, 3L))
    alphas <- structure(c("a000", "a001", "a010", "a011", "a100", "a101", "a110", "a111", "a200", "a201", "a210", "a211"), 
        .Dim = c(2L, 2L, 3L))
    EffectLiteR:::create_syntax_betas(betas = betas, alphas = alphas, ng = ng, nk = nk, nz = nz)
}




