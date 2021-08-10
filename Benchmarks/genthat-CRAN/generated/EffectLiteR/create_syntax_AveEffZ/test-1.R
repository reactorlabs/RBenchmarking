library(EffectLiteR)

function_to_run <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    nz <- 1L
    AveEffZ <- "AveEffZ1"
    alphas <- structure(c("a000", "a001", "a010", "a011", "a100", "a101", "a110", "a111", "a200", "a201", "a210", "a211"), 
        .Dim = c(2L, 2L, 3L))
    EffectLiteR:::create_syntax_AveEffZ(nz = nz, alphas = alphas, relfreq = relfreq, AveEffZ = AveEffZ)
}




