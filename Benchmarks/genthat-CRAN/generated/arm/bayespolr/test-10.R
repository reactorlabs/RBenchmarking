

genthat_extracted_call <- function() {
    housing <- MASS::housing
    arm:::bayespolr(formula = Sat ~ Infl + Type + Cont, data = housing, weights = Freq, prior.scale = Inf, prior.df = Inf)
}




