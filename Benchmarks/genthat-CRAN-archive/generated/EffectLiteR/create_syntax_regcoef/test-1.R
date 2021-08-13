library(EffectLiteR)

function_to_run <- function() {
    z <- "z1"
    y <- "dv"
    nz <- 1L
    alphas <- structure(c("a000", "a001", "a010", "a011", "a100", "a101", "a110", "a111", "a200", "a201", "a210", "a211"), 
        .Dim = c(2L, 2L, 3L))
    EffectLiteR:::create_syntax_regcoef(y = y, z = z, nz = nz, alphas = alphas)
}




