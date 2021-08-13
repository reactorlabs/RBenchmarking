

genthat_extracted_call <- function() {
    UnivarMixingDistribution <- distr::UnivarMixingDistribution
    Unif <- distr::Unif
    distr:::flat.mix(object = UnivarMixingDistribution(Unif(0, 1), Unif(4, 5), withSimplify = FALSE))
}




