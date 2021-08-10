library(EffectLiteR)

function_to_run <- function() {
    y <- "dv"
    nk <- 2L
    ng <- 3L
    homoscedasticity <- FALSE
    EffectLiteR:::create_syntax_homoscedasticity(y = y, ng = ng, nk = nk, homoscedasticity = homoscedasticity)
}




