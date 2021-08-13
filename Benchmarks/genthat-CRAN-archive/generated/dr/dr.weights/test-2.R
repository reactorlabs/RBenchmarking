

genthat_extracted_call <- function() {
    ais <- dr::ais
    dr:::dr.weights(formula = LBM ~ Ht + Wt + RCC + WCC, data = ais)
}




