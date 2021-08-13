library(dr)

function_to_run <- function() {
    ais <- dr::ais
    dr:::dr.weights(formula = LBM ~ Ht + Wt + RCC + WCC, data = ais)
}




